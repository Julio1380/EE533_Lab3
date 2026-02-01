VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL match
        SIGNAL a(55:0)
        SIGNAL amask(6:0)
        SIGNAL b(55:0)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL amask(3)
        SIGNAL amask(4)
        SIGNAL XLXN_23
        SIGNAL amask(5)
        SIGNAL XLXN_25
        SIGNAL amask(6)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL XLXN_35
        SIGNAL amask(2)
        SIGNAL b(23:16)
        SIGNAL a(23:16)
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        PORT Output match
        PORT Input a(55:0)
        PORT Input amask(6:0)
        PORT Input b(55:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2026 1 31 9 59 20
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN B(7:0) b(55:48)
            PIN A(7:0) a(55:48)
            PIN EQ XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN B(7:0) b(47:40)
            PIN A(7:0) a(47:40)
            PIN EQ XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN B(7:0) b(39:32)
            PIN A(7:0) a(39:32)
            PIN EQ XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN B(7:0) b(31:24)
            PIN A(7:0) a(31:24)
            PIN EQ XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN B(7:0) b(23:16)
            PIN A(7:0) a(23:16)
            PIN EQ XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN B(7:0) b(15:8)
            PIN A(7:0) a(15:8)
            PIN EQ XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN B(7:0) b(7:0)
            PIN A(7:0) a(7:0)
            PIN EQ XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_25
            PIN O XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_9 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_23
            PIN O XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_20
            PIN O XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_19
            PIN O XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_35
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_32
            PIN O XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_31
            PIN O XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_15 and7
            PIN I0 XLXN_39
            PIN I1 XLXN_40
            PIN I2 XLXN_42
            PIN I3 XLXN_41
            PIN I4 XLXN_43
            PIN I5 XLXN_44
            PIN I6 XLXN_45
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH match
            WIRE 4832 1664 4960 1664
            WIRE 4960 1664 5120 1664
        END BRANCH
        IOMARKER 5120 1664 match R0 28
        BEGIN BRANCH a(55:0)
            WIRE 304 208 464 208
        END BRANCH
        IOMARKER 304 208 a(55:0) R180 28
        BEGIN BRANCH amask(6:0)
            WIRE 960 208 1120 208
        END BRANCH
        IOMARKER 960 208 amask(6:0) R180 28
        BEGIN BRANCH b(55:0)
            WIRE 1488 224 1648 224
        END BRANCH
        IOMARKER 1488 224 b(55:0) R180 28
        BEGIN INSTANCE XLXI_1 1024 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1024 1536 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1040 2240 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1056 3040 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 2816 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 2848 1856 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2816 2448 R0
        END INSTANCE
        INSTANCE XLXI_8 1760 752 R0
        INSTANCE XLXI_9 1712 1472 R0
        INSTANCE XLXI_10 1776 2160 R0
        INSTANCE XLXI_11 1728 2944 R0
        INSTANCE XLXI_12 3360 1008 R0
        INSTANCE XLXI_13 3424 1760 R0
        INSTANCE XLXI_14 3424 2368 R0
        INSTANCE XLXI_15 4576 1920 R0
        BEGIN BRANCH a(55:48)
            WIRE 832 528 848 528
            WIRE 848 528 1024 528
            BEGIN DISPLAY 848 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 832 720 864 720
            WIRE 864 720 1024 720
            BEGIN DISPLAY 864 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 832 1216 896 1216
            WIRE 896 1216 1024 1216
            BEGIN DISPLAY 896 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 832 1408 960 1408
            WIRE 960 1408 1024 1408
            BEGIN DISPLAY 960 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 848 1920 912 1920
            WIRE 912 1920 1040 1920
            BEGIN DISPLAY 912 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 864 2112 864 2128
            WIRE 864 2112 928 2112
            WIRE 928 2112 1040 2112
            BEGIN DISPLAY 928 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 848 2720 944 2720
            WIRE 944 2720 1056 2720
            BEGIN DISPLAY 944 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 864 2912 912 2912
            WIRE 912 2912 1056 2912
            BEGIN DISPLAY 912 2912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1440 2816 1728 2816
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1424 2016 1600 2016
            WIRE 1600 2016 1600 2032
            WIRE 1600 2032 1776 2032
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1536 2880 1648 2880
            WIRE 1648 2880 1728 2880
            BEGIN DISPLAY 1648 2880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1632 2096 1632 2144
            WIRE 1632 2096 1664 2096
            WIRE 1664 2096 1776 2096
            BEGIN DISPLAY 1664 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1408 1312 1552 1312
            WIRE 1552 1312 1552 1344
            WIRE 1552 1344 1712 1344
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1472 1408 1472 1520
            WIRE 1472 1408 1488 1408
            WIRE 1488 1408 1712 1408
            BEGIN DISPLAY 1488 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1408 624 1760 624
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 1520 688 1760 688
            WIRE 1520 688 1520 832
            WIRE 1520 832 1520 864
            BEGIN DISPLAY 1520 832 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 2640 1536 2720 1536
            WIRE 2720 1536 2848 1536
            BEGIN DISPLAY 2720 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 2672 1728 2736 1728
            WIRE 2736 1728 2848 1728
            BEGIN DISPLAY 2736 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 2624 2128 2752 2128
            WIRE 2752 2128 2816 2128
            BEGIN DISPLAY 2752 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 2624 2320 2688 2320
            WIRE 2688 2320 2816 2320
            BEGIN DISPLAY 2688 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 3200 2224 3312 2224
            WIRE 3312 2224 3312 2240
            WIRE 3312 2240 3424 2240
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 3232 1632 3424 1632
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 3264 1696 3264 1760
            WIRE 3264 1696 3312 1696
            WIRE 3312 1696 3424 1696
            BEGIN DISPLAY 3312 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 3248 2304 3248 2336
            WIRE 3248 2304 3328 2304
            WIRE 3328 2304 3424 2304
            BEGIN DISPLAY 3328 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 3200 896 3280 896
            WIRE 3280 880 3280 896
            WIRE 3280 880 3360 880
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 3216 944 3216 1056
            WIRE 3216 944 3232 944
            WIRE 3232 944 3360 944
            BEGIN DISPLAY 3232 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 2624 992 2688 992
            WIRE 2688 992 2816 992
            BEGIN DISPLAY 2688 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 2608 800 2688 800
            WIRE 2688 800 2816 800
            BEGIN DISPLAY 2688 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 1984 2848 4576 2848
            WIRE 4576 1856 4576 2848
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 3680 2272 4128 2272
            WIRE 4128 1792 4128 2272
            WIRE 4128 1792 4576 1792
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 3680 1664 4576 1664
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 2032 2064 2112 2064
            WIRE 2112 1984 2112 2064
            WIRE 2112 1984 3296 1984
            WIRE 3296 1728 3296 1984
            WIRE 3296 1728 4576 1728
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 1968 1376 3264 1376
            WIRE 3264 1376 3264 1600
            WIRE 3264 1600 4576 1600
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 3616 912 4096 912
            WIRE 4096 912 4096 1536
            WIRE 4096 1536 4576 1536
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 2016 656 4576 656
            WIRE 4576 656 4576 1472
        END BRANCH
    END SHEET
END SCHEMATIC
