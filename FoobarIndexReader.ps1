


param($indexFile)

$indexBytes=Get-Content $indexFile -Encoding Byte


$indexMeta=@{
    "MagicSignature"=$([System.BitConverter]::ToString($indexBytes,0,16) -replace '-','')
    "PlaylistCount"=([System.BitConverter]::ToInt32($indexBytes,16))
    "LibraryViewerEnabled"=([System.BitConverter]::ToBoolean($indexBytes,20))
    "Playlists"=New-Object -TypeName System.Collections.ArrayList
}

# skip over the header bytes
$offset=24
for($i=0; $i -lt $indexMeta.PlaylistCount ; $i++)
{
    $namelength=([System.BitConverter]::ToInt32($indexBytes,$offset))
    $metadatalength=([System.BitConverter]::ToInt32($indexBytes,($offset+$namelength+8)))
    $playlistHash=@{
        "NameLength"=$namelength
        "Name"=[System.Text.Encoding]::ASCII.GetString($indexBytes[($offset+4)..($offset+3+$namelength)])
        "SelectedTrack"=([System.BitConverter]::ToInt32($indexBytes,($offset+$namelength+4)))
        "MetadataLength"=$metadatalength
        "ForcedSort"=([System.BitConverter]::ToBoolean($indexBytes,($offset+$namelength+96)))
        "FileCount"=([System.BitConverter]::ToInt32($indexBytes,($offset+$namelength+$metadatalength+12)))
        "FileName"="$([System.BitConverter]::ToString($indexBytes,($offset+$namelength+$metadatalength+16),16) -replace '-','').fpl"
    }
    [void]$indexMeta.Playlists.Add($playlistHash)

    # total of 32 bytes of static length data per playlist
    $offset=$offset+$namelength+$metadatalength+32
}

$indexMeta
