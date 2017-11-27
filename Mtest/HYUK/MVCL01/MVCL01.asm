*************************************************
* FILENAME : MVCL01.asm
* AUTHOR : HYUK KIM
* SYSTEM : OFASM v4 revision 169
*************************************************
                MACRO
                MACRO_MVCL  &VALUE1,&LEN1,&VALUE2,&LEN2
* only for 24bit/31bit AMODE
                LG          2,ADDR_INIT
                LA          6,&VALUE1
                LR          2,6
                L           3,&LEN1
                LG          4,ADDR_INIT
                LA          6,&VALUE2
                LR          4,6
                L           5,&LEN2
                OFADBGMEM   &VALUE1,0
                OFADBGREG   3
                OFADBGMEM   &VALUE2,0
                OFADBGREG   5
                MVCL        2,4
                LG          8,ZERO_64
                OFADBGREG   8
                LR          6,2
                LA          7,&VALUE1
                SR          6,7
                OFADBGREG   6

                N           2,ADDR_INIT+4
                OFADBGREG   2
                OFADBGREG   3

                LR          6,4
                LA          7,&VALUE2
                SR          6,7
                OFADBGREG   6

                N           4,ADDR_INIT+4
                OFADBGREG   4
                OFADBGREG   5

                OFADBGMEM   &VALUE1,0
                OFADBGMEM   &VALUE2,0
                MEND
MVCL01          CSECT
                LR          12,15
                USING       MVCL01,12
* TESTCASE_1	addr	0	addr	0	op1.len=op2.len
*                MACRO_MVCL  DATA1_1,DATA1_1_LEN,DATA1_2,DATA1_2_LEN
* TESTCASE_4	addr	0	addr	0	destructive overlap
*                MACRO_MVCL  DATA2,DATA2_1_LEN,DATA2,DATA2_2_LEN
* TESTCASE_6	addr	0	addr	mid	op1.len<op2.len
*                MACRO_MVCL  DATA3_1,DATA3_1_LEN,DATA3_2,DATA3_2_LEN
* TESTCASE_8	addr	0	addr	mid	destructive overlap
*                MACRO_MVCL  DATA4,DATA4_1_LEN,DATA4,DATA4_2_LEN
* TESTCASE_10	addr	0	addr	over	op1.len<op2.len
*                MACRO_MVCL  DATA5_1,DATA5_1_LEN,DATA5_2,DATA5_2_LEN
* TESTCASE_12	addr	0	addr	over	destructive overlap
*                MACRO_MVCL  DATA6,DATA6_1_LEN,DATA6,DATA6_2_LEN
* TESTCASE_15	addr	mid	addr	0	op1.len>op2.len
*                MACRO_MVCL  DATA7_1,DATA7_1_LEN,DATA7_2,DATA7_2_LEN
* TESTCASE_16	addr	mid	addr	0	destructive overlap
*                MACRO_MVCL  DATA8,DATA8_1_LEN,DATA8,DATA8_2_LEN
* TESTCASE_17	addr	mid	addr	mid	op1.len=op2.len
*                MACRO_MVCL  DATA9_1,DATA9_1_LEN,DATA9_2,DATA9_2_LEN
* TESTCASE_18	addr	mid	addr	mid	op1.len<op2.len
*               MACRO_MVCL  DATA10_1,DATA10_1_LEN,DATA10_2,DATA10_2_LEN
* TESTCASE_19	addr	mid	addr	mid	op1.len>op2.len
*               MACRO_MVCL  DATA11_1,DATA11_1_LEN,DATA11_2,DATA11_2_LEN
* TESTCASE_20	addr	mid	addr	mid	destructive overlap
               MACRO_MVCL  DATA12,DATA12_1_LEN,DATA12,DATA12_2_LEN
* TESTCASE_22	addr	mid	addr	over	op1.len<op2.len
               MACRO_MVCL  DATA13_1,DATA13_1_LEN,DATA13_2,DATA13_2_LEN
* TESTCASE_24	addr	mid	addr	over	destructive overlap
               MACRO_MVCL  DATA14,DATA14_1_LEN,DATA14,DATA14_2_LEN
* TESTCASE_27	addr	over	addr	0	op1.len>op2.len
               MACRO_MVCL  DATA15_1,DATA15_1_LEN,DATA15_2,DATA15_2_LEN
* TESTCASE_28	addr	over	addr	0	destructive overlap
               MACRO_MVCL  DATA16,DATA16_1_LEN,DATA16,DATA16_2_LEN
* TESTCASE_31	addr	over	addr	mid	op1.len>op2.len
               MACRO_MVCL  DATA17_1,DATA17_1_LEN,DATA17_2,DATA17_2_LEN
* TESTCASE_32	addr	over	addr	mid	destructive overlap
               MACRO_MVCL  DATA18,DATA18_1_LEN,DATA18,DATA18_2_LEN
* TESTCASE_33	addr	over	addr	over	op1.len=op2.len
               MACRO_MVCL  DATA19_1,DATA19_1_LEN,DATA19_2,DATA19_2_LEN
* TESTCASE_34	addr	over	addr	over	op1.len<op2.len
               MACRO_MVCL  DATA20_1,DATA20_1_LEN,DATA20_2,DATA20_2_LEN
* TESTCASE_35	addr	over	addr	over	op1.len>op2.len
               MACRO_MVCL  DATA21_1,DATA21_1_LEN,DATA21_2,DATA21_2_LEN
* TESTCASE_36	addr	over	addr	over	destructive overlap
               MACRO_MVCL  (DATA22+1),DATA22_1_LEN,DATA22,DATA22_2_LEN
                BR          14
ZERO_64 DC X'0000000000000000'
ADDR_INIT DC X'0416041600000000'
DATA1_1_LEN DC X'EE000000'
DATA1_2_LEN DC X'EE000000'
DATA1_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA1_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA2_1_LEN DC X'EE000000'
DATA2_2_LEN DC X'EE000000'
DATA2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
DATA3_1_LEN DC X'EE000000'
DATA3_2_LEN DC X'EE000034'
DATA3_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA3_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA4_1_LEN DC X'EE000000'
DATA4_2_LEN DC X'EE000034'
DATA4 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
DATA5_1_LEN DC X'EE000000'
DATA5_2_LEN DC X'EEFFFFFF'
DATA5_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA5_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA6_1_LEN DC X'EE000000'
DATA6_2_LEN DC X'EEFFFFFF'
DATA6 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
DATA7_1_LEN DC X'EE000034'
DATA7_2_LEN DC X'EE000000'
DATA7_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA7_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA8_1_LEN DC X'EE000034'
DATA8_2_LEN DC X'EE000000'
DATA8 DC C'0123456789012345678901234567890123456789012345678901'
DATA9_1_LEN DC X'EE000034'
DATA9_2_LEN DC X'EE000034'
DATA9_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA9_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA10_1_LEN DC X'EE00001A'
DATA10_2_LEN DC X'EE000034'
DATA10_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA10_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA11_1_LEN DC X'EE000034'
DATA11_2_LEN DC X'EE00001A'
DATA11_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA11_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA12_1_LEN DC X'EE000034'
DATA12_2_LEN DC X'EE000034'
DATA12 DC C'0123456789012345678901234567890123456789012345678901'
DATA13_1_LEN DC X'EE000034'
DATA13_2_LEN DC X'EE000000'
DATA13_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA13_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA14_1_LEN DC X'EE000034'
DATA14_2_LEN DC X'EE000000'
DATA14 DC C'0123456789012345678901234567890123456789012345678901'
DATA15_1_LEN DC X'EE000000'
DATA15_2_LEN DC X'EE000000'
DATA15_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA15_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA16_1_LEN DC X'EE000000'
DATA16_2_LEN DC X'EE000000'
DATA16 DC C'0123456789012345678901234567890123456789012345678901'
DATA17_1_LEN DC X'EE000000'
DATA17_2_LEN DC X'EE000034'
DATA17_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA17_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA18_1_LEN DC X'EE000000'
DATA18_2_LEN DC X'EE000034'
DATA18 DC C'0123456789012345678901234567890123456789012345678901'
DATA19_1_LEN DC X'EE000034'
DATA19_2_LEN DC X'EE000034'
DATA19_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA19_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA20_1_LEN DC X'EE00001A'
DATA20_2_LEN DC X'EE000034'
DATA20_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA20_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA21_1_LEN DC X'EE000034'
DATA21_2_LEN DC X'EE00001A'
DATA21_1 DC C'0123456789012345678901234567890123456789012345678901'
DATA21_2 DC C'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
 DC C'01234567899876543210012345'
DATA22_1_LEN DC X'EE000033'
DATA22_2_LEN DC X'EE000033'
DATA22 DC C'0123456789012345678901234567890123456789012345678901'
                END