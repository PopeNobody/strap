#as:
#source: mapping-04.s
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+0:[ 	]+00001001[ 	]+.word[ 	]+0x00001001
[ 	]+4:[ 	]+00001001[ 	]+.word[ 	]+0x00001001
[ 	]+8:[ 	]+00000001[ 	]+.word[ 	]+0x00000001
[ 	]+c:[ 	]+00[ 	]+.byte[ 	]+0x00
[ 	]+d:[ 	]+00000013[ 	]+nop
[ 	]+11:[ 	]+00a50533[ 	]+add[ 	]+a0,a0,a0
[ 	]+15:[ 	]+20022002[ 	]+.word[ 	]+0x20022002
[ 	]+19:[ 	]+20022002[ 	]+.word[ 	]+0x20022002
[ 	]+1d:[ 	]+2002[ 	]+.short[ 	]+0x2002
[ 	]+1f:[ 	]+00b585b3[ 	]+add[ 	]+a1,a1,a1
[ 	]+23:[ 	]+0000[ 	]+.2byte[ 	]+0x0
[ 	]+25:[ 	]+0000[ 	]+.2byte[ 	]+0x0
#...
