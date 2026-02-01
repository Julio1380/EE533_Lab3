VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        SIGNAL EQ
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL B(7)
        SIGNAL B(6)
        SIGNAL B(5)
        SIGNAL B(4)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        PORT Input B(7:0)
        PORT Input A(7:0)
        PORT Output EQ
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
        END BLOCKDEF
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xnor2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_2 xnor2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_3 xnor2
            PIN I0 B(2)
            PIN I1 A(2)
            PIN O XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_4 xnor2
            PIN I0 B(3)
            PIN I1 A(3)
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_5 xnor2
            PIN I0 B(4)
            PIN I1 A(4)
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_6 xnor2
            PIN I0 B(5)
            PIN I1 A(5)
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_7 xnor2
            PIN I0 B(6)
            PIN I1 A(6)
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_8 xnor2
            PIN I0 B(7)
            PIN I1 A(7)
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_9 and4
            PIN I0 XLXN_32
            PIN I1 XLXN_31
            PIN I2 XLXN_30
            PIN I3 XLXN_29
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_10 and4
            PIN I0 XLXN_28
            PIN I1 XLXN_25
            PIN I2 XLXN_26
            PIN I3 XLXN_27
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 XLXN_33
            PIN I1 XLXN_34
            PIN O EQ
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH B(7:0)
            WIRE 656 2288 816 2288
            WIRE 816 2288 1088 2288
            WIRE 1088 304 1088 432
            WIRE 1088 432 1088 640
            WIRE 1088 640 1088 816
            WIRE 1088 816 1088 1040
            WIRE 1088 1040 1088 1296
            WIRE 1088 1296 1088 1504
            WIRE 1088 1504 1088 1728
            WIRE 1088 1728 1088 1952
            WIRE 1088 1952 1088 2288
        END BRANCH
        IOMARKER 656 2288 B(7:0) R180 28
        BEGIN BRANCH A(7:0)
            WIRE 672 2096 832 2096
            WIRE 832 304 832 368
            WIRE 832 368 832 576
            WIRE 832 576 832 752
            WIRE 832 752 832 976
            WIRE 832 976 832 1232
            WIRE 832 1232 832 1440
            WIRE 832 1440 832 1664
            WIRE 832 1664 832 1872
            WIRE 832 1872 832 1888
            WIRE 832 1888 832 2096
        END BRANCH
        IOMARKER 672 2096 A(7:0) R180 28
        INSTANCE XLXI_1 1360 496 R0
        INSTANCE XLXI_2 1360 704 R0
        INSTANCE XLXI_3 1344 880 R0
        INSTANCE XLXI_4 1360 1104 R0
        INSTANCE XLXI_5 1360 1360 R0
        INSTANCE XLXI_6 1344 1568 R0
        INSTANCE XLXI_7 1360 1792 R0
        INSTANCE XLXI_8 1344 2016 R0
        INSTANCE XLXI_9 1952 864 R0
        INSTANCE XLXI_10 1968 1744 R0
        INSTANCE XLXI_11 2432 1168 R0
        BEGIN BRANCH EQ
            WIRE 2688 1072 2864 1072
            WIRE 2864 1072 3024 1072
        END BRANCH
        IOMARKER 3024 1072 EQ R0 28
        BUSTAP 832 1888 928 1888
        BEGIN BRANCH A(7)
            WIRE 928 1888 1136 1888
            WIRE 1136 1888 1344 1888
            BEGIN DISPLAY 1136 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 1664 928 1664
        BEGIN BRANCH A(6)
            WIRE 928 1664 1136 1664
            WIRE 1136 1664 1360 1664
            BEGIN DISPLAY 1144 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 1440 928 1440
        BEGIN BRANCH A(5)
            WIRE 928 1440 1136 1440
            WIRE 1136 1440 1344 1440
            BEGIN DISPLAY 1136 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 1232 928 1232
        BEGIN BRANCH A(4)
            WIRE 928 1232 1136 1232
            WIRE 1136 1232 1360 1232
            BEGIN DISPLAY 1144 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 976 928 976
        BEGIN BRANCH A(3)
            WIRE 928 976 1136 976
            WIRE 1136 976 1360 976
            BEGIN DISPLAY 1144 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 752 928 752
        BEGIN BRANCH A(2)
            WIRE 928 752 1136 752
            WIRE 1136 752 1344 752
            BEGIN DISPLAY 1136 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 576 928 576
        BEGIN BRANCH A(1)
            WIRE 928 576 1136 576
            WIRE 1136 576 1360 576
            BEGIN DISPLAY 1144 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 368 928 368
        BEGIN BRANCH A(0)
            WIRE 928 368 1136 368
            WIRE 1136 368 1360 368
            BEGIN DISPLAY 1144 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1952 1184 1952
        BEGIN BRANCH B(7)
            WIRE 1184 1952 1264 1952
            WIRE 1264 1952 1344 1952
            BEGIN DISPLAY 1264 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1728 1184 1728
        BEGIN BRANCH B(6)
            WIRE 1184 1728 1264 1728
            WIRE 1264 1728 1360 1728
            BEGIN DISPLAY 1272 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1504 1184 1504
        BEGIN BRANCH B(5)
            WIRE 1184 1504 1264 1504
            WIRE 1264 1504 1344 1504
            BEGIN DISPLAY 1264 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1296 1184 1296
        BEGIN BRANCH B(4)
            WIRE 1184 1296 1264 1296
            WIRE 1264 1296 1360 1296
            BEGIN DISPLAY 1272 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1040 1184 1040
        BEGIN BRANCH B(3)
            WIRE 1184 1040 1264 1040
            WIRE 1264 1040 1360 1040
            BEGIN DISPLAY 1272 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 816 1184 816
        BEGIN BRANCH B(2)
            WIRE 1184 816 1264 816
            WIRE 1264 816 1344 816
            BEGIN DISPLAY 1264 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 640 1184 640
        BEGIN BRANCH B(1)
            WIRE 1184 640 1264 640
            WIRE 1264 640 1360 640
            BEGIN DISPLAY 1272 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 432 1184 432
        BEGIN BRANCH B(0)
            WIRE 1184 432 1264 432
            WIRE 1264 432 1360 432
            BEGIN DISPLAY 1272 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1616 1696 1792 1696
            WIRE 1792 1616 1792 1696
            WIRE 1792 1616 1968 1616
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1600 1472 1776 1472
            WIRE 1776 1472 1776 1552
            WIRE 1776 1552 1968 1552
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1616 1264 1968 1264
            WIRE 1968 1264 1968 1488
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1600 1920 1968 1920
            WIRE 1968 1680 1968 1920
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1616 400 1952 400
            WIRE 1952 400 1952 608
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1616 608 1776 608
            WIRE 1776 608 1776 672
            WIRE 1776 672 1952 672
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1600 784 1776 784
            WIRE 1776 736 1776 784
            WIRE 1776 736 1952 736
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1616 1008 1952 1008
            WIRE 1952 800 1952 1008
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 2224 1584 2320 1584
            WIRE 2320 1104 2320 1584
            WIRE 2320 1104 2432 1104
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 2208 704 2320 704
            WIRE 2320 704 2320 1040
            WIRE 2320 1040 2432 1040
        END BRANCH
    END SHEET
END SCHEMATIC
