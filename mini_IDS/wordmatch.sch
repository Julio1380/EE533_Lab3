VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datain(111:0)
        SIGNAL datacomp(55:0)
        SIGNAL match
        SIGNAL wildcard(6:0)
        SIGNAL XLXN_12(55:0)
        SIGNAL XLXN_13
        SIGNAL XLXN_14(55:0)
        SIGNAL XLXN_16(6:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(95:40)
        SIGNAL datain(87:32)
        SIGNAL datain(111:56)
        SIGNAL datain(103:48)
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        PORT Input datain(111:0)
        PORT Input datacomp(55:0)
        PORT Output match
        PORT Input wildcard(6:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 31 10 29 29
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(55:0)
            PIN match XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(63:8)
            PIN match XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(71:16)
            PIN match XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(79:24)
            PIN match XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(87:32)
            PIN match XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(95:40)
            PIN match XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(103:48)
            PIN match XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(111:56)
            PIN match XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_26 or8
            PIN I0 XLXN_26
            PIN I1 XLXN_27
            PIN I2 XLXN_28
            PIN I3 XLXN_29
            PIN I4 XLXN_30
            PIN I5 XLXN_31
            PIN I6 XLXN_32
            PIN I7 XLXN_33
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH datain(111:0)
            WIRE 400 192 560 192
        END BRANCH
        IOMARKER 400 192 datain(111:0) R180 28
        BEGIN BRANCH datacomp(55:0)
            WIRE 416 400 576 400
            WIRE 576 400 576 416
            WIRE 576 416 672 416
            WIRE 672 416 848 416
            WIRE 672 416 672 688
            WIRE 672 688 672 944
            WIRE 672 944 672 960
            WIRE 672 960 672 1264
            WIRE 672 1264 672 1552
            WIRE 672 1552 672 1824
            WIRE 672 1824 832 1824
            WIRE 672 1824 672 2080
            WIRE 672 2080 672 2336
            WIRE 672 2336 672 2624
            WIRE 672 2624 720 2624
            WIRE 672 2336 832 2336
            WIRE 672 2080 832 2080
            WIRE 672 1552 832 1552
            WIRE 672 1264 832 1264
            WIRE 672 960 832 960
            WIRE 672 688 832 688
            WIRE 720 2608 816 2608
            WIRE 720 2608 720 2624
        END BRANCH
        IOMARKER 416 400 datacomp(55:0) R180 28
        BEGIN BRANCH match
            WIRE 2672 1504 3072 1504
            WIRE 3072 1504 3232 1504
        END BRANCH
        IOMARKER 3232 1504 match R0 28
        BEGIN BRANCH wildcard(6:0)
            WIRE 400 624 560 624
            WIRE 560 624 560 752
            WIRE 560 752 560 1008
            WIRE 560 1008 560 1024
            WIRE 560 1024 560 1328
            WIRE 560 1328 560 1616
            WIRE 560 1616 560 1888
            WIRE 560 1888 560 2144
            WIRE 560 2144 560 2144
            WIRE 560 2144 560 2384
            WIRE 560 2384 560 2400
            WIRE 560 2400 560 2672
            WIRE 560 2672 816 2672
            WIRE 560 2400 832 2400
            WIRE 560 2144 832 2144
            WIRE 560 1888 832 1888
            WIRE 560 1616 832 1616
            WIRE 560 1328 832 1328
            WIRE 560 1024 832 1024
            WIRE 560 752 832 752
            WIRE 560 480 848 480
            WIRE 560 480 560 624
        END BRANCH
        IOMARKER 400 624 wildcard(6:0) R180 28
        BEGIN INSTANCE XLXI_1 848 576 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 832 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 832 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 832 1424 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 832 1712 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 832 1984 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 832 2240 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 832 2496 R0
        END INSTANCE
        INSTANCE XLXI_26 2416 1792 R0
        BEGIN BRANCH datain(55:0)
            WIRE 720 544 752 544
            WIRE 752 544 848 544
            BEGIN DISPLAY 752 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 704 800 704 816
            WIRE 704 816 768 816
            WIRE 768 816 832 816
            BEGIN DISPLAY 768 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 720 1088 784 1088
            WIRE 784 1088 832 1088
            BEGIN DISPLAY 784 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 736 1392 832 1392
            WIRE 736 1392 736 1456
            BEGIN DISPLAY 736 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 736 1952 736 2016
            WIRE 736 1952 752 1952
            WIRE 752 1952 832 1952
            BEGIN DISPLAY 752 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 736 1680 736 1744
            WIRE 736 1680 768 1680
            WIRE 768 1680 832 1680
            BEGIN DISPLAY 768 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 720 2464 720 2544
            WIRE 720 2464 768 2464
            WIRE 768 2464 832 2464
            BEGIN DISPLAY 768 2464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 736 2208 736 2272
            WIRE 736 2208 752 2208
            WIRE 752 2208 832 2208
            BEGIN DISPLAY 736 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1216 2336 2416 2336
            WIRE 2416 1728 2416 2336
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1216 2080 1808 2080
            WIRE 1808 1664 1808 2080
            WIRE 1808 1664 2416 1664
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1216 1824 1792 1824
            WIRE 1792 1600 1792 1824
            WIRE 1792 1600 2416 1600
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1216 1552 1808 1552
            WIRE 1808 1536 1808 1552
            WIRE 1808 1536 2416 1536
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1216 1264 1808 1264
            WIRE 1808 1264 1808 1472
            WIRE 1808 1472 2416 1472
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1216 960 1824 960
            WIRE 1824 960 1824 1408
            WIRE 1824 1408 2416 1408
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1216 688 1840 688
            WIRE 1840 688 1840 1344
            WIRE 1840 1344 2416 1344
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1232 416 2416 416
            WIRE 2416 416 2416 1280
        END BRANCH
    END SHEET
END SCHEMATIC
