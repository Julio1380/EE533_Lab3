VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL XLXN_3
        SIGNAL clk
        SIGNAL XLXN_5
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL fifowrite
        SIGNAL XLXN_12
        SIGNAL drop_pkt
        SIGNAL valid_data
        SIGNAL out_fifo(71:0)
        SIGNAL XLXN_16(7:0)
        SIGNAL wadd(7:0)
        SIGNAL XLXN_18(71:0)
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24(0:0)
        SIGNAL XLXN_25
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_27(71:0)
        SIGNAL rst
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL fiforead
        SIGNAL XLXN_39
        SIGNAL XLXN_40(7:0)
        SIGNAL XLXN_41(7:0)
        SIGNAL XLXN_42(7:0)
        SIGNAL radd(7:0)
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        PORT Input firstword
        PORT Input lastword
        PORT Input clk
        PORT Input fifowrite
        PORT Input drop_pkt
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        PORT Input in_fifo(71:0)
        PORT Input rst
        PORT Input fiforead
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2026 1 31 9 59 20
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
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
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fifomem
            TIMESTAMP 2026 2 1 0 30 47
            RECTANGLE N 32 32 544 576 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 0 336 32 336 
            END LINE
            LINE N 0 528 32 528 
            BEGIN LINE W 576 336 544 336 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_24(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C clk
            PIN CE XLXN_47
            PIN CLR rst
            PIN D(7:0) wadd(7:0)
            PIN Q(7:0) XLXN_41(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN B(7:0) radd(7:0)
            PIN A(7:0) wadd(7:0)
            PIN EQ XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN B(7:0) XLXN_41(7:0)
            PIN A(7:0) radd(7:0)
            PIN EQ XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_12 and2b1
            PIN I0 XLXN_46
            PIN I1 XLXN_12
            PIN O XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_13 or2
            PIN I0 XLXN_10
            PIN I1 XLXN_9
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_14 and3b2
            PIN I0 XLXN_37
            PIN I1 XLXN_36
            PIN I2 fiforead
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_15 fifomem
            PIN addra(7:0) wadd(7:0)
            PIN dina(71:0) XLXN_18(71:0)
            PIN wea(0:0) XLXN_24(0:0)
            PIN clka clk
            PIN addrb(7:0) radd(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 reg9B
            PIN d(71:0) in_fifo(71:0)
            PIN clr rst
            PIN clk clk
            PIN ce XLXN_25
            PIN q(71:0) XLXN_18(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_44
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8cle
            PIN C clk
            PIN CE XLXN_24(0:0)
            PIN CLR rst
            PIN D(7:0) XLXN_41(7:0)
            PIN L XLXN_46
            PIN CEO
            PIN Q(7:0) wadd(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_20 vcc
            PIN P XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_21 cb8ce
            PIN C clk
            PIN CE XLXN_44
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) radd(7:0)
            PIN TC
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        INSTANCE XLXI_1 912 736 R0
        INSTANCE XLXI_2 896 1136 R0
        INSTANCE XLXI_3 880 3008 R0
        INSTANCE XLXI_4 1936 832 R0
        INSTANCE XLXI_6 912 1648 R0
        BEGIN INSTANCE XLXI_7 2064 1952 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2048 2448 R0
        END INSTANCE
        INSTANCE XLXI_12 2128 992 R0
        BEGIN INSTANCE XLXI_9 3504 640 R0
        END INSTANCE
        INSTANCE XLXI_5 3488 2640 R0
        INSTANCE XLXI_10 3408 1296 R0
        BEGIN BRANCH firstword
            WIRE 400 480 560 480
            WIRE 560 480 912 480
        END BRANCH
        IOMARKER 400 480 firstword R180 28
        BEGIN BRANCH lastword
            WIRE 416 896 576 896
            WIRE 576 880 896 880
            WIRE 576 880 576 896
        END BRANCH
        IOMARKER 416 896 lastword R180 28
        BEGIN BRANCH clk
            WIRE 592 2880 752 2880
            WIRE 752 2880 816 2880
            WIRE 816 2880 880 2880
            WIRE 816 608 912 608
            WIRE 816 608 816 704
            WIRE 816 704 816 704
            WIRE 816 704 816 1008
            WIRE 816 1008 896 1008
            WIRE 816 1008 816 1136
            WIRE 816 1136 816 1520
            WIRE 816 1520 816 2880
            WIRE 816 1520 832 1520
            WIRE 832 1520 912 1520
            WIRE 816 1136 3296 1136
            WIRE 3296 1136 3296 1168
            WIRE 3296 1168 3408 1168
            WIRE 3296 1168 3296 1376
            WIRE 3296 1376 3296 1856
            WIRE 3296 1856 3440 1856
            WIRE 3296 1856 3296 2512
            WIRE 3296 2512 3488 2512
            WIRE 3296 1376 4128 1376
            WIRE 4128 1376 4192 1376
            WIRE 4128 1376 4128 1632
            WIRE 4128 1632 4192 1632
            WIRE 816 704 1936 704
            WIRE 3296 544 3504 544
            WIRE 3296 544 3296 1136
        END BRANCH
        IOMARKER 592 2880 clk R180 28
        INSTANCE XLXI_13 1424 880 R0
        BEGIN BRANCH XLXN_9
            WIRE 1296 480 1360 480
            WIRE 1360 480 1360 752
            WIRE 1360 752 1424 752
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1280 880 1344 880
            WIRE 1344 816 1344 880
            WIRE 1344 816 1424 816
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1584 576 1744 576
            WIRE 1744 576 1936 576
        END BRANCH
        IOMARKER 1584 576 fifowrite R180 28
        BEGIN BRANCH XLXN_12
            WIRE 1680 784 1904 784
            WIRE 1904 784 1904 864
            WIRE 1904 864 2128 864
        END BRANCH
        BEGIN BRANCH drop_pkt
            WIRE 592 2752 752 2752
            WIRE 752 2752 880 2752
        END BRANCH
        IOMARKER 592 2752 drop_pkt R180 28
        BEGIN BRANCH valid_data
            WIRE 3872 2384 3888 2384
            WIRE 3888 2384 4768 2384
            WIRE 4768 2384 4768 2608
            WIRE 4768 2608 4928 2608
        END BRANCH
        IOMARKER 4928 2608 valid_data R0 28
        BEGIN BRANCH out_fifo(71:0)
            WIRE 4768 1440 4944 1440
            WIRE 4944 1440 5104 1440
        END BRANCH
        IOMARKER 5104 1440 out_fifo(71:0) R0 28
        BEGIN INSTANCE XLXI_15 4192 1104 R0
        END INSTANCE
        BEGIN BRANCH wadd(7:0)
            WIRE 864 1392 912 1392
            WIRE 864 1392 864 1632
            WIRE 864 1632 1808 1632
            WIRE 1808 1632 2064 1632
            WIRE 1808 1296 1808 1632
            WIRE 1808 1296 3920 1296
            WIRE 3792 912 3872 912
            WIRE 3872 912 3920 912
            WIRE 3920 912 3984 912
            WIRE 3984 912 3984 1184
            WIRE 3984 1184 4192 1184
            WIRE 3920 912 3920 1296
            BEGIN DISPLAY 3872 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_18(71:0)
            WIRE 3888 416 4032 416
            WIRE 4032 416 4032 1216
            WIRE 4032 1216 4192 1216
        END BRANCH
        BEGIN BRANCH XLXN_24(0:0)
            WIRE 2320 576 2864 576
            WIRE 2864 576 2864 1104
            WIRE 2864 1104 3344 1104
            WIRE 3344 1104 3408 1104
            WIRE 3344 1104 3344 1312
            WIRE 3344 1312 3344 1328
            WIRE 3344 1312 4192 1312
        END BRANCH
        INSTANCE XLXI_20 3168 208 R0
        BEGIN BRANCH XLXN_25
            WIRE 3232 208 3232 608
            WIRE 3232 608 3504 608
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2880 400 3040 400
            WIRE 3040 400 3040 416
            WIRE 3040 416 3504 416
        END BRANCH
        IOMARKER 2880 400 in_fifo(71:0) R180 28
        BEGIN BRANCH rst
            WIRE 848 1280 848 1616
            WIRE 848 1616 912 1616
            WIRE 848 1280 3024 1280
            WIRE 2896 1344 3008 1344
            WIRE 3008 1344 3056 1344
            WIRE 3056 1344 3200 1344
            WIRE 3200 1344 3408 1344
            WIRE 3200 1344 3200 1952
            WIRE 3200 1952 3440 1952
            WIRE 3200 1952 3200 2608
            WIRE 3200 2608 3488 2608
            WIRE 3008 1216 3024 1216
            WIRE 3024 1216 3024 1280
            WIRE 3008 1216 3008 1344
            WIRE 3200 480 3504 480
            WIRE 3200 480 3200 1344
            WIRE 3408 1264 3408 1344
        END BRANCH
        IOMARKER 2896 1344 rst R180 28
        INSTANCE XLXI_14 2624 2096 R0
        BEGIN BRANCH XLXN_36
            WIRE 2448 1728 2528 1728
            WIRE 2528 1728 2528 1968
            WIRE 2528 1968 2624 1968
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 2432 2224 2528 2224
            WIRE 2528 2032 2528 2224
            WIRE 2528 2032 2624 2032
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 2224 1424 2384 1424
            WIRE 2384 1424 2624 1424
            WIRE 2624 1424 2624 1904
        END BRANCH
        IOMARKER 2224 1424 fiforead R180 28
        BEGIN BRANCH XLXN_41(7:0)
            WIRE 1296 1392 1888 1392
            WIRE 1888 1392 2400 1392
            WIRE 1888 1392 1888 2320
            WIRE 1888 2320 2048 2320
            WIRE 2400 912 2400 1392
            WIRE 2400 912 3408 912
        END BRANCH
        BEGIN BRANCH radd(7:0)
            WIRE 1952 1968 2032 1968
            WIRE 2032 1968 2032 2128
            WIRE 2032 2128 2048 2128
            WIRE 1952 1968 1952 2688
            WIRE 1952 2688 4000 2688
            WIRE 2032 1824 2064 1824
            WIRE 2032 1824 2032 1968
            WIRE 3824 1600 3840 1600
            WIRE 3840 1600 3840 1728
            WIRE 3840 1600 3936 1600
            WIRE 3936 1600 4000 1600
            WIRE 4000 1600 4000 2688
            WIRE 3824 1728 3840 1728
            WIRE 4000 1440 4000 1600
            WIRE 4000 1440 4192 1440
            BEGIN DISPLAY 3936 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_21 3440 1984 R0
        BEGIN BRANCH XLXN_44
            WIRE 2880 1968 3152 1968
            WIRE 3152 1968 3152 2384
            WIRE 3152 2384 3488 2384
            WIRE 3152 1792 3152 1968
            WIRE 3152 1792 3440 1792
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 1264 2752 3120 2752
            WIRE 2080 928 2128 928
            WIRE 2080 928 2080 1040
            WIRE 2080 1040 3120 1040
            WIRE 3120 1040 3408 1040
            WIRE 3120 1040 3120 2752
        END BRANCH
        BEGIN BRANCH XLXN_47
            WIRE 896 1264 896 1456
            WIRE 896 1456 912 1456
            WIRE 896 1264 2480 1264
            WIRE 2384 896 2480 896
            WIRE 2480 896 2480 1264
        END BRANCH
    END SHEET
END SCHEMATIC
