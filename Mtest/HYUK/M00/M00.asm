*************************************************
* FILENAME : M00.asm
* AUTHOR : HYUK KIM
* SYSTEM : OFASM v4 revision 258 
*************************************************
                MACRO
                MACRO_M     &REGNUM,&VALUE1,&VALUE2
                LG          &REGNUM,EVENREG_INIT
                LG          &REGNUM+1,&VALUE1
                OFADBGREG   &REGNUM
                OFADBGREG   &REGNUM+1
                OFADBGMEM   &VALUE2,0
                M           &REGNUM,&VALUE2
                OFADBGREG   &REGNUM
                OFADBGREG   &REGNUM+1
                OFADBGMEM   &VALUE2,0
                MEND
M00             CSECT
                LR          12,15
                USING       M00,12
* TESTCASE_1	invalid Rn	ERROR
*                MACRO_M     DATA1_1_REGNUM,DATA1_1,DATA1_2
* TESTCASE_37	even Rn	binary	0	32bits	0	32bits
                MACRO_M     DATA2_1_REGNUM,DATA2_1,DATA2_2
* TESTCASE_38	even Rn	binary	0	32bits	0	otherwise
                MACRO_M     DATA3_1_REGNUM,DATA3_1,DATA3_2
* TESTCASE_39	even Rn	binary	0	32bits	0<	32bits
                MACRO_M     DATA4_1_REGNUM,DATA4_1,DATA4_2
* TESTCASE_40	even Rn	binary	0	32bits	0<	otherwise
                MACRO_M     DATA5_1_REGNUM,DATA5_1,DATA5_2
* TESTCASE_41	even Rn	binary	0	32bits	0>	32bits
                MACRO_M     DATA6_1_REGNUM,DATA6_1,DATA6_2
* TESTCASE_42	even Rn	binary	0	32bits	0>	otherwise
                MACRO_M     DATA7_1_REGNUM,DATA7_1,DATA7_2
* TESTCASE_43	even Rn	binary	0	otherwise	0	32bits
                MACRO_M     DATA8_1_REGNUM,DATA8_1,DATA8_2
* TESTCASE_44	even Rn	binary	0	otherwise	0	otherwise
                MACRO_M     DATA9_1_REGNUM,DATA9_1,DATA9_2
* TESTCASE_45	even Rn	binary	0	otherwise	0<	32bits
                MACRO_M     DATA10_1_REGNUM,DATA10_1,DATA10_2
* TESTCASE_46	even Rn	binary	0	otherwise	0<	otherwise
                MACRO_M     DATA11_1_REGNUM,DATA11_1,DATA11_2
* TESTCASE_47	even Rn	binary	0	otherwise	0>	32bits
                MACRO_M     DATA12_1_REGNUM,DATA12_1,DATA12_2
* TESTCASE_48	even Rn	binary	0	otherwise	0>	otherwise
                MACRO_M     DATA13_1_REGNUM,DATA13_1,DATA13_2
* TESTCASE_49	even Rn	binary	0<	32bits	0	32bits
                MACRO_M     DATA14_1_REGNUM,DATA14_1,DATA14_2
* TESTCASE_50	even Rn	binary	0<	32bits	0	otherwise
                MACRO_M     DATA15_1_REGNUM,DATA15_1,DATA15_2
* TESTCASE_51	even Rn	binary	0<	32bits	0<	32bits
                MACRO_M     DATA16_1_REGNUM,DATA16_1,DATA16_2
* TESTCASE_52	even Rn	binary	0<	32bits	0<	otherwise
                MACRO_M     DATA17_1_REGNUM,DATA17_1,DATA17_2
* TESTCASE_53	even Rn	binary	0<	32bits	0>	32bits
                MACRO_M     DATA18_1_REGNUM,DATA18_1,DATA18_2
* TESTCASE_54	even Rn	binary	0<	32bits	0>	otherwise
                MACRO_M     DATA19_1_REGNUM,DATA19_1,DATA19_2
* TESTCASE_55	even Rn	binary	0<	otherwise	0	32bits
                MACRO_M     DATA20_1_REGNUM,DATA20_1,DATA20_2
* TESTCASE_56	even Rn	binary	0<	otherwise	0	otherwise
                MACRO_M     DATA21_1_REGNUM,DATA21_1,DATA21_2
* TESTCASE_57	even Rn	binary	0<	otherwise	0<	32bits
                MACRO_M     DATA22_1_REGNUM,DATA22_1,DATA22_2
* TESTCASE_58	even Rn	binary	0<	otherwise	0<	otherwise
                MACRO_M     DATA23_1_REGNUM,DATA23_1,DATA23_2
* TESTCASE_59	even Rn	binary	0<	otherwise	0>	32bits
                MACRO_M     DATA24_1_REGNUM,DATA24_1,DATA24_2
* TESTCASE_60	even Rn	binary	0<	otherwise	0>	otherwise
                MACRO_M     DATA25_1_REGNUM,DATA25_1,DATA25_2
* TESTCASE_61	even Rn	binary	0>	32bits	0	32bits
                MACRO_M     DATA26_1_REGNUM,DATA26_1,DATA26_2
* TESTCASE_62	even Rn	binary	0>	32bits	0	otherwise
                MACRO_M     DATA27_1_REGNUM,DATA27_1,DATA27_2
* TESTCASE_63	even Rn	binary	0>	32bits	0<	32bits
                MACRO_M     DATA28_1_REGNUM,DATA28_1,DATA28_2
* TESTCASE_64	even Rn	binary	0>	32bits	0<	otherwise
                MACRO_M     DATA29_1_REGNUM,DATA29_1,DATA29_2
* TESTCASE_65	even Rn	binary	0>	32bits	0>	32bits
                MACRO_M     DATA30_1_REGNUM,DATA30_1,DATA30_2
* TESTCASE_66	even Rn	binary	0>	32bits	0>	otherwise
                MACRO_M     DATA31_1_REGNUM,DATA31_1,DATA31_2
* TESTCASE_67	even Rn	binary	0>	otherwise	0	32bits
                MACRO_M     DATA32_1_REGNUM,DATA32_1,DATA32_2
* TESTCASE_68	even Rn	binary	0>	otherwise	0	otherwise
                MACRO_M     DATA33_1_REGNUM,DATA33_1,DATA33_2
* TESTCASE_69	even Rn	binary	0>	otherwise	0<	32bits
                MACRO_M     DATA34_1_REGNUM,DATA34_1,DATA34_2
* TESTCASE_70	even Rn	binary	0>	otherwise	0<	otherwise
                MACRO_M     DATA35_1_REGNUM,DATA35_1,DATA35_2
* TESTCASE_71	even Rn	binary	0>	otherwise	0>	32bits
                MACRO_M     DATA36_1_REGNUM,DATA36_1,DATA36_2
* TESTCASE_72	even Rn	binary	0>	otherwise	0>	otherwise
                MACRO_M     DATA37_1_REGNUM,DATA37_1,DATA37_2
* TESTCASE_73	odd Rn	ERROR
*                MACRO_M     DATA38_1_REGNUM,DATA38_1,DATA38_2
                BR          14
EVENREG_INIT DC X'0416041604160416'
DATA1_1_REGNUM EQU 16
DATA1_1 DC X'0000000000000000'
DATA1_2 DC X'0000000000000000'
DATA2_1_REGNUM EQU 2
DATA2_1 DC X'0416041600000000'
DATA2_2 DC X'00000000'
 DC X'04160416'
DATA3_1_REGNUM EQU 2
DATA3_1 DC X'0416041600000000'
DATA3_2 DC X'0000'
 DC X'041604160416'
DATA4_1_REGNUM EQU 2
DATA4_1 DC X'0416041600000000'
DATA4_2 DC X'01234567'
 DC X'04160416'
DATA5_1_REGNUM EQU 2
DATA5_1 DC X'0416041600000000'
DATA5_2 DC X'0123'
 DC X'041604160416'
DATA6_1_REGNUM EQU 2
DATA6_1 DC X'0416041600000000'
DATA6_2 DC X'FFFFFEDC'
 DC X'04160416'
DATA7_1_REGNUM EQU 2
DATA7_1 DC X'0416041600000000'
DATA7_2 DC X'FFED'
 DC X'041604160416'
DATA8_1_REGNUM EQU 2
DATA8_1 DC X'0416041604160000'
DATA8_2 DC X'00000000'
 DC X'04160416'
DATA9_1_REGNUM EQU 2
DATA9_1 DC X'0416041604160000'
DATA9_2 DC X'0000'
 DC X'041604160416'
DATA10_1_REGNUM EQU 2
DATA10_1 DC X'0416041604160000'
DATA10_2 DC X'01234567'
 DC X'04160416'
DATA11_1_REGNUM EQU 2
DATA11_1 DC X'0416041604160000'
DATA11_2 DC X'0123'
 DC X'041604160416'
DATA12_1_REGNUM EQU 2
DATA12_1 DC X'0416041604160000'
DATA12_2 DC X'FFFFFEDC'
 DC X'04160416'
DATA13_1_REGNUM EQU 2
DATA13_1 DC X'0416041604160000'
DATA13_2 DC X'FFED'
 DC X'041604160416'
DATA14_1_REGNUM EQU 2
DATA14_1 DC X'0416041601234567'
DATA14_2 DC X'00000000'
 DC X'04160416'
DATA15_1_REGNUM EQU 2
DATA15_1 DC X'0416041601234567'
DATA15_2 DC X'0000'
 DC X'041604160416'
DATA16_1_REGNUM EQU 2
DATA16_1 DC X'0416041601234567'
DATA16_2 DC X'01234567'
 DC X'04160416'
DATA17_1_REGNUM EQU 2
DATA17_1 DC X'0416041601234567'
DATA17_2 DC X'0123'
 DC X'041604160416'
DATA18_1_REGNUM EQU 2
DATA18_1 DC X'0416041601234567'
DATA18_2 DC X'FFFFFEDC'
 DC X'04160416'
DATA19_1_REGNUM EQU 2
DATA19_1 DC X'0416041601234567'
DATA19_2 DC X'FFED'
 DC X'041604160416'
DATA20_1_REGNUM EQU 2
DATA20_1 DC X'0416041604160123'
DATA20_2 DC X'00000000'
 DC X'04160416'
DATA21_1_REGNUM EQU 2
DATA21_1 DC X'0416041604160123'
DATA21_2 DC X'0000'
 DC X'041604160416'
DATA22_1_REGNUM EQU 2
DATA22_1 DC X'0416041604160123'
DATA22_2 DC X'01234567'
 DC X'04160416'
DATA23_1_REGNUM EQU 2
DATA23_1 DC X'0416041604160123'
DATA23_2 DC X'0123'
 DC X'041604160416'
DATA24_1_REGNUM EQU 2
DATA24_1 DC X'0416041604160123'
DATA24_2 DC X'FFFFFEDC'
 DC X'04160416'
DATA25_1_REGNUM EQU 2
DATA25_1 DC X'0416041604160123'
DATA25_2 DC X'FFED'
 DC X'041604160416'
DATA26_1_REGNUM EQU 2
DATA26_1 DC X'04160416FFFFFEDC'
DATA26_2 DC X'00000000'
 DC X'04160416'
DATA27_1_REGNUM EQU 2
DATA27_1 DC X'04160416FFFFFEDC'
DATA27_2 DC X'0000'
 DC X'041604160416'
DATA28_1_REGNUM EQU 2
DATA28_1 DC X'04160416FFFFFEDC'
DATA28_2 DC X'01234567'
 DC X'04160416'
DATA29_1_REGNUM EQU 2
DATA29_1 DC X'04160416FFFFFEDC'
DATA29_2 DC X'0123'
 DC X'041604160416'
DATA30_1_REGNUM EQU 2
DATA30_1 DC X'04160416FFFFFEDC'
DATA30_2 DC X'FFFFFEDC'
 DC X'04160416'
DATA31_1_REGNUM EQU 2
DATA31_1 DC X'04160416FFFFFEDC'
DATA31_2 DC X'FFED'
 DC X'041604160416'
DATA32_1_REGNUM EQU 2
DATA32_1 DC X'041604160416FFED'
DATA32_2 DC X'00000000'
 DC X'04160416'
DATA33_1_REGNUM EQU 2
DATA33_1 DC X'041604160416FFED'
DATA33_2 DC X'0000'
 DC X'041604160416'
DATA34_1_REGNUM EQU 2
DATA34_1 DC X'041604160416FFED'
DATA34_2 DC X'01234567'
 DC X'04160416'
DATA35_1_REGNUM EQU 2
DATA35_1 DC X'041604160416FFED'
DATA35_2 DC X'0123'
 DC X'041604160416'
DATA36_1_REGNUM EQU 2
DATA36_1 DC X'041604160416FFED'
DATA36_2 DC X'FFFFFEDC'
 DC X'04160416'
DATA37_1_REGNUM EQU 2
DATA37_1 DC X'041604160416FFED'
DATA37_2 DC X'FFED'
 DC X'041604160416'
DATA38_1_REGNUM EQU 3
DATA38_1 DC X'0000000000000000'
DATA38_2 DC X'0000000000000000'
                END
