ORG 00H
MOV P0,#0
BACK: CLR P2.4
MOV DPTR,#50H

CLR A
MOVC A,@A+DPTR
MOV P0,A
INC DPTR

CLR P2.4
SETB P2.5
SETB P2.6
SETB P2.7
ACALL DELAY

CLR A
MOVC A,@A+DPTR
MOV P0,A
INC DPTR

SETB P2.4
CLR P2.5
SETB P2.6
SETB P2.7
ACALL DELAY

CLR A
MOVC A,@A+DPTR
MOV P0,A
INC DPTR

SETB P2.4
SETB P2.5
CLR P2.6
SETB P2.7
ACALL DELAY

CLR A
MOVC A,@A+DPTR
MOV P0,A
INC DPTR

SETB P2.4
SETB P2.5
SETB P2.6
CLR P2.7
ACALL DELAY

SJMP BACK

DELAY:MOV R0,#255
HERE1: DJNZ R0,HERE1
RET

ORG 50H
DB 10010000B,11000011B,10100000B,10000101B
RET
END