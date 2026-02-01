VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL match
        SIGNAL hwregA(63:0)
        SIGNAL pipe1(71:0)
        SIGNAL clk
        SIGNAL ce
        SIGNAL pipe0(71:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_43(111:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL match_en
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        SIGNAL XLXN_53
        SIGNAL XLXN_54
        SIGNAL XLXN_55
        SIGNAL mrst
        SIGNAL XLXN_58
        SIGNAL XLXN_59
        PORT Output match
        PORT Input hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Input clk
        PORT Input ce
        PORT Input match_en
        PORT Input mrst
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 31 11 33 5
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 31 11 29 27
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 31 11 37 42
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_12 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_49
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_13 fdce
            PIN C clk
            PIN CE XLXN_52
            PIN CLR XLXN_55
            PIN D XLXN_52
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_14 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_15 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_43(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 reg9B
            PIN d(71:0) pipe1(71:0)
            PIN clr XLXN_55
            PIN clk clk
            PIN ce ce
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 wordmatch
            PIN datain(111:0) XLXN_43(111:0)
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_49
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        IOMARKER 2880 640 match R0 28
        BEGIN BRANCH hwregA(63:0)
            WIRE 288 128 448 128
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 288 368 448 368
            WIRE 448 368 608 368
        END BRANCH
        IOMARKER 288 128 hwregA(63:0) R180 28
        IOMARKER 288 368 pipe1(71:0) R180 28
        BEGIN INSTANCE XLXI_16 608 592 R0
        END INSTANCE
        INSTANCE XLXI_13 2176 928 R0
        BEGIN BRANCH clk
            WIRE 208 496 368 496
            WIRE 368 496 464 496
            WIRE 464 496 608 496
            WIRE 464 496 464 704
            WIRE 464 704 464 800
            WIRE 464 800 2176 800
            WIRE 464 800 464 1408
            WIRE 464 1408 2016 1408
        END BRANCH
        IOMARKER 208 496 clk R180 28
        BEGIN BRANCH ce
            WIRE 208 560 368 560
            WIRE 368 560 608 560
        END BRANCH
        IOMARKER 208 560 ce R180 28
        BEGIN BRANCH pipe0(71:0)
            WIRE 992 368 1040 368
            WIRE 1040 368 1248 368
            BEGIN DISPLAY 1040 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_15 608 1360 R0
        END INSTANCE
        BEGIN BRANCH pipe0(47:0)
            WIRE 208 1264 288 1264
            WIRE 288 1264 608 1264
            BEGIN DISPLAY 288 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 224 1328 384 1328
            WIRE 384 1328 608 1328
            BEGIN DISPLAY 384 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 2016 1536 R0
        INSTANCE XLXI_12 1728 1056 R0
        BEGIN INSTANCE XLXI_17 1072 1120 R0
        END INSTANCE
        BEGIN BRANCH XLXN_43(111:0)
            WIRE 992 1264 1024 1264
            WIRE 1024 960 1024 1264
            WIRE 1024 960 1072 960
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 832 1024 912 1024
            WIRE 912 1024 1072 1024
            BEGIN DISPLAY 912 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 832 1088 880 1088
            WIRE 880 1088 1072 1088
            BEGIN DISPLAY 880 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1408 1200 1568 1200
            WIRE 1568 928 1728 928
            WIRE 1568 928 1568 1200
        END BRANCH
        IOMARKER 1408 1200 match_en R180 28
        BEGIN BRANCH XLXN_49
            WIRE 1456 960 1552 960
            WIRE 1552 864 1552 960
            WIRE 1552 864 1728 864
        END BRANCH
        BEGIN BRANCH match
            WIRE 1712 432 1728 432
            WIRE 1728 432 2704 432
            WIRE 1712 432 1712 992
            WIRE 1712 992 1728 992
            WIRE 2560 672 2736 672
            WIRE 2704 416 2704 432
            WIRE 2704 416 2720 416
            WIRE 2720 416 2720 640
            WIRE 2720 640 2736 640
            WIRE 2736 640 2880 640
            WIRE 2736 640 2736 672
        END BRANCH
        BEGIN BRANCH XLXN_52
            WIRE 1984 656 2000 656
            WIRE 2000 656 2000 736
            WIRE 2000 736 2000 928
            WIRE 2000 736 2176 736
            WIRE 1984 656 1984 672
            WIRE 1984 672 2176 672
            WIRE 1984 928 2000 928
        END BRANCH
        BEGIN BRANCH XLXN_55
            WIRE 512 432 608 432
            WIRE 512 432 512 720
            WIRE 512 720 512 1136
            WIRE 512 1136 2176 1136
            WIRE 2176 896 2176 1024
            WIRE 2176 1024 2176 1136
            WIRE 2176 1024 2464 1024
            WIRE 2464 1024 2464 1280
            WIRE 2400 1280 2464 1280
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1792 1280 1952 1280
            WIRE 1952 1280 2016 1280
        END BRANCH
        IOMARKER 1792 1280 mrst R180 28
    END SHEET
END SCHEMATIC
