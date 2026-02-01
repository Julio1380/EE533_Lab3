VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL valid_data
        SIGNAL out_fifo(71:0)
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL drop_pkt
        SIGNAL clk
        SIGNAL rst
        SIGNAL fifowrite
        SIGNAL in_fifo(71:0)
        SIGNAL fiforead
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        PORT Input firstword
        PORT Input lastword
        PORT Input drop_pkt
        PORT Input clk
        PORT Input rst
        PORT Input fifowrite
        PORT Input in_fifo(71:0)
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
        BEGIN BLOCK XLXI_1 fd
            PIN C
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_5 fdc
            PIN C
            PIN CLR
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C
            PIN CE
            PIN CLR
            PIN D(7:0)
            PIN Q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN B(7:0)
            PIN A(7:0)
            PIN EQ
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN B(7:0)
            PIN A(7:0)
            PIN EQ
        END BLOCK
        BEGIN BLOCK XLXI_9 reg9B
            PIN d(71:0)
            PIN clr
            PIN clk
            PIN ce
            PIN q(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8cle
            PIN C
            PIN CE
            PIN CLR
            PIN D(7:0)
            PIN L
            PIN CEO
            PIN Q(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_11 cb8cle
            PIN C
            PIN CE
            PIN CLR
            PIN D(7:0)
            PIN L
            PIN CEO
            PIN Q(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_12 and2b1
            PIN I0
            PIN I1
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_13 or2
            PIN I0
            PIN I1
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_14 and3b2
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH valid_data
            WIRE 4752 576 4912 576
        END BRANCH
        BEGIN BRANCH out_fifo(71:0)
            WIRE 4752 1056 4912 1056
        END BRANCH
        IOMARKER 4912 576 valid_data R0 28
        IOMARKER 4912 1056 out_fifo(71:0) R0 28
        BEGIN BRANCH firstword
            WIRE 352 1136 512 1136
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 352 1312 512 1312
        END BRANCH
        BEGIN BRANCH drop_pkt
            WIRE 352 1488 512 1488
        END BRANCH
        BEGIN BRANCH clk
            WIRE 352 1664 512 1664
        END BRANCH
        BEGIN BRANCH rst
            WIRE 352 1840 512 1840
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 352 2016 512 2016
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 352 2192 512 2192
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 352 2368 512 2368
        END BRANCH
        IOMARKER 352 1136 firstword R180 28
        IOMARKER 352 1312 lastword R180 28
        IOMARKER 352 1488 drop_pkt R180 28
        IOMARKER 352 1664 clk R180 28
        IOMARKER 352 1840 rst R180 28
        IOMARKER 352 2016 fifowrite R180 28
        IOMARKER 352 2192 in_fifo(71:0) R180 28
        IOMARKER 352 2368 fiforead R180 28
        INSTANCE XLXI_1 912 736 R0
        INSTANCE XLXI_2 896 1136 R0
        INSTANCE XLXI_3 880 3008 R0
        INSTANCE XLXI_4 1936 832 R0
        INSTANCE XLXI_6 912 1648 R0
        BEGIN INSTANCE XLXI_7 2064 1952 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2048 2448 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 3680 656 R0
        END INSTANCE
        INSTANCE XLXI_5 3664 2656 R0
        INSTANCE XLXI_11 3616 2000 R0
        INSTANCE XLXI_10 3584 1312 R0
        INSTANCE XLXI_12 2128 992 R0
        INSTANCE XLXI_13 1648 1056 R0
        INSTANCE XLXI_14 2864 2032 R0
    END SHEET
END SCHEMATIC
