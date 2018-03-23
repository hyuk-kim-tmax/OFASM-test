*************************************************
* FILENAME : SLA01.asm
* AUTHOR : HYUK KIM
* SYSTEM : OFASM v4 revision 258 
*************************************************
                MACRO
                MACRO_SLA   &REGNUM,&VALUE,&NUM
                LG          &REGNUM,REG_INIT
                L           &REGNUM,&VALUE
                OFADBGREG   &REGNUM
                SLA         &REGNUM,&NUM
                OFADBGREG   &REGNUM
                MEND
SLA01          CSECT
                LR          12,15
                USING       SLA01,12
* TESTCASE_1	invalid Rn	ERROR
                MACRO_SLA   DATA1_REGNUM,DATA1_1,DATA1_2
                BR          14
REG_INIT DC X'0416041600000000'
DATA1_REGNUM EQU 16
DATA1_1 DC X'00000000'
DATA1_2 EQU 16
DATA2_REGNUM EQU 2
DATA2_1 DC X'00000000'
DATA2_2 EQU 16
DATA3_REGNUM EQU 2
DATA3_1 DC X'00000000'
DATA3_2 EQU 80
DATA4_REGNUM EQU 2
DATA4_1 DC X'00007FFF'
DATA4_2 EQU 16
DATA5_REGNUM EQU 2
DATA5_1 DC X'0000FFFF'
DATA5_2 EQU 16
DATA6_REGNUM EQU 2
DATA6_1 DC X'00007FFF'
DATA6_2 EQU 80
DATA7_REGNUM EQU 2
DATA7_1 DC X'0000FFFF'
DATA7_2 EQU 80
DATA8_REGNUM EQU 2
DATA8_1 DC X'FFFF8000'
DATA8_2 EQU 16
DATA9_REGNUM EQU 2
DATA9_1 DC X'FFFF0000'
DATA9_2 EQU 16
DATA10_REGNUM EQU 2
DATA10_1 DC X'FFFF8000'
DATA10_2 EQU 80
DATA11_REGNUM EQU 2
DATA11_1 DC X'FFFF0000'
DATA11_2 EQU 80
                END
