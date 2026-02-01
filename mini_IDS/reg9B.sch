VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL clr
        SIGNAL clk
        SIGNAL ce
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL d(15:0)
        SIGNAL d(31:16)
        SIGNAL d(47:32)
        SIGNAL d(63:48)
        SIGNAL q(15:0)
        SIGNAL q(31:16)
        SIGNAL q(47:32)
        SIGNAL d(71:64)
        SIGNAL q(71:64)
        SIGNAL q(63:48)
        PORT Input d(71:0)
        PORT Output q(71:0)
        PORT Input clr
        PORT Input clk
        PORT Input ce
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_11 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH d(71:0)
            WIRE 720 2560 880 2560
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 2800 2560 2960 2560
        END BRANCH
        IOMARKER 720 2560 d(71:0) R180 28
        IOMARKER 2960 2560 q(71:0) R0 28
        BEGIN BRANCH clr
            WIRE 672 2240 832 2240
            WIRE 832 2240 1344 2240
            WIRE 1344 2240 1472 2240
            WIRE 1344 352 1344 464
            WIRE 1344 464 1488 464
            WIRE 1344 464 1344 848
            WIRE 1344 848 1472 848
            WIRE 1344 848 1344 1232
            WIRE 1344 1232 1488 1232
            WIRE 1344 1232 1344 1632
            WIRE 1344 1632 1344 2240
            WIRE 1344 1632 1488 1632
            WIRE 1472 2016 1472 2240
        END BRANCH
        IOMARKER 672 2240 clr R180 28
        BEGIN BRANCH clk
            WIRE 688 2064 848 2064
            WIRE 848 1920 848 2064
            WIRE 848 1920 1392 1920
            WIRE 1392 1920 1472 1920
            WIRE 1392 288 1392 368
            WIRE 1392 368 1488 368
            WIRE 1392 368 1392 752
            WIRE 1392 752 1472 752
            WIRE 1392 752 1392 1136
            WIRE 1392 1136 1488 1136
            WIRE 1392 1136 1392 1536
            WIRE 1392 1536 1392 1920
            WIRE 1392 1536 1488 1536
        END BRANCH
        IOMARKER 688 2064 clk R180 28
        BEGIN BRANCH ce
            WIRE 688 1904 848 1904
            WIRE 848 1856 848 1904
            WIRE 848 1856 1424 1856
            WIRE 1424 1856 1472 1856
            WIRE 1424 288 1424 304
            WIRE 1424 304 1488 304
            WIRE 1424 304 1424 688
            WIRE 1424 688 1472 688
            WIRE 1424 688 1424 1072
            WIRE 1424 1072 1488 1072
            WIRE 1424 1072 1424 1472
            WIRE 1424 1472 1424 1856
            WIRE 1424 1472 1488 1472
        END BRANCH
        IOMARKER 688 1904 ce R180 28
        INSTANCE XLXI_2 1472 880 R0
        INSTANCE XLXI_5 1472 2048 R0
        INSTANCE XLXI_3 1488 1264 R0
        INSTANCE XLXI_4 1488 1664 R0
        BEGIN BRANCH d(15:0)
            WIRE 1232 1792 1264 1792
            WIRE 1264 1792 1280 1792
            WIRE 1280 1792 1472 1792
            BEGIN DISPLAY 1280 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1248 1408 1280 1408
            WIRE 1280 1408 1488 1408
            BEGIN DISPLAY 1280 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1232 1008 1296 1008
            WIRE 1296 1008 1488 1008
            BEGIN DISPLAY 1296 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1216 624 1264 624
            WIRE 1264 624 1472 624
            BEGIN DISPLAY 1264 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1856 1792 1968 1792
            WIRE 1968 1792 1984 1792
            WIRE 1984 1792 2080 1792
            BEGIN DISPLAY 1968 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1872 1408 1936 1408
            WIRE 1936 1408 2128 1408
            BEGIN DISPLAY 1936 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1872 1008 1984 1008
            WIRE 1984 1008 2096 1008
            BEGIN DISPLAY 1984 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(71:64)
            WIRE 1152 224 1152 240
            WIRE 1152 240 1232 240
            WIRE 1232 240 1488 240
            BEGIN DISPLAY 1232 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1872 240 1936 240
            WIRE 1936 240 2144 240
            BEGIN DISPLAY 1936 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1856 624 1968 624
            WIRE 1968 624 2128 624
            BEGIN DISPLAY 1968 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_11 1488 496 R0
    END SHEET
END SCHEMATIC
