# FoobarIndexParser
Script to figure out what each of the bytes in the foobar index.dat file are for.

Here's the structure as I understand it so far:

    Header
        MagicSignature  35 47 5E 2A 60 1B 4B 4B 82 57 5C 8E 61 26 FD F6 
        PlaylistCount   06 00 00 00 
        LVEnabled       01 00 00 00

    Playlist 1
        Name Length     07 00 00 00 
        Name            44 65 66 61 75 6C 74 
        SelectedTrack   39 06 00 00 
        
        Metadata Length 58 00 00 00 
                        03 00 00 00 
                        32 51 65 52 57 8F 56 4C 9A EE 17 52 5C 67 9A 5D 
                        10 00 00 00 
                        F4 44 92 24 95 1E 1A 46 90 A0 CC E8 93 8B E2 C0 
                        43 61 37 F4 79 4D E7 47 90 2E 10 A6 7B B5 57 0F 
                        04 00 00 00 
                        30 71 00 00 
                        72 03 AA E3 5E 85 22 44 9A 5A 60 0B 13 38 5B B1 
                        04 00 00 00 
        ForcedSort      00 00 00 00
        
        FileCount       01 00 00 00
        Filename        84 92 40 79 07 D4 D6 6A AB 2A A1 6D FD AF 60 3F

    Playlist 2
        Name Length     0C 00 00 00 
        Name            43 6C 61 73 73 69 63 20 52 6F 63 6B 
        SelectedTrack   DE 01 00 00 
        Segment Length  6D 00 00 00 
        Next Length     04 00 00 00 
                        32 51 65 52 
                        57 8F 56 4C 9A EE 17 52 5C 67 9A 5D 
        Next Length     10 00 00 00 
                        
                        EB 4B 6B 7E E0 C6 61 40 BE 7F 2D 84 29 5F DE 8A 
                        43 61 37 F4 79 4D E7 47 90 2E 10 A6 7B B5 57 0F 
                        04 00 00 00 
                        84 23 00 00
                        
                        72 03 AA E3 5E 85 22 44 9A 5A 60 0B 13 38 5B B1 
                        04 00 00 00
                        00 00 00 00 
                        EE BC 6F 0C EC 8E 87 4F 8F E4 25 C2 3D 90 21 36
                        01 00 00 00 
                        01 
        FileCount       01 00 00 00
        Filename        AA 59 31 90 6D DE 84 31 51 3D CB 1B 8E 40 22 21 
 
    Playlist 3
        Name Length     03 00 00 00 
        Name            45 44 4D 
        553             29 02 00 00 
        Segment Length  6D 00 00 00 
                        04 00 00 00 
                        32 51 65 52 57 8F 56 4C 9A EE 17 52 5C 67 9A 5D 
                        10 00 00 00 
                        
                        59 96 D6 9B 96 DA 09 4B 97 2E 4C 74 FF 3F 39 69 
                        43 61 37 F4 79 4D E7 47 90 2E 10 A6 7B B5 57 0F 
                        04 00 00 00 
                        AA 2A 00 00 
                        
                        72 03 AA E3 5E 85 22 44 9A 5A 60 0B 13 38 5B B1
                        04 00 00 00 
                        00 00 00 00 
                        EE BC 6F 0C EC 8E 87 4F 8F E4 25 C2 3D 90 21 36
                        01 00 00 00
                        01 
        FileCount       01 00 00 00
        FileName        AE 55 9E 64 64 5F 4A 32 D1 06 CB 9A 5E 2E 22 25
    Library Viewer Selection
        
        Name Length     18 00 00 00 
        Name            4C 69 62 72 61 72 79 20 56 69 65 77 65 72 20 53 65 6C 65 63 74 69 6F 6E 
        Current Track   74 07 00 00 
        
        Segment Length  6C 00 00 00 
                        04 00 00 00 
                        32 51 65 52 
                        57 8F 56 4C 9A EE 17 52 5C 67 9A 5D 
                        10 00 00 00 
                        
                        FF C3 84 68 04 2C 8A 4D 94 3F 24 64 1A CA 16 0C 
                        
                        43 61 37 F4 79 4D E7 47 90 2E 10 A6 7B B5 57 0F 
                        04 00 00 00
                        CA A6 00 00 
                        
                        72 03 AA E3 5E 85 22 44 9A 5A 60 0B 13 38 5B B1 
                        04 00 00 00 
        ForcedSort      00 00 00 00 
                        
                        96 50 60 28 3C 3C 3E 49 BE 99 82 9C 6B 0D B2 F8 
                        00 00 00 00
        
        FileCount       01 00 00 00
        File Name       6C 23 73 D6 85 D1 9F 6E BD 8F DA FD 4F 85 9B C2


    Dynamic Playlist 1
        
        Name Length     0F 00 00 00 
        Name            4C 61 73 74 20 46 6F 75 72 20 57 65 65 6B 73 
        Current Track   00 00 00 00 
        
        Segment Length  A9 00 00 00 
                        04 00 00 00 
                        32 51 65 52
                        57 8F 56 4C 9A EE 17 52 5C 67 9A 5D 
                        10 00 00 00 
                        AC EB 9F 75 13 8F D5 4E 92 DA EF C6 61 AF D8 D4 
                        43 61 37 F4 79 4D E7 47 90 2E 10 A6 7B B5 57 0F 
                        04 00 00 00 
                        00 00 00 00
                        55 65 F1 82 CB 7A 8C 43 9C 4B 55 E1 D8 4D 15 64 
                        3D 00 00 00 
        ForcedSort      00 00 00 00 
                        
                        F4 53 B6 51 D7 A2 10 48 99 BD 06 72 47 12 17 5A 
        
        Query Length    21 00 00 00 
        Query           25 6C 61 73 74 5F 70 6C 61 79 65 64 25 20 44 55 52 49 4E 47 20 4C 41 53 54 20 34 20 57 45 45 4B 53
                        00 00 00 00 
                        
                        72 03 AA E3 5E 85 22 44 9A 5A 60 0B 13 38 5B B1 
                        04 00 00 00 
                        00 00 00 00
        
        FileCount       01 00 00 00 
        FileName        62 A6 D9 1E 38 89 97 04 0A 0E D8 73 0C AF B6 E7 
        
