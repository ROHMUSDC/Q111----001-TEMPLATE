;; Compile Options : /TML610111 /MS /near /LE /Ii2c /Iirq /Imain /Itbc /Itimer /Iuart /Icommon /Imath /Istdio /Istdlib /Istring /Iyvals /CT _output\_prn\main.cal /SS 256 /SD /Oa /Ot /W 3 /Zg /Fa_output\_obj\ /Lv /Zs 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610111) 
	model small, near
	$$NVARmain segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$ClearSerialLCD$main segment code 2h #0h
	$$ExtInt_ISR$main segment code 2h #0h
	$$Initialization$main segment code 2h #0h
	$$LCD_Init$main segment code 2h #0h
	$$MyUART_Receive$main segment code 2h #0h
	$$MyUART_Send$main segment code 2h #0h
	$$NOPx$main segment code 2h #0h
	$$PWM_B0_ON$main segment code 2h #0h
	$$PinB0_PWM$main segment code 2h #0h
	$$PortA_Digital_Inputs$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$SendLCDCmd$main segment code 2h #0h
	$$SerialLCDSplash$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$TAB$$S112$main segment table 2h #0h
	$$TAB$$S80$main segment table 2h #0h
	$$TAB$$S97$main segment table 2h #0h
	$$TAB$$S98$main segment table 2h #0h
	$$TAB_uartSetParam$main segment table 2h #0h
	$$TBC_ISR$main segment code 2h #0h
	$$TMR89_ISR$main segment code 2h #0h
	$$TMRAB_ISR$main segment code 2h #0h
	$$TMREF_ISR$main segment code 2h #0h
	$$_funcI2CFin$main segment code 2h #0h
	$$_funcUartFin$main segment code 2h #0h
	$$_intADC$main segment code 2h #0h
	$$_intI2c$main segment code 2h #0h
	$$_intUart$main segment code 2h #0h
	$$analog_comparator$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	$$main_reqNotHalt$main segment code 2h #0h
	STACKSEG 0100h
CVERSION 3.41.8
CSGLOBAL 03H 0000H "ExtInt_ISR" 08H 02H 0E8H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "TBC_ISR" 08H 02H 0E4H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 0CEH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 0DEH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 0DAH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "LCD_Init" 08H 02H 0EDH 00H 83H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "TMRAB_ISR" 08H 02H 0E6H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOPx" 08H 02H 0D2H 00H 82H 08H 00H 00H 07H
CGLOBAL 01H 03H 0000H "SerialLCDSplash" 08H 02H 0EAH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PWM_B0_ON" 08H 02H 0D3H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 0CFH 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Digital_Inputs" 08H 02H 0D8H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 0EEH 00H 80H 02H 00H 00H 01H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 0DFH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MyUART_Send" 08H 02H 0E9H 00H 83H 10H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 0E2H 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 0D0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 0D7H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intADC" 08H 02H 0E3H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ClearSerialLCD" 08H 02H 0EBH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "TMR89_ISR" 08H 02H 0E5H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 0D6H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "TMREF_ISR" 08H 02H 0E7H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MyUART_Receive" 08H 02H 07H 01H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 0D5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "analog_comparator" 08H 02H 0D4H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 0E0H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "SendLCDCmd" 08H 02H 0ECH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PinB0_PWM" 08H 02H 0D9H 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0007H 0003H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "state" 02H 00H 00H
CSTRUCTMEM 52H 00000002H 00000001H "state_sub" 02H 00H 00H
CSTRUCTMEM 52H 00000005H 00000003H "reserve" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0006H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0004H 000CH 00000016H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "_Mode" 02H 00H 08H
CSTRUCTMEM 43H 00000002H 00000002H "_Handle" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000004H "_Buf" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000006H "_Bend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000008H "_Next" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000AH "_Rend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000CH "_Rsave" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000EH "_Wend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000010H "_Back" 05H 01H 02H 00H 00H 00H
CSTRUCTMEM 42H 00000001H 00000012H "_Cbuf" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000013H "_Nback" 02H 00H 00H
CSTRUCTMEM 43H 00000002H 00000014H "_Tmpnam" 04H 03H 00H 00H 00H
CSTRUCTTAG 0000H 0000H 0003H 0001H 00000004H "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "_Off" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0002H 0002H 00000008H "_Notag"
CSTRUCTMEM 43H 00000004H 00000000H "quot" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000004H "rem" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0001H 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "quot" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "rem" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CUNIONTAG 0000H 0000H 0005H 0002H 00000008H "_Notag"
CUNIONMEM 42H 00000008H "_W" 05H 01H 04H 00H 00H 08H
CUNIONMEM 43H 00000008H "_D" 02H 00H 04H
CTYPEDEF 0000H 0000H 01H "_Dconst" 04H 00H 06H 05H 00H
CTYPEDEF 0000H 0000H 43H "_Ptrdifft" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "_Sizet" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 06H 00H
CTYPEDEF 0000H 0000H 42H "size_t" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 0BEH 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "fpos_t" 04H 00H 05H 03H 00H
CTYPEDEF 0000H 0000H 43H "STRUCT_STATE" 04H 00H 05H 07H 00H
CTYPEDEF 0000H 0000H 43H "cbfI2c" 0AH 03H 00H 02H 63H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nf" 08H 02H 01H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nn" 08H 02H 00H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_ff" 08H 02H 03H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_fn" 08H 02H 02H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 43H "FILE" 04H 00H 05H 04H 00H
CTYPEDEF 0000H 0000H 43H "div_t" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "ldiv_t" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CGLOBAL 00H 42H 0001H "_flgUartFin" 02H 00H 00H
CSGLOBAL 43H 0028H "Sensor1_Data" 05H 01H 0AH 00H 00H 03H
CSGLOBAL 43H 0028H "Sensor3_Data" 05H 01H 0AH 00H 00H 03H
CSGLOBAL 01H 000AH "_uartSetParam" 04H 00H 05H 06H 00H
CSGLOBAL 42H 0032H "MyRx" 05H 01H 32H 00H 00H 00H
CSGLOBAL 43H 0032H "MyTx" 05H 01H 32H 00H 00H 00H
CGLOBAL 01H 42H 000EH "HelloWorld" 05H 01H 0EH 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CSGLOBAL 43H 0028H "Sensor2_Data" 05H 01H 0AH 00H 00H 03H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
CSGLOBAL 42H 00C8H "MyData" 05H 01H 0C8H 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgADCFin" 02H 00H 00H
CFILE 0001H 000007EEH "main\\ML610111.H"
CFILE 0002H 000000D8H "main\\stdlib.h"
CFILE 0003H 0000007AH "main\\yvals.h"
CFILE 0004H 000000EEH "main\\stdio.h"
CFILE 0005H 00000027H "common\\common.h"
CFILE 0006H 00000057H "irq\\irq.h"
CFILE 0007H 00000024H "main\\mcu.h"
CFILE 0008H 00000045H "i2c\\i2c.h"
CFILE 0009H 00000046H "tbc\\tbc.h"
CFILE 000AH 000001B8H "timer\\timer.h"
CFILE 000BH 0000004FH "main\\math.h"
CFILE 000CH 0000006FH "uart\\uart.h"
CFILE 0000H 000005C2H "main\\main.c"

	rseg $$main$main
CFUNCTION 238

_main	:
CBLOCK 238 1 356

;;{
CLINEA 0000H 0001H 0164H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 238 2 356
CLOCAL 4BH 0001H 0000H 0002H "char_a" 02H 00H 00H
CLOCAL 4AH 0001H 0000H 0002H "uchar" 02H 00H 00H
CLOCAL 4AH 0002H 0000H 0002H "uint" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "delay" 02H 00H 01H
CLOCAL 4BH 0004H 0000H 0002H "long_a" 02H 00H 02H
CLOCAL 4BH 0004H 0000H 0002H "float_a" 02H 00H 03H
CLOCAL 4BH 0008H 0000H 0002H "double_a" 02H 00H 04H
CLOCAL 4BH 0002H 0000H 0002H "i" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "j" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "k" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "x" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "y" 02H 00H 01H

;;		Initialization();		// Init Micro...(Ports, Timers, OSC, IRQ's, UART, etc...)
CLINEA 0000H 0001H 0170H 0003H 004EH
	bl	_Initialization

;;	MyTest:		
CLINEA 0000H 0001H 0180H 0002H 000AH
CLABEL 0020H "MyTest"
_$L32 :

;;		PB2D ^= 1;
CLINEA 0000H 0001H 0185H 0003H 000CH
	tb	0f258h.2
	beq	_$M1
	rb	0f258h.2
	bal	_$M2
_$M1 :
	sb	0f258h.2
_$M2 :

;;		QUA0 = 0;
CLINEA 0000H 0001H 0186H 0003H 000BH
	rb	0f01ch.0

;;		main_clrWDT();
CLINEA 0000H 0001H 0187H 0003H 0010H
	bl	_main_clrWDT

;;				HelloWorld[12] 	= 0x0D;  // CR  (Carriage Return)
CLINEA 0000H 0001H 018CH 0005H 0035H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0ch

;;				HelloWorld[13] 	= 0x0A;	 // LF  (Line Feed)
CLINEA 0000H 0001H 018DH 0005H 002FH
	mov	r0,	#0ah
	st	r0,	NEAR _HelloWorld+0dh

;;			uart_startSend(HelloWorld, 14, _funcUartFin); // Send, "Hello World!"
CLINEA 0000H 0001H 018FH 0004H 0048H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#14
	mov	r0,	#BYTE1 OFFSET _HelloWorld
	mov	r1,	#BYTE2 OFFSET _HelloWorld
	bl	_uart_startSend
	add	sp,	#2 

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0190H 0001H 000BH
	bal	_$L37

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0190H 0005H 001CH
_$L35 :
CBLOCK 238 3 400

;;					NOPx(1);
CLINEA 0000H 0001H 0191H 0006H 000DH
	mov	er0,	#1 
	bl	_NOPx

;;					main_clrWDT();
CLINEA 0000H 0001H 0192H 0006H 0013H
	bl	_main_clrWDT
CBLOCKEND 238 3 403

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0190H 0001H 000BH
_$L37 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L35

;;		goto MyTest;
CLINEA 0000H 0001H 0196H 0003H 000EH
	bal	_$L32
CBLOCKEND 238 2 419

;;}//end main
CLINEA 0000H 0001H 01A3H 0001H 000BH
CBLOCKEND 238 1 419
CFUNCTIONEND 238


	rseg $$main_clrWDT$main
CFUNCTION 206

_main_clrWDT	:
CBLOCK 206 1 445

;;{
CLINEA 0000H 0001H 01BDH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 206 2 445

;;		do {
CLINEA 0000H 0001H 01BFH 0003H 0006H
_$L41 :
CBLOCK 206 3 447

;;			WDTCON = 0x5Au;
CLINEA 0000H 0001H 01C0H 0004H 0012H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 206 3 449

;;		} while (WDP != 1);
CLINEA 0000H 0000H 01C1H 0003H 0015H
	tb	0f00eh.0
	beq	_$L41

;;		WDTCON = 0xA5u;
CLINEA 0000H 0001H 01C2H 0003H 0011H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 206 2 453

;;}
CLINEA 0000H 0001H 01C5H 0001H 0001H
	rt
CBLOCKEND 206 1 453
CFUNCTIONEND 206


	rseg $$Initialization$main
CFUNCTION 207

_Initialization	:
CBLOCK 207 1 458

;;static void Initialization(void){
CLINEA 0000H 0001H 01CAH 0001H 0021H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 207 2 458
CRET 0000H

;;			DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 
CLINEA 0000H 0001H 01CEH 0004H 0037H
	sb	0f02ah.0

;;			DUA0  = 0; // 0=> Enables the operation of UART0 
CLINEA 0000H 0001H 01CFH 0004H 0034H
	rb	0f02ah.2

;;			DUA1  = 1; // 0=> Enables Uart1 
CLINEA 0000H 0001H 01D0H 0004H 0023H
	sb	0f02ah.3

;;			DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) 
CLINEA 0000H 0001H 01D1H 0004H 0037H
	sb	0f02ah.6

;;			DI2C0 = 0; // 0=> Enables I2C bus Interface (Master)	
CLINEA 0000H 0001H 01D2H 0004H 0038H
	rb	0f02ah.7

;;		BLKCON4 = 0x00; // SA-ADC: 0=> Enables ; 0xFF=> Disables
CLINEA 0000H 0001H 01D4H 0003H 003AH
	mov	r0,	#00h
	st	r0,	0f02ch

;;		BLKCON6 = 0x00; // Timers 8, 9, A, E, F : 0=> Enables ; 0xFF=> Disables
CLINEA 0000H 0001H 01D5H 0003H 0049H
	st	r0,	0f02eh

;;		BLKCON7 = 0xFF; // PWM (PWMC, PWMD, PWME, PWMF : 0=> Enables ; 0xFF=> Disables
CLINEA 0000H 0001H 01D6H 0003H 0050H
	mov	r0,	#0ffh
	st	r0,	0f02fh

;;		PortA_Low();	//Initialize all 3 Ports of Q111 Port A to GPIO-Low
CLINEA 0000H 0001H 01D9H 0003H 0042H
	bl	_PortA_Low

;;		PortB_Low();	//Initialize all 8 Ports of Q111 Port B to GPIO-Low
CLINEA 0000H 0001H 01DAH 0003H 0042H
	bl	_PortB_Low

;;		PortC_Low();	//Initialize all 4 Ports of Q111 Port C to GPIO-Low
CLINEA 0000H 0001H 01DBH 0003H 0042H
	bl	_PortC_Low

;;     	SetOSC(); 	//8MHz
CLINEA 0000H 0001H 01E2H 0007H 0017H
	bl	_SetOSC

;;		irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 0246H 0003H 0021H
	bl	_irq_di

;;				IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
CLINEA 0000H 0001H 0262H 0005H 0036H
	mov	r0,	#00h
	st	r0,	0f017h
	st	r0,	0f016h
	st	r0,	0f015h
	st	r0,	0f014h
	st	r0,	0f013h
	st	r0,	0f012h
	st	r0,	0f011h
	st	r0,	0f010h

;;				IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;
CLINEA 0000H 0001H 0266H 0005H 003EH
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
CLINEA 0000H 0001H 0269H 0005H 003FH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0fh
	bl	_irq_setHdr

;;					EUA0 = 1; 	// EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 026AH 0006H 004EH
	sb	0f014h.0

;;					QUA0 = 1;	// Request Flag for the UART_0 	INTERRUPT (1=REQUEST, 0-NO-REQUEST)
CLINEA 0000H 0001H 026BH 0006H 0052H
	sb	0f01ch.0

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 026FH 0005H 003FH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;					EI2CM = 1; // EI2CM is the enable flag for the I2C MASTER interrupt (1=ENABLED)
CLINEA 0000H 0001H 0270H 0006H 0054H
	sb	0f012h.7

;;					QI2CM = 0;
CLINEA 0000H 0001H 0271H 0006H 000FH
	rb	0f01ah.7

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_SADINT, _intADC );
CLINEA 0000H 0001H 0275H 0005H 003EH
	mov	r2,	#BYTE1 OFFSET __intADC
	mov	r3,	#BYTE2 OFFSET __intADC
	mov	r0,	#0ah
	bl	_irq_setHdr

;;					ESAD = 1; // ESAD is the enable flag for the ADC interrupt (1=ENABLED)
CLINEA 0000H 0001H 0276H 0006H 004BH
	sb	0f012h.2

;;					QSAD = 0; // Request Flag for the ADC INTERRUPT (1=REQUEST, 0-NO-REQUEST)
CLINEA 0000H 0001H 0277H 0006H 004EH
	rb	0f01ah.2

;;	irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 02DFH 0002H 001FH
	bl	_irq_ei

;;			     &_uartSetParam );						// Parameters from Structure    
CLINEA 0000H 0001H 02EBH 0009H 003FH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#00h
	mov	r3,	#020h
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;		uart_PortSet();									// Set UART Port Pins
CLINEA 0000H 0001H 02ECH 0003H 002FH
	bl	_uart_PortSet

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 02EDH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 02EEH 0003H 000EH
	bl	_uart_stop

;;			HelloWorld[12] 	= 0x0D;  // CR  (Carriage Return)
CLINEA 0000H 0001H 02F2H 0004H 0034H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0ch

;;			HelloWorld[13] 	= 0x0A;	 // LF  (Line Feed)
CLINEA 0000H 0001H 02F3H 0004H 002EH
	mov	r0,	#0ah
	st	r0,	NEAR _HelloWorld+0dh

;;		uart_startSend(HelloWorld, 14, _funcUartFin); // Send, "Hello World!"
CLINEA 0000H 0001H 02F5H 0003H 0047H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#14
	mov	r0,	#BYTE1 OFFSET _HelloWorld
	mov	r1,	#BYTE2 OFFSET _HelloWorld
	bl	_uart_startSend
	add	sp,	#2 

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F6H 0001H 0015H
	bal	_$L48

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F6H 0004H 001BH
_$L46 :
CBLOCK 207 3 758

;;				NOPx(1);
CLINEA 0000H 0001H 02F7H 0005H 000CH
	mov	er0,	#1 
	bl	_NOPx

;;				main_clrWDT();
CLINEA 0000H 0001H 02F8H 0005H 0012H
	bl	_main_clrWDT
CBLOCKEND 207 3 761

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F6H 0001H 0015H
_$L48 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L46

;;		WDTMOD = 0x03; 	// 0x03=overflow 8sec...
CLINEA 0000H 0001H 0302H 0003H 002AH
	mov	r0,	#03h
	st	r0,	0f00fh

;;		main_clrWDT(); 	// Clear WDT   
CLINEA 0000H 0001H 0303H 0003H 0021H
	bl	_main_clrWDT
CBLOCKEND 207 2 776

;;}//End Initialization
CLINEA 0000H 0001H 0308H 0001H 0015H
	pop	pc
CBLOCKEND 207 1 776
CFUNCTIONEND 207


	rseg $$SetOSC$main
CFUNCTION 208

_SetOSC	:
CBLOCK 208 1 783

;;static void SetOSC(void){
CLINEA 0000H 0001H 030FH 0001H 0019H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 208 2 783

;;		SYSC0  = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 0313H 0003H 004CH
	rb	0f002h.0

;;		SYSC1  = 0;			//...
CLINEA 0000H 0001H 0314H 0003H 0015H
	rb	0f002h.1

;;		OSCM1  = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 0315H 0003H 0036H
	sb	0f002h.3

;;		OSCM0  = 0;			//...
CLINEA 0000H 0001H 0316H 0003H 0015H
	rb	0f002h.2

;;		ENOSC  = 1;			// 1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 0319H 0003H 0034H
	sb	0f003h.1

;;		SYSCLK = 1;			// Select System Clock: 1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 031AH 0003H 0039H
	sb	0f003h.0

;;		LPLL   = 1;			// 1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 031BH 0003H 0049H
	sb	0f003h.7

;;	__EI();					//INT enable
CLINEA 0000H 0001H 031DH 0002H 0019H
	ei
CBLOCKEND 208 2 798

;;}
CLINEA 0000H 0001H 031EH 0001H 0001H
	rt
CBLOCKEND 208 1 798
CFUNCTIONEND 208


	rseg $$analog_comparator$main
CFUNCTION 212

_analog_comparator	:
CBLOCK 212 1 805

;;void analog_comparator(void){
CLINEA 0000H 0001H 0325H 0001H 001DH
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 212 2 805

;;	CMP0EN  = 0x01; 	// Comparator ON...
CLINEA 0000H 0001H 033BH 0002H 0025H
	sb	0f950h.0

;;	CMP0E1  = 0x00; 	// No Interupt...
CLINEA 0000H 0001H 033CH 0002H 0023H
	rb	0f951h.1

;;	CMP0E0  = 0x00;
CLINEA 0000H 0001H 033DH 0002H 0010H
	rb	0f951h.0

;;	CMP0SM1 = 0x00; 	// Detect without Sampling... 
CLINEA 0000H 0001H 033EH 0002H 0030H
	rb	0f951h.3

;;	CMP0RFS = 0x01; 	// Differential Input on B5
CLINEA 0000H 0001H 033FH 0002H 002DH
	sb	0f951h.4

;;	CMP0EN  = 0x00;
CLINEA 0000H 0001H 0342H 0002H 0010H
	rb	0f950h.0
CBLOCKEND 212 2 837

;;}
CLINEA 0000H 0001H 0345H 0001H 0001H
	rt
CBLOCKEND 212 1 837
CFUNCTIONEND 212


	rseg $$PortA_Low$main
CFUNCTION 213

_PortA_Low	:
CBLOCK 213 1 845

;;void PortA_Low(void){
CLINEA 0000H 0001H 034DH 0001H 0015H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 213 2 845

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 0357H 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 0358H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 0359H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 035CH 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 035DH 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 035EH 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 035FH 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0360H 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 0361H 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0364H 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0365H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0366H 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0367H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0368H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0369H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 036CH 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 036DH 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 036EH 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0370H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 213 2 882
CLINEA 0000H 0001H 0372H 0001H 0001H
CBLOCKEND 213 1 882
CFUNCTIONEND 213


	rseg $$PortB_Low$main
CFUNCTION 214

_PortB_Low	:
CBLOCK 214 1 888

;;void PortB_Low(void){
CLINEA 0000H 0001H 0378H 0001H 0015H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 214 2 888

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0382H 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 0383H 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 0384H 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 0385H 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 0386H 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 0387H 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0388H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0389H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 038CH 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 038DH 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 038EH 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 038FH 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0390H 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 0391H 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0392H 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 0393H 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0394H 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 0395H 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0396H 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 0397H 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 0398H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 0399H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 039AH 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 039BH 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 039EH 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 039FH 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 03A0H 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 03A1H 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 03A2H 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 03A3H 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 03A4H 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 03A5H 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 03A6H 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 03A7H 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 03A8H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 03A9H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 03AAH 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 03ABH 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 03ACH 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 03ADH 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 03B0H 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 03B1H 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 03B2H 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 03B3H 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 03B4H 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 03B5H 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 03B6H 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 03B7H 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 03B9H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 214 2 955
CLINEA 0000H 0001H 03BBH 0001H 0001H
CBLOCKEND 214 1 955
CFUNCTIONEND 214


	rseg $$PortC_Low$main
CFUNCTION 215

_PortC_Low	:
CBLOCK 215 1 961

;;void PortC_Low(void){
CLINEA 0000H 0001H 03C1H 0001H 0015H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 215 2 961

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 03CBH 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 03CCH 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 03CDH 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 03CEH 0002H 0031H
	rb	0f261h.3

;;	PC0C1  = 1;		// PortC Bit0 set to CMOS Output...
CLINEA 0000H 0001H 03D2H 0002H 0031H
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 03D3H 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to CMOS Output...
CLINEA 0000H 0001H 03D4H 0002H 0031H
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 03D5H 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to CMOS Output...
CLINEA 0000H 0001H 03D6H 0002H 0031H
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 03D7H 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to CMOS Output...
CLINEA 0000H 0001H 03D8H 0002H 0031H
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 03D9H 0002H 000EH
	sb	0f262h.3

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 03DCH 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 03DDH 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 03DEH 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 03DFH 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 03E0H 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 03E1H 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 03E2H 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 03E3H 0002H 000EH
	rb	0f264h.3

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 03E6H 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 03E7H 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 03E8H 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 03E9H 0002H 0021H
	rb	0f260h.3

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 03EBH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 215 2 1005
CLINEA 0000H 0001H 03EDH 0001H 0001H
CBLOCKEND 215 1 1005
CFUNCTIONEND 215


	rseg $$PortA_Digital_Inputs$main
CFUNCTION 216

_PortA_Digital_Inputs	:
CBLOCK 216 1 1011

;;void PortA_Digital_Inputs(void){
CLINEA 0000H 0001H 03F3H 0001H 0020H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 216 2 1011

;;	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
CLINEA 0000H 0001H 03FDH 0002H 0030H
	sb	0f251h.0

;;	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
CLINEA 0000H 0001H 03FEH 0002H 0030H
	sb	0f251h.1

;;	PA2DIR = 1;		// PortA Bit2 set to Input Mode...
CLINEA 0000H 0001H 03FFH 0002H 0030H
	sb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0403H 0002H 0041H
	sb	0f253h.0

;;	PA0C0  = 0;		
CLINEA 0000H 0001H 0404H 0002H 000EH
	rb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0405H 0002H 0041H
	sb	0f253h.1

;;	PA1C0  = 0;	
CLINEA 0000H 0001H 0406H 0002H 000DH
	rb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0407H 0002H 0041H
	sb	0f253h.2

;;	PA2C0  = 0;	
CLINEA 0000H 0001H 0408H 0002H 000DH
	rb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
CLINEA 0000H 0001H 040BH 0002H 0039H
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 040CH 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
CLINEA 0000H 0001H 040DH 0002H 0039H
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 040EH 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
CLINEA 0000H 0001H 040FH 0002H 0039H
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0410H 0002H 000EH
	rb	0f254h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0412H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 216 2 1044
CLINEA 0000H 0001H 0414H 0001H 0001H
CBLOCKEND 216 1 1044
CFUNCTIONEND 216


	rseg $$PWM_B0_ON$main
CFUNCTION 211

_PWM_B0_ON	:
CBLOCK 211 1 1050

;;void PWM_B0_ON(int myPeriod, int myDutyCycle){
CLINEA 0000H 0001H 041AH 0001H 002EH
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 211 2 1050
CARGUMENT 47H 0002H 0024H "myPeriod" 02H 00H 01H
CARGUMENT 47H 0002H 0025H "myDutyCycle" 02H 00H 01H

;;			PWCP = myPeriod;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 041EH 0004H 0084H
	st	er0,	0f910h

;;			PWCD =    myDutyCycle;		//12    ~  0.25% duty cycle @ 160Hz
CLINEA 0000H 0001H 0426H 0004H 003EH
	st	er2,	0f912h

;;		PCRUN = 1;		// TURN PWM ON
CLINEA 0000H 0001H 0428H 0003H 001CH
	sb	0f917h.0
CBLOCKEND 211 2 1066

;;}//END PWM_B0_ON Function
CLINEA 0000H 0001H 042AH 0001H 0019H
	rt
CBLOCKEND 211 1 1066
CFUNCTIONEND 211


	rseg $$PinB0_PWM$main
CFUNCTION 217

_PinB0_PWM	:
CBLOCK 217 1 1074

;;void PinB0_PWM(void){
CLINEA 0000H 0001H 0432H 0001H 0015H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 217 2 1074

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 043EH 0002H 0031H
	rb	0f259h.0

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0441H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0442H 0002H 000EH
	sb	0f25ah.0

;;	PB0MD1  = 0;	// PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0445H 0002H 0036H
	rb	0f25dh.0

;;	PB0MD0  = 1;	
CLINEA 0000H 0001H 0446H 0002H 000EH
	sb	0f25ch.0

;;	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 044AH 0002H 0023H
	rb	0f916h.1

;;	PCCS0 = 1;
CLINEA 0000H 0001H 044BH 0002H 000BH
	sb	0f916h.0

;;	PWCP = 4250;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 044EH 0002H 007EH
	mov	r0,	#09ah
	mov	r1,	#010h
	st	er0,	0f910h

;;	PWCD =    12;		//12    ~  0.25% duty cycle @ 160Hz
CLINEA 0000H 0001H 0458H 0002H 0033H
	mov	er0,	#12
	st	er0,	0f912h

;;	PCRUN = 0;		// OFF to start
CLINEA 0000H 0001H 045AH 0002H 001CH
	rb	0f917h.0
CBLOCKEND 217 2 1116

;;}
CLINEA 0000H 0001H 045CH 0001H 0001H
	rt
CBLOCKEND 217 1 1116
CFUNCTIONEND 217


	rseg $$_funcUartFin$main
CFUNCTION 222

__funcUartFin	:
CBLOCK 222 1 1204

;;{
CLINEA 0000H 0001H 04B4H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 222 2 1204
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();						// Function in UART.c: process to continue send & receive...
CLINEA 0000H 0001H 04B5H 0002H 0053H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 04B6H 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin

;;	main_reqNotHalt();						// uncommented 5/2/2013
CLINEA 0000H 0001H 04B7H 0002H 0030H
	bl	_main_reqNotHalt
CBLOCKEND 222 2 1208

;;}
CLINEA 0000H 0001H 04B8H 0001H 0001H
	pop	pc
CBLOCKEND 222 1 1208
CFUNCTIONEND 222


	rseg $$_funcI2CFin$main
CFUNCTION 224

__funcI2CFin	:
CBLOCK 224 1 1219

;;{
CLINEA 0000H 0001H 04C3H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 224 2 1219
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();							// Function in UART.c: process to continue send & receive...
CLINEA 0000H 0001H 04C4H 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 04C5H 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;	main_reqNotHalt();						// uncommented 5/2/2013
CLINEA 0000H 0001H 04C6H 0002H 0030H
	bl	_main_reqNotHalt
CBLOCKEND 224 2 1223

;;}
CLINEA 0000H 0001H 04C7H 0001H 0001H
	pop	pc
CBLOCKEND 224 1 1223
CFUNCTIONEND 224


	rseg $$_intI2c$main
CFUNCTION 226

__intI2c	:
CBLOCK 226 1 1233

;;{
CLINEA 0000H 0001H 04D1H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 226 2 1233
CRET 0000H

;;	(void)i2c_continue();
CLINEA 0000H 0001H 04D2H 0002H 0016H
	bl	_i2c_continue

;;	main_reqNotHalt();
CLINEA 0000H 0001H 04D3H 0002H 0013H
	bl	_main_reqNotHalt
CBLOCKEND 226 2 1236

;;}
CLINEA 0000H 0001H 04D4H 0001H 0001H
	pop	pc
CBLOCKEND 226 1 1236
CFUNCTIONEND 226


	rseg $$_intADC$main
CFUNCTION 227

__intADC	:
CBLOCK 227 1 1246

;;{
CLINEA 0000H 0001H 04DEH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 227 2 1246

;;	_flgADCFin = 1;
CLINEA 0000H 0001H 04DFH 0002H 0010H
	mov	r0,	#01h
	st	r0,	NEAR __flgADCFin
CBLOCKEND 227 2 1248

;;}
CLINEA 0000H 0001H 04E0H 0001H 0001H
	rt
CBLOCKEND 227 1 1248
CFUNCTIONEND 227


	rseg $$main_reqNotHalt$main
CFUNCTION 218

_main_reqNotHalt	:
CBLOCK 218 1 1258

;;{
CLINEA 0000H 0001H 04EAH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 218 2 1258

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 04EBH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 218 2 1260

;;}
CLINEA 0000H 0001H 04ECH 0001H 0001H
	rt
CBLOCKEND 218 1 1260
CFUNCTIONEND 218


	rseg $$_intUart$main
CFUNCTION 223

__intUart	:
CBLOCK 223 1 1270

;;{
CLINEA 0000H 0001H 04F6H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 223 2 1270

;;	uart_continue(); 	//in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 04F7H 0002H 0047H
	b	_uart_continue
CBLOCKEND 223 2 1272
CLINEA 0000H 0001H 04F8H 0001H 0001H
CBLOCKEND 223 1 1272
CFUNCTIONEND 223


	rseg $$TBC_ISR$main
CFUNCTION 228

_TBC_ISR	:
CBLOCK 228 1 1278

;;{
CLINEA 0000H 0001H 04FEH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 228 2 1278

;;	LED6_pin ^= 1; 
CLINEA 0000H 0001H 0500H 0002H 0010H
	tb	0f258h.5
	beq	_$M20
	rb	0f258h.5
	rt
_$M20 :
	sb	0f258h.5
CBLOCKEND 228 2 1281

;;}
CLINEA 0000H 0001H 0501H 0001H 0001H
	rt
CBLOCKEND 228 1 1281
CFUNCTIONEND 228


	rseg $$TMR89_ISR$main
CFUNCTION 229

_TMR89_ISR	:
CBLOCK 229 1 1287

;;{
CLINEA 0000H 0001H 0507H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 229 2 1287
CRET 0000H

;;	LED2_pin ^= 1;
CLINEA 0000H 0001H 050AH 0002H 000FH
	tb	0f260h.3
	beq	_$M23
	rb	0f260h.3
	bal	_$M24
_$M23 :
	sb	0f260h.3
_$M24 :

;;	tm_init(TM_CH_NO_89);
CLINEA 0000H 0001H 050BH 0002H 0016H
	mov	r0,	#00h
	bl	_tm_init

;;	tm_start89();		//Clear & Restart Timer...
CLINEA 0000H 0001H 00CAH 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e1h

;;	tm_start89();		//Clear & Restart Timer...
CLINEA 0000H 0000H 00CBH 0002H 000BH
	sb	0f8e3h.0
CBLOCKEND 229 2 1293

;;}
CLINEA 0000H 0001H 050DH 0001H 0001H
	pop	pc
CBLOCKEND 229 1 1293
CFUNCTIONEND 229


	rseg $$TMRAB_ISR$main
CFUNCTION 230

_TMRAB_ISR	:
CBLOCK 230 1 1299

;;{
CLINEA 0000H 0001H 0513H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 230 2 1299
CRET 0000H

;;	LED5_pin ^= 1;
CLINEA 0000H 0001H 0516H 0002H 000FH
	tb	0f260h.2
	beq	_$M26
	rb	0f260h.2
	bal	_$M27
_$M26 :
	sb	0f260h.2
_$M27 :

;;	tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 0517H 0002H 0016H
	mov	r0,	#01h
	bl	_tm_init

;;	tm_startAB();		//Clear & Restart Timer...
CLINEA 0000H 0001H 00D1H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e9h

;;	tm_startAB();		//Clear & Restart Timer...
CLINEA 0000H 0000H 00D2H 0002H 000BH
	sb	0f8ebh.0
CBLOCKEND 230 2 1305

;;}
CLINEA 0000H 0001H 0519H 0001H 0001H
	pop	pc
CBLOCKEND 230 1 1305
CFUNCTIONEND 230


	rseg $$TMREF_ISR$main
CFUNCTION 231

_TMREF_ISR	:
CBLOCK 231 1 1311

;;{
CLINEA 0000H 0001H 051FH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 231 2 1311
CRET 0000H

;;	LED8_pin ^= 1;
CLINEA 0000H 0001H 0522H 0002H 000FH
	tb	0f258h.7
	beq	_$M29
	rb	0f258h.7
	bal	_$M30
_$M29 :
	sb	0f258h.7
_$M30 :

;;	tm_init(TM_CH_NO_EF);
CLINEA 0000H 0001H 0523H 0002H 0016H
	mov	r0,	#02h
	bl	_tm_init

;;	tm_startEF();		//Clear & Restart Timer...
CLINEA 0000H 0001H 00D8H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f361h

;;	tm_startEF();		//Clear & Restart Timer...
CLINEA 0000H 0000H 00D9H 0002H 000BH
	sb	0f363h.0
CBLOCKEND 231 2 1317

;;}
CLINEA 0000H 0001H 0525H 0001H 0001H
	pop	pc
CBLOCKEND 231 1 1317
CFUNCTIONEND 231


	rseg $$ExtInt_ISR$main
CFUNCTION 232

_ExtInt_ISR	:
CBLOCK 232 1 1324

;;{
CLINEA 0000H 0001H 052CH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 232 2 1324

;;	LED9_pin ^= 1;
CLINEA 0000H 0001H 052EH 0002H 000FH
	tb	0f258h.6
	beq	_$M32
	rb	0f258h.6
	rt
_$M32 :
	sb	0f258h.6
CBLOCKEND 232 2 1328

;;}
CLINEA 0000H 0001H 0530H 0001H 0001H
	rt
CBLOCKEND 232 1 1328
CFUNCTIONEND 232


	rseg $$NOPx$main
CFUNCTION 210

_NOPx	:
CBLOCK 210 1 1333

;;{
CLINEA 0000H 0001H 0535H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_ONCNT$0	set	-2
	_xxx$2	set	-4
;;*****************************************

	push	fp
	mov	fp,	sp
	add	sp,	#-04
	push	er8
	mov	er8,	er0
CBLOCK 210 2 1333
CARGUMENT 46H 0002H 0028H "MyCount" 02H 00H 01H
CLOCAL 42H 0002H 0002H 0002H "ONCNT" 02H 00H 01H
CLOCAL 42H 0002H 0004H 0002H "xxx" 02H 00H 01H

;;unsigned int ONCNT = 0;
CLINEA 0000H 0001H 0536H 0001H 0017H
	mov	er0,	#0 
	st	er0,	_ONCNT$0[fp]

;;xxx = MyCount;
CLINEA 0000H 0001H 0539H 0001H 000EH
	st	er8,	_xxx$2[fp]

;;	while(ONCNT < xxx) {	// NOP for "xxx" Cycles
CLINEA 0000H 0001H 053BH 0002H 002DH
	bal	_$L69
_$L71 :
CBLOCK 210 3 1339

;;		ONCNT++;
CLINEA 0000H 0000H 053CH 0003H 000AH
	add	er0,	#1 
	st	er0,	_ONCNT$0[fp]
CBLOCKEND 210 3 1341

;;	}
CLINEA 0000H 0000H 053DH 0002H 0002H
_$L69 :

;;	while(ONCNT < xxx) {	// NOP for "xxx" Cycles
CLINEA 0000H 0000H 053BH 0000H 0000H
	l	er2,	_xxx$2[fp]
	cmp	er0,	er2
	blt	_$L71
CBLOCKEND 210 2 1343

;;}
CLINEA 0000H 0001H 053FH 0001H 0001H
	pop	er8
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 210 1 1343
CFUNCTIONEND 210


	rseg $$MyUART_Send$main
CFUNCTION 233

_MyUART_Send	:
CBLOCK 233 1 1347

;;void MyUART_Send(void){
CLINEA 0000H 0001H 0543H 0001H 0017H
;;*****************************************
;;	register/stack information
;;*****************************************
	_i$0	set	-2
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-02
CBLOCK 233 2 1347
CRET 0004H
CLOCAL 43H 0002H 0002H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<50; i++)
CLINEA 0000H 0001H 0547H 0002H 0016H
	mov	er0,	#0 
	st	er0,	_i$0[fp]
_$L76 :
CBLOCK 233 3 1352

;;		MyTx[i] = 0x20;		// Clear Data Array...
CLINEA 0000H 0001H 0549H 0003H 0029H
	mov	r2,	#020h
	st	r2,	NEAR _MyTx[er0]
CBLOCKEND 233 3 1354

;;	for(i = 0; i<50; i++)
CLINEA 0000H 0000H 0547H 0002H 0016H
	l	er0,	_i$0[fp]
	add	er0,	#1 
	st	er0,	_i$0[fp]
	cmp	r0,	#032h
	cmpc	r1,	#00h
	blts	_$L76

;;	sprintf(MyTx, "%f,%f,%f", Sensor1_Data, Sensor2_Data, Sensor3_Data);
CLINEA 0000H 0001H 054CH 0002H 0045H
	mov	r0,	#BYTE1 OFFSET _Sensor3_Data
	mov	r1,	#BYTE2 OFFSET _Sensor3_Data
	push	er0
	mov	r0,	#BYTE1 OFFSET _Sensor2_Data
	mov	r1,	#BYTE2 OFFSET _Sensor2_Data
	push	er0
	mov	r0,	#BYTE1 OFFSET _Sensor1_Data
	mov	r1,	#BYTE2 OFFSET _Sensor1_Data
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S80
	mov	r1,	#BYTE2 OFFSET $$S80
	push	er0
	mov	r0,	#BYTE1 OFFSET _MyTx
	mov	r1,	#BYTE2 OFFSET _MyTx
	push	er0
	bl	_sprintf_nn
	add	sp,	#10

;;	MyTx[148] = 0x0D;	//CR
CLINEA 0000H 0001H 054EH 0002H 0017H
	mov	r0,	#0dh
	st	r0,	NEAR _MyTx+094h

;;	MyTx[149] = 0x0A;	//LF
CLINEA 0000H 0001H 054FH 0002H 0017H
	mov	r0,	#0ah
	st	r0,	NEAR _MyTx+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0552H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0553H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(MyTx, 50, _funcUartFin);
CLINEA 0000H 0001H 0554H 0002H 0028H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#50
	mov	r0,	#BYTE1 OFFSET _MyTx
	mov	r1,	#BYTE2 OFFSET _MyTx
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0555H 0001H 0001H
	bal	_$L85

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0555H 0002H 0019H
_$L83 :
CBLOCK 233 4 1365

;;		main_clrWDT();
CLINEA 0000H 0001H 0556H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 233 4 1367

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0555H 0001H 0001H
_$L85 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L83
CBLOCKEND 233 2 1368

;;}
CLINEA 0000H 0001H 0558H 0001H 0001H
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 233 1 1368
CFUNCTIONEND 233


	rseg $$MyUART_Receive$main
CFUNCTION 263

_MyUART_Receive	:
CBLOCK 263 1 1373

;;void MyUART_Receive(void){
CLINEA 0000H 0001H 055DH 0001H 001AH
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 263 2 1373
CRET 0000H

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0560H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0561H 0003H 000EH
	bl	_uart_stop

;;		uart_startReceive(MyRx, 50, _funcUartFin);
CLINEA 0000H 0001H 0562H 0003H 002CH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#50
	mov	r0,	#BYTE1 OFFSET _MyRx
	mov	r1,	#BYTE2 OFFSET _MyRx
	bl	_uart_startReceive
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0563H 0001H 0001H
	bal	_$L95

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0563H 0003H 001AH
_$L89 :
CBLOCK 263 3 1379

;;			main_clrWDT();
CLINEA 0000H 0001H 0564H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 263 3 1381

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0563H 0001H 0001H
_$L95 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L89
CBLOCK 263 4 1383
CBLOCK 263 5 1384
CBLOCKEND 263 5 1386
CBLOCKEND 263 4 1387
CBLOCKEND 263 2 1388

;;}
CLINEA 0000H 0001H 056CH 0001H 0001H
	pop	pc
CBLOCKEND 263 1 1388
CFUNCTIONEND 263


	rseg $$SerialLCDSplash$main
CFUNCTION 234

_SerialLCDSplash	:
CBLOCK 234 1 1396

;;{
CLINEA 0000H 0001H 0574H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 234 2 1396
CRET 0000H

;;	SendLCDCmd(LCD_Display_ON_NoBlink);
CLINEA 0000H 0001H 0575H 0002H 0024H
	mov	r0,	#016h
	bl	_SendLCDCmd

;;	SendLCDCmd(LCD_Backlight_ON);
CLINEA 0000H 0001H 0576H 0002H 001EH
	mov	r0,	#011h
	bl	_SendLCDCmd

;;	SendLCDCmd(LCD_HOME);
CLINEA 0000H 0001H 0577H 0002H 0016H
	mov	r0,	#080h
	bl	_SendLCDCmd

;;	uartSendStr( ClearLCD,(unsigned char)ClearLCD_LEN);
CLINEA 0000H 0001H 0579H 0002H 0034H
	mov	r2,	#020h
	mov	r0,	#BYTE1 OFFSET $$S97
	mov	r1,	#BYTE2 OFFSET $$S97
	bl	_uartSendStr

;;	uartSendStr( WelcomeString,(unsigned char)WelcomeString_LEN);
CLINEA 0000H 0001H 057AH 0002H 003EH
	mov	r2,	#019h
	mov	r0,	#BYTE1 OFFSET $$S98
	mov	r1,	#BYTE2 OFFSET $$S98
	bl	_uartSendStr
CBLOCKEND 234 2 1403

;;}
CLINEA 0000H 0001H 057BH 0001H 0001H
	pop	pc
CBLOCKEND 234 1 1403
CFUNCTIONEND 234


	rseg $$ClearSerialLCD$main
CFUNCTION 235

_ClearSerialLCD	:
CBLOCK 235 1 1409

;;{
CLINEA 0000H 0001H 0581H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 235 2 1409
CRET 0000H

;;	SendLCDCmd(LCD_Display_ON_NoBlink);
CLINEA 0000H 0001H 0582H 0002H 0024H
	mov	r0,	#016h
	bl	_SendLCDCmd

;;	SendLCDCmd(LCD_Backlight_ON);
CLINEA 0000H 0001H 0583H 0002H 001EH
	mov	r0,	#011h
	bl	_SendLCDCmd

;;	SendLCDCmd(LCD_HOME);
CLINEA 0000H 0001H 0584H 0002H 0016H
	mov	r0,	#080h
	bl	_SendLCDCmd

;;	uartSendStr( ClearLCD,(unsigned char)ClearLCD_LEN);
CLINEA 0000H 0001H 0585H 0002H 0034H
	mov	r2,	#020h
	mov	r0,	#BYTE1 OFFSET $$S97
	mov	r1,	#BYTE2 OFFSET $$S97
	bl	_uartSendStr
CBLOCKEND 235 2 1414

;;}
CLINEA 0000H 0001H 0586H 0001H 0001H
	pop	pc
CBLOCKEND 235 1 1414
CFUNCTIONEND 235


	rseg $$SendLCDCmd$main
CFUNCTION 236

_SendLCDCmd	:
CBLOCK 236 1 1420

;;{
CLINEA 0000H 0001H 058CH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 236 2 1420
CARGUMENT 46H 0001H 0014H "LCDcmd" 02H 00H 00H

;;	U0IO = 0; 		// 0 = Transmit mode (initial value)			
CLINEA 0000H 0001H 058DH 0002H 0034H
	rb	0f292h.0

;;	UA0BUF = LCDcmd;	// Load LCDcmd into Buffer...
CLINEA 0000H 0001H 058EH 0002H 002FH
	st	r0,	0f290h

;;	U0EN = 1;		// START COMMUNICATION...		
CLINEA 0000H 0001H 058FH 0002H 0027H
	sb	0f291h.0

;;	while(U0EN != 0)	// In transmit mode, this bit is automatically set to 0 at termination of transmission.
CLINEA 0000H 0000H 0591H 0002H 0069H
_$L103 :
CBLOCK 236 3 1426
CBLOCKEND 236 3 1428
	tb	0f291h.0
	bne	_$L103

;;	QUA0 = 0;		//QUA0 is the request flag for the UART0 interrupt
CLINEA 0000H 0001H 0597H 0002H 003EH
	rb	0f01ch.0
CBLOCKEND 236 2 1432

;;}
CLINEA 0000H 0001H 0598H 0001H 0001H
	rt
CBLOCKEND 236 1 1432
CFUNCTIONEND 236


	rseg $$LCD_Init$main
CFUNCTION 237

_LCD_Init	:
CBLOCK 237 1 1436

;;void LCD_Init(void){
CLINEA 0000H 0001H 059CH 0001H 0014H
;;*****************************************
;;	register/stack information
;;*****************************************
	_i$0	set	-2
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-02
CBLOCK 237 2 1436
CRET 0004H
CLOCAL 43H 0002H 0002H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<200; i++)
CLINEA 0000H 0001H 05A0H 0002H 0017H
	mov	er0,	#0 
	st	er0,	_i$0[fp]
_$L108 :
CBLOCK 237 3 1441

;;		MyData[i] = 0x20;		// Clear Data Array...
CLINEA 0000H 0001H 05A2H 0003H 002BH
	mov	r2,	#020h
	st	r2,	NEAR _MyData[er0]
CBLOCKEND 237 3 1443

;;	for(i = 0; i<200; i++)
CLINEA 0000H 0000H 05A0H 0002H 0017H
	l	er0,	_i$0[fp]
	add	er0,	#1 
	st	er0,	_i$0[fp]
	cmp	r0,	#0c8h
	cmpc	r1,	#00h
	blts	_$L108

;;	sprintf("%u", LCD_Backlight_ON);
CLINEA 0000H 0001H 05AAH 0002H 0021H
	mov	er0,	#17
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S112
	mov	r1,	#BYTE2 OFFSET $$S112
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 05B8H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 05B9H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(MyData, 200, _funcUartFin);
CLINEA 0000H 0001H 05BAH 0002H 002BH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#0c8h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _MyData
	mov	r1,	#BYTE2 OFFSET _MyData
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05BBH 0001H 0001H
	bal	_$L117

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05BBH 0002H 0019H
_$L115 :
CBLOCK 237 4 1467

;;		main_clrWDT();
CLINEA 0000H 0001H 05BCH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 237 4 1469

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05BBH 0001H 0001H
_$L117 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L115
CBLOCKEND 237 2 1470

;;}
CLINEA 0000H 0001H 05BEH 0001H 0001H
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 237 1 1470
CFUNCTIONEND 237

	public _main_clrWDT
	public _main_reqNotHalt
	public _LCD_Init
	public _NOPx
	public _SerialLCDSplash
	public _PWM_B0_ON
	public _PortA_Digital_Inputs
	public _main
	public _MyUART_Send
	public _PortC_Low
	public _ClearSerialLCD
	public _HelloWorld
	public _PortB_Low
	public _MyUART_Receive
	public _PortA_Low
	public _analog_comparator
	public _SendLCDCmd
	public _PinB0_PWM
	__flgUartFin comm data 01h #00h
	__flgI2CFin comm data 01h #00h
	__reqNotHalt comm data 01h #00h
	__flgADCFin comm data 01h #00h
	extrn code near : _uart_PortSet
	extrn code near : _uart_startReceive
	extrn code near : _uart_init
	extrn code near : _i2c_continue
	extrn code near : _irq_di
	extrn code near : _irq_ei
	extrn code near : _irq_setHdr
	extrn code near : _sprintf_nn
	extrn code near : _uart_stop
	extrn code near : _uart_startSend
	extrn code near : _uartSendStr
	extrn code near : _uart_continue
	extrn code near : _tm_init
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

	rseg $$NINITTAB
	DB	"Hello World!  "

	rseg $$TAB_uartSetParam$main
__uartSetParam :
	dw	02580h
	dw	00h
	db	00h
	db	02h
	db	00h
	db	00h
	db	00h
	align

	rseg $$TAB$$S80$main
$$S80 :
	DB	"%f,%f,%f", 00H

	rseg $$TAB$$S97$main
$$S97 :
	DB	"                                ", 00H

	rseg $$TAB$$S98$main
$$S98 :
	DB	"LAPIS Q111 LaPi DEV. DEMO", 00H

	rseg $$TAB$$S112$main
$$S112 :
	DB	"%u", 00H

	rseg $$NINITVAR
_HelloWorld :
	ds	0eh

	rseg $$NVARmain
_Sensor1_Data :
	ds	028h
_Sensor3_Data :
	ds	028h
_MyRx :
	ds	032h
_MyTx :
	ds	032h
_Sensor2_Data :
	ds	028h
_MyData :
	ds	0c8h

	end
