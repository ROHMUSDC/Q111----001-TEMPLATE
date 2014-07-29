;; Compile Options : /TML610111 /MS /near /LE /Ii2c /Iirq /Imain /Itbc /Itimer /Iuart /Icommon /Imath /Istdio /Istdlib /Istring /Iyvals /CT _output\_prn\main.cal /SS 256 /SD /Oa /Ot /W 3 /Zg /Fa_output\_obj\ /Lv /Zs 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610111) 
	model small, near
	$$ExtInt_ISR$main segment code 2h #0h
	$$HALL_Detect$main segment code 2h #0h
	$$Initialization$main segment code 2h #0h
	$$NOPms$main segment code 2h #0h
	$$NOPx$main segment code 2h #0h
	$$PIR_ALARM$main segment code 2h #0h
	$$PIR_Detect$main segment code 2h #0h
	$$PWM_B0_ON$main segment code 2h #0h
	$$PinB0_PWM$main segment code 2h #0h
	$$PortA_Digital_Inputs$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$SerialLCD_Init_and_Clear$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$TAB_uartSetParam$main segment table 2h #0h
	$$TBC_ISR$main segment code 2h #0h
	$$TMR89_ISR$main segment code 2h #0h
	$$TMRAB_ISR$main segment code 2h #0h
	$$TMREF_ISR$main segment code 2h #0h
	$$UART_RX_TEST$main segment code 2h #0h
	$$UART_TX_TEST$main segment code 2h #0h
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
CGLOBAL 01H 03H 0000H "PIR_Detect" 08H 02H 0EDH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "ExtInt_ISR" 08H 02H 0E8H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "TBC_ISR" 08H 02H 0E4H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "NOPms" 08H 02H 0D1H 00H 83H 0eH 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 0CEH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 0DEH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 0DAH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "TMRAB_ISR" 08H 02H 0E6H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOPx" 08H 02H 0D2H 00H 82H 08H 00H 00H 07H
CGLOBAL 01H 03H 0000H "UART_RX_TEST" 08H 02H 0ECH 00H 83H 08H 00H 00H 07H
CGLOBAL 01H 03H 0000H "UART_TX_TEST" 08H 02H 0EBH 00H 83H 20H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PWM_B0_ON" 08H 02H 0D3H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 0CFH 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Digital_Inputs" 08H 02H 0D8H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 0F1H 00H 80H 00H 00H 00H 01H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 0DFH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PIR_ALARM" 08H 02H 0EFH 00H 83H 16H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 0E2H 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 0D0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "SerialLCD_Init_and_Clear" 08H 02H 0EAH 00H 83H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 0D7H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intADC" 08H 02H 0E3H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "HALL_Detect" 08H 02H 0EEH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "TMR89_ISR" 08H 02H 0E5H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 0D6H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "TMREF_ISR" 08H 02H 0E7H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 0D5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "analog_comparator" 08H 02H 0D4H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 0E0H 00H 81H 02H 00H 00H 07H
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
CSGLOBAL 01H 000AH "_uartSetParam" 04H 00H 05H 06H 00H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
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
CFILE 000CH 00000070H "uart\\uart.h"
CFILE 0000H 000005BAH "main\\main.c"

	rseg $$main$main
CFUNCTION 241

_main	:
CBLOCK 241 1 324

;;{
CLINEA 0000H 0001H 0144H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 241 2 324
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
CLINEA 0000H 0001H 014FH 0003H 004EH
	bl	_Initialization

;;		SerialLCD_Init_and_Clear();	// Init And/Or Clear Parallax Serial LCD Display...
CLINEA 0000H 0001H 0151H 0003H 0051H
	bl	_SerialLCD_Init_and_Clear

;;		UART_TX_TEST();				// Test UART TX...
CLINEA 0000H 0001H 0153H 0003H 0027H
	bl	_UART_TX_TEST

;;		NOPms(2000);
CLINEA 0000H 0001H 0155H 0003H 000EH
	mov	r0,	#0d0h
	mov	r1,	#07h
	bl	_NOPms

;;		SerialLCD_Init_and_Clear();	// Init And/Or Clear Parallax Serial LCD Display...
CLINEA 0000H 0001H 0157H 0003H 0051H
	bl	_SerialLCD_Init_and_Clear

;;	Primary_Loop:		
CLINEA 0000H 0001H 015BH 0002H 0010H
CLABEL 001FH "Primary_Loop"
_$L31 :

;;		PIR_Detect();
CLINEA 0000H 0001H 015EH 0003H 000FH
	bl	_PIR_Detect

;;		LED5_pin ^= 1;
CLINEA 0000H 0001H 0160H 0003H 0010H
	tb	0f260h.2
	beq	_$M1
	rb	0f260h.2
	bal	_$M2
_$M1 :
	sb	0f260h.2
_$M2 :

;;		main_clrWDT();
CLINEA 0000H 0001H 0162H 0003H 0010H
	bl	_main_clrWDT

;;	goto Primary_Loop;
CLINEA 0000H 0001H 0164H 0002H 0013H
	bal	_$L31
CBLOCKEND 241 2 359

;;}//end main
CLINEA 0000H 0001H 0167H 0001H 000BH
CBLOCKEND 241 1 359
CFUNCTIONEND 241


	rseg $$main_clrWDT$main
CFUNCTION 206

_main_clrWDT	:
CBLOCK 206 1 385

;;{
CLINEA 0000H 0001H 0181H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 206 2 385

;;		do {
CLINEA 0000H 0001H 0183H 0003H 0006H
_$L35 :
CBLOCK 206 3 387

;;			WDTCON = 0x5Au;
CLINEA 0000H 0001H 0184H 0004H 0012H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 206 3 389

;;		} while (WDP != 1);
CLINEA 0000H 0000H 0185H 0003H 0015H
	tb	0f00eh.0
	beq	_$L35

;;		WDTCON = 0xA5u;
CLINEA 0000H 0001H 0186H 0003H 0011H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 206 2 393

;;}
CLINEA 0000H 0001H 0189H 0001H 0001H
	rt
CBLOCKEND 206 1 393
CFUNCTIONEND 206


	rseg $$Initialization$main
CFUNCTION 207

_Initialization	:
CBLOCK 207 1 398

;;static void Initialization(void){
CLINEA 0000H 0001H 018EH 0001H 0021H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 207 2 398
CRET 0000H

;;			DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 
CLINEA 0000H 0001H 0192H 0004H 0037H
	sb	0f02ah.0

;;			DUA0  = 0; // 0=> Enables the operation of UART0 
CLINEA 0000H 0001H 0193H 0004H 0034H
	rb	0f02ah.2

;;			DUA1  = 1; // 0=> Enables Uart1 
CLINEA 0000H 0001H 0194H 0004H 0023H
	sb	0f02ah.3

;;			DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) 
CLINEA 0000H 0001H 0195H 0004H 0037H
	sb	0f02ah.6

;;			DI2C0 = 0; // 0=> Enables I2C bus Interface (Master)	
CLINEA 0000H 0001H 0196H 0004H 0038H
	rb	0f02ah.7

;;		BLKCON4 = 0x00; // SA-ADC: 0=> Enables ; 0xFF=> Disables
CLINEA 0000H 0001H 0198H 0003H 003AH
	mov	r0,	#00h
	st	r0,	0f02ch

;;		BLKCON6 = 0x00; // Timers 8, 9, A, E, F : 0=> Enables ; 0xFF=> Disables
CLINEA 0000H 0001H 0199H 0003H 0049H
	st	r0,	0f02eh

;;		BLKCON7 = 0x00; // PWM (PWMC, PWMD, PWME, PWMF : 0=> Enables ; 0xFF=> Disables
CLINEA 0000H 0001H 019AH 0003H 0050H
	st	r0,	0f02fh

;;		PortA_Low();	//Initialize all 3 Ports of Q111 Port A to GPIO-Low
CLINEA 0000H 0001H 019DH 0003H 0042H
	bl	_PortA_Low

;;		PortB_Low();	//Initialize all 8 Ports of Q111 Port B to GPIO-Low
CLINEA 0000H 0001H 019EH 0003H 0042H
	bl	_PortB_Low

;;		PortC_Low();	//Initialize all 4 Ports of Q111 Port C to GPIO-Low
CLINEA 0000H 0001H 019FH 0003H 0042H
	bl	_PortC_Low

;;     	SetOSC(); 	//8MHz
CLINEA 0000H 0001H 01A4H 0007H 0017H
	bl	_SetOSC

;;		irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 0208H 0003H 0021H
	bl	_irq_di

;;				IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
CLINEA 0000H 0001H 0224H 0005H 0036H
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
CLINEA 0000H 0001H 0228H 0005H 003EH
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
CLINEA 0000H 0001H 022BH 0005H 003FH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0fh
	bl	_irq_setHdr

;;					EUA0 = 1; 	// EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 022CH 0006H 004EH
	sb	0f014h.0

;;					QUA0 = 0;	// Request Flag for the UART_0 	INTERRUPT (1=REQUEST, 0-NO-REQUEST)
CLINEA 0000H 0001H 022DH 0006H 0052H
	rb	0f01ch.0

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 0231H 0005H 003FH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;					EI2CM = 1; // EI2CM is the enable flag for the I2C MASTER interrupt (1=ENABLED)
CLINEA 0000H 0001H 0232H 0006H 0054H
	sb	0f012h.7

;;					QI2CM = 0;
CLINEA 0000H 0001H 0233H 0006H 000FH
	rb	0f01ah.7

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_SADINT, _intADC );
CLINEA 0000H 0001H 0237H 0005H 003EH
	mov	r2,	#BYTE1 OFFSET __intADC
	mov	r3,	#BYTE2 OFFSET __intADC
	mov	r0,	#0ah
	bl	_irq_setHdr

;;					ESAD = 1; // ESAD is the enable flag for the ADC interrupt (1=ENABLED)
CLINEA 0000H 0001H 0238H 0006H 004BH
	sb	0f012h.2

;;					QSAD = 0; // Request Flag for the ADC INTERRUPT (1=REQUEST, 0-NO-REQUEST)
CLINEA 0000H 0001H 0239H 0006H 004EH
	rb	0f01ah.2

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_T2HINT, TBC_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 023DH 0005H 005EH
	mov	r2,	#BYTE1 OFFSET _TBC_ISR
	mov	r3,	#BYTE2 OFFSET _TBC_ISR
	mov	r0,	#01eh
	bl	_irq_setHdr

;;					E2H = 1;	  // Enable x Hz TBC Interrupt (1=ENABLED)
CLINEA 0000H 0001H 023EH 0006H 0038H
	sb	0f017h.3

;;					Q2H = 0;	  // Request flag for the TIME BASE COUNTER 2Hz Interrupt
CLINEA 0000H 0001H 023FH 0006H 0047H
	rb	0f01fh.3

;;				(void)tb_setHtbdiv( (unsigned char)TB_HTD_1_1 ); //Set the ratio of dividing frequency of the time base counter
CLINEA 0000H 0000H 0041H 0002H 000DH
	mov	r0,	#0fh
	st	r0,	0f00bh

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_TM9INT, TMR89_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 0246H 0005H 0060H
	mov	r2,	#BYTE1 OFFSET _TMR89_ISR
	mov	r3,	#BYTE2 OFFSET _TMR89_ISR
	mov	r0,	#0eh
	bl	_irq_setHdr

;;					ETM8 = 1;	  	// Enable timer 8 Interrupt (1=ENABLED
CLINEA 0000H 0001H 0247H 0006H 0038H
	sb	0f013h.2

;;					ETM9 = 1;	  	// Enable timer 9 Interrupt (1=ENABLED)
CLINEA 0000H 0001H 0248H 0006H 0039H
	sb	0f013h.3

;;					QTM8 = 0;		// Timer 8 IRQ request flag; 1=REQUEST
CLINEA 0000H 0001H 0249H 0006H 0036H
	rb	0f01bh.2

;;					QTM9 = 0;		// Timer 9 IRQ request flag; 1=REQUEST
CLINEA 0000H 0001H 024AH 0006H 0036H
	rb	0f01bh.3

;;					T8CS0 = 1;		// 111 => Select PLLCLK
CLINEA 0000H 0001H 024BH 0006H 0028H
	sb	0f8e2h.0

;;					T8CS1 = 1;
CLINEA 0000H 0001H 024CH 0006H 000FH
	sb	0f8e2h.1

;;					T8CS2 = 1;
CLINEA 0000H 0001H 024DH 0006H 000FH
	sb	0f8e2h.2

;;					T9CS0 = 1;		// 111 => Select PLLCLK
CLINEA 0000H 0001H 024EH 0006H 0028H
	sb	0f8e6h.0

;;					T9CS1 = 1;
CLINEA 0000H 0001H 024FH 0006H 000FH
	sb	0f8e6h.1

;;					T9CS2 = 1; 
CLINEA 0000H 0001H 0250H 0006H 0010H
	sb	0f8e6h.2

;;					tm_init(TM_CH_NO_89);
CLINEA 0000H 0001H 0251H 0006H 001AH
	mov	r0,	#00h
	bl	_tm_init

;;					tm_set89Data(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
CLINEA 0000H 0000H 0150H 0002H 0025H
	mov	r0,	#00h
	st	r0,	0f8e0h

;;					tm_set89Data(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
CLINEA 0000H 0000H 0151H 0002H 0023H
	mov	r0,	#020h
	st	r0,	0f8e4h

;;					tm_set89Source(TM_CS_HTBCLK);
CLINEA 0000H 0000H 0186H 0002H 0015H
	sb	0f8e2h.0

;;					tm_set89Source(TM_CS_HTBCLK);
CLINEA 0000H 0000H 0187H 0002H 001AH
	rb	0f8e2h.1

;;					tm_start89();
CLINEA 0000H 0001H 00CAH 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e1h

;;					tm_start89();
CLINEA 0000H 0000H 00CBH 0002H 000BH
	sb	0f8e3h.0

;;					T89M16 = 1;		//1 => sets 16-bit timer mode
CLINEA 0000H 0001H 0255H 0006H 002FH
	sb	0f8e2h.5

;;					HTD3 = 1;	//High-Speed Time Base Counter Divide Register: 1111 = 9182kHz
CLINEA 0000H 0001H 0257H 0006H 004DH
	sb	0f00bh.3

;;					HTD2 = 1;
CLINEA 0000H 0001H 0258H 0006H 000EH
	sb	0f00bh.2

;;					HTD1 = 1;
CLINEA 0000H 0001H 0259H 0006H 000EH
	sb	0f00bh.1

;;					HTD0 = 1; 
CLINEA 0000H 0001H 025AH 0006H 000FH
	sb	0f00bh.0

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_TMBINT, TMRAB_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 0260H 0005H 0060H
	mov	r2,	#BYTE1 OFFSET _TMRAB_ISR
	mov	r3,	#BYTE2 OFFSET _TMRAB_ISR
	mov	r0,	#016h
	bl	_irq_setHdr

;;					ETMA = 1;	  	// Enable timer 8 Interrupt (1=ENABLED
CLINEA 0000H 0001H 0261H 0006H 0038H
	sb	0f015h.6

;;					ETMB = 1;	  	// Enable timer 9 Interrupt (1=ENABLED)
CLINEA 0000H 0001H 0262H 0006H 0039H
	sb	0f015h.7

;;					QTMA = 0;		// timer 8 IRQ request flag; 1=REQUEST
CLINEA 0000H 0001H 0263H 0006H 0036H
	rb	0f01dh.6

;;					QTMB = 0;		// timer 9 IRQ request flag; 1=REQUEST
CLINEA 0000H 0001H 0264H 0006H 0036H
	rb	0f01dh.7

;;					TACS0 = 1;		// 111 => Select PLLCLK
CLINEA 0000H 0001H 0265H 0006H 0028H
	sb	0f8eah.0

;;					TACS1 = 1;
CLINEA 0000H 0001H 0266H 0006H 000FH
	sb	0f8eah.1

;;					TACS2 = 1;
CLINEA 0000H 0001H 0267H 0006H 000FH
	sb	0f8eah.2

;;					TBCS0 = 1;		// 111 => Select PLLCLK
CLINEA 0000H 0001H 0268H 0006H 0028H
	sb	0f8eeh.0

;;					TBCS1 = 1;
CLINEA 0000H 0001H 0269H 0006H 000FH
	sb	0f8eeh.1

;;					TBCS2 = 1; 
CLINEA 0000H 0001H 026AH 0006H 0010H
	sb	0f8eeh.2

;;					tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 026BH 0006H 001AH
	mov	r0,	#01h
	bl	_tm_init

;;					tm_setABData(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
CLINEA 0000H 0000H 0157H 0002H 0025H
	mov	r0,	#00h
	st	r0,	0f8e8h

;;					tm_setABData(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
CLINEA 0000H 0000H 0158H 0002H 0023H
	mov	r0,	#020h
	st	r0,	0f8ech

;;					tm_setABSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 018DH 0002H 0015H
	sb	0f8eah.0

;;					tm_setABSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 018EH 0002H 001AH
	rb	0f8eah.1

;;					tm_startAB();
CLINEA 0000H 0001H 00D1H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e9h

;;					tm_startAB();
CLINEA 0000H 0000H 00D2H 0002H 000BH
	sb	0f8ebh.0

;;					TABM16 = 1;		//1 => sets 16-bit timer mode
CLINEA 0000H 0001H 026FH 0006H 002FH
	sb	0f8eah.5

;;					HTD3 = 1;	//High-Speed Time Base Counter Divide Register: 1111 = 9182kHz
CLINEA 0000H 0001H 0271H 0006H 004DH
	sb	0f00bh.3

;;					HTD2 = 1;
CLINEA 0000H 0001H 0272H 0006H 000EH
	sb	0f00bh.2

;;					HTD1 = 1;
CLINEA 0000H 0001H 0273H 0006H 000EH
	sb	0f00bh.1

;;					HTD0 = 1; 
CLINEA 0000H 0001H 0274H 0006H 000FH
	sb	0f00bh.0

;;				(void)irq_setHdr( (unsigned char)IRQ_NO_TMFINT, TMREF_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 0279H 0005H 0060H
	mov	r2,	#BYTE1 OFFSET _TMREF_ISR
	mov	r3,	#BYTE2 OFFSET _TMREF_ISR
	mov	r0,	#014h
	bl	_irq_setHdr

;;					ETME = 1;	  	// Enable timer E Interrupt (1=ENABLED
CLINEA 0000H 0001H 027AH 0006H 0038H
	sb	0f015h.4

;;					ETMF = 1;	  	// Enable timer F Interrupt (1=ENABLED)
CLINEA 0000H 0001H 027BH 0006H 0039H
	sb	0f015h.5

;;					QTME = 0;		// Timer E IRQ request flag; 1=REQUEST
CLINEA 0000H 0001H 027CH 0006H 0036H
	rb	0f01dh.4

;;					QTMF = 0;		// Timer F IRQ request flag; 1=REQUEST
CLINEA 0000H 0001H 027DH 0006H 0036H
	rb	0f01dh.5

;;					TECS0 = 1;		// 111 => Select PLLCLK
CLINEA 0000H 0001H 027EH 0006H 0028H
	sb	0f362h.0

;;					TECS1 = 1;
CLINEA 0000H 0001H 027FH 0006H 000FH
	sb	0f362h.1

;;					TECS2 = 1;
CLINEA 0000H 0001H 0280H 0006H 000FH
	sb	0f362h.3

;;					TFCS0 = 1;		// 111 => Select PLLCLK
CLINEA 0000H 0001H 0281H 0006H 0028H
	sb	0f36ah.0

;;					TFCS1 = 1;
CLINEA 0000H 0001H 0282H 0006H 000FH
	sb	0f36ah.1

;;					TFCS2 = 1;
CLINEA 0000H 0001H 0283H 0006H 000FH
	sb	0f36ah.3

;;					tm_init(TM_CH_NO_EF);
CLINEA 0000H 0001H 0284H 0006H 001AH
	mov	r0,	#02h
	bl	_tm_init

;;					tm_setEFData(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
CLINEA 0000H 0000H 015EH 0002H 0025H
	mov	r0,	#00h
	st	r0,	0f360h

;;					tm_setEFData(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
CLINEA 0000H 0000H 015FH 0002H 0023H
	mov	r0,	#020h
	st	r0,	0f368h

;;					tm_setEFSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 0194H 0002H 0015H
	sb	0f362h.0

;;					tm_setEFSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 0195H 0002H 001AH
	rb	0f362h.1

;;					tm_startEF();
CLINEA 0000H 0001H 00D8H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f361h

;;					tm_startEF();
CLINEA 0000H 0000H 00D9H 0002H 000BH
	sb	0f363h.0

;;					TEFM16 = 1;		//1 => sets 16-bit timer mode
CLINEA 0000H 0001H 0288H 0006H 002FH
	sb	0f362h.2

;;					HTD3 = 1;	//High-Speed Time Base Counter Divide Register: 1111 = 9182kHz
CLINEA 0000H 0001H 028AH 0006H 004DH
	sb	0f00bh.3

;;					HTD2 = 1;
CLINEA 0000H 0001H 028BH 0006H 000EH
	sb	0f00bh.2

;;					HTD1 = 1;
CLINEA 0000H 0001H 028CH 0006H 000EH
	sb	0f00bh.1

;;					HTD0 = 1; 
CLINEA 0000H 0001H 028DH 0006H 000FH
	sb	0f00bh.0

;;					PB3DIR = 1;
CLINEA 0000H 0001H 0291H 0006H 0010H
	sb	0f259h.3

;;					PB3C1 = 0;
CLINEA 0000H 0001H 0292H 0006H 000FH
	rb	0f25bh.3

;;					PB3C0 = 0;
CLINEA 0000H 0001H 0293H 0006H 000FH
	rb	0f25ah.3

;;					PB3MD1 = 0;
CLINEA 0000H 0001H 0294H 0006H 0010H
	rb	0f25dh.3

;;					PB3MD0 = 0;
CLINEA 0000H 0001H 0295H 0006H 0010H
	rb	0f25ch.3

;;					PB3E1 = 1;
CLINEA 0000H 0001H 0296H 0006H 000FH
	sb	0f025h.7

;;					PB3E0 = 0;		//PBnE0-1 are used to choose the Rising-Edge Mode for this interrupt
CLINEA 0000H 0001H 0297H 0006H 0055H
	rb	0f024h.7

;;					PB3SM = 0;
CLINEA 0000H 0001H 0298H 0006H 000FH
	rb	0f026h.7

;;			(void)irq_setHdr( (unsigned char)IRQ_NO_PB3INT, ExtInt_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 029CH 0004H 0060H
	mov	r2,	#BYTE1 OFFSET _ExtInt_ISR
	mov	r3,	#BYTE2 OFFSET _ExtInt_ISR
	mov	r0,	#08h
	bl	_irq_setHdr

;;					EPB3 = 0;	// 1=> Enables Interrupt
CLINEA 0000H 0001H 029DH 0006H 0027H
	rb	0f011h.7

;;					QPB3 = 0;	// EXT IRQ request flag; 1=REQUEST	
CLINEA 0000H 0001H 029EH 0006H 0032H
	rb	0f019h.7

;;	irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 02A2H 0002H 001FH
	bl	_irq_ei

;;		WDTMOD = 0x03; 	// 0x03=overflow 8sec...
CLINEA 0000H 0001H 02A6H 0003H 002AH
	mov	r0,	#03h
	st	r0,	0f00fh

;;		main_clrWDT(); 	// Clear WDT   
CLINEA 0000H 0001H 02A7H 0003H 0021H
	bl	_main_clrWDT

;;				 &_uartSetParam );						// Parameters from Structure    
CLINEA 0000H 0001H 02B2H 0006H 003CH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#00h
	mov	r3,	#020h
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;		uart_PortSet();									// Set UART Port Pins
CLINEA 0000H 0001H 02B3H 0003H 002FH
	bl	_uart_PortSet

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 02B4H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 02B5H 0003H 000EH
	bl	_uart_stop
CBLOCKEND 207 2 707

;;}//End Initialization
CLINEA 0000H 0001H 02C3H 0001H 0015H
	pop	pc
CBLOCKEND 207 1 707
CFUNCTIONEND 207


	rseg $$SetOSC$main
CFUNCTION 208

_SetOSC	:
CBLOCK 208 1 714

;;static void SetOSC(void){
CLINEA 0000H 0001H 02CAH 0001H 0019H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 208 2 714

;;		SYSC0  = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 02CEH 0003H 004CH
	rb	0f002h.0

;;		SYSC1  = 0;			//...
CLINEA 0000H 0001H 02CFH 0003H 0015H
	rb	0f002h.1

;;		OSCM1  = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 02D0H 0003H 0036H
	sb	0f002h.3

;;		OSCM0  = 0;			//...
CLINEA 0000H 0001H 02D1H 0003H 0015H
	rb	0f002h.2

;;		ENOSC  = 1;			// 1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 02D4H 0003H 0034H
	sb	0f003h.1

;;		SYSCLK = 1;			// Select System Clock: 1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 02D5H 0003H 0039H
	sb	0f003h.0

;;		LPLL   = 1;			// 1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 02D6H 0003H 0049H
	sb	0f003h.7

;;	__EI();					//INT enable
CLINEA 0000H 0001H 02D8H 0002H 0019H
	ei
CBLOCKEND 208 2 729

;;}
CLINEA 0000H 0001H 02D9H 0001H 0001H
	rt
CBLOCKEND 208 1 729
CFUNCTIONEND 208


	rseg $$analog_comparator$main
CFUNCTION 212

_analog_comparator	:
CBLOCK 212 1 736

;;void analog_comparator(void){
CLINEA 0000H 0001H 02E0H 0001H 001DH
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 212 2 736

;;	CMP0EN  = 0x01; 	// Comparator ON...
CLINEA 0000H 0001H 02F6H 0002H 0025H
	sb	0f950h.0

;;	CMP0E1  = 0x00; 	// No Interupt...
CLINEA 0000H 0001H 02F7H 0002H 0023H
	rb	0f951h.1

;;	CMP0E0  = 0x00;
CLINEA 0000H 0001H 02F8H 0002H 0010H
	rb	0f951h.0

;;	CMP0SM1 = 0x00; 	// Detect without Sampling... 
CLINEA 0000H 0001H 02F9H 0002H 0030H
	rb	0f951h.3

;;	CMP0RFS = 0x01; 	// Differential Input on B5
CLINEA 0000H 0001H 02FAH 0002H 002DH
	sb	0f951h.4

;;	CMP0EN  = 0x00;
CLINEA 0000H 0001H 02FDH 0002H 0010H
	rb	0f950h.0
CBLOCKEND 212 2 768

;;}
CLINEA 0000H 0001H 0300H 0001H 0001H
	rt
CBLOCKEND 212 1 768
CFUNCTIONEND 212


	rseg $$PortA_Low$main
CFUNCTION 213

_PortA_Low	:
CBLOCK 213 1 776

;;void PortA_Low(void){
CLINEA 0000H 0001H 0308H 0001H 0015H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 213 2 776

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 0312H 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 0313H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 0314H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0317H 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 0318H 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0319H 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 031AH 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 031BH 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 031CH 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 031FH 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0320H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0321H 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0322H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0323H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0324H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 0327H 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 0328H 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 0329H 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 032BH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 213 2 813
CLINEA 0000H 0001H 032DH 0001H 0001H
CBLOCKEND 213 1 813
CFUNCTIONEND 213


	rseg $$PortB_Low$main
CFUNCTION 214

_PortB_Low	:
CBLOCK 214 1 819

;;void PortB_Low(void){
CLINEA 0000H 0001H 0333H 0001H 0015H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 214 2 819

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 033DH 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 033EH 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 033FH 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 0340H 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 0341H 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 0342H 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0343H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0344H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0347H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0348H 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0349H 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 034AH 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 034BH 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 034CH 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 034DH 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 034EH 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 034FH 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 0350H 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0351H 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 0352H 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 0353H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 0354H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 0355H 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 0356H 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0359H 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 035AH 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 035BH 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 035CH 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 035DH 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 035EH 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 035FH 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 0360H 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0361H 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 0362H 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0363H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 0364H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0365H 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 0366H 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0367H 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 0368H 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 036BH 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 036CH 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 036DH 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 036EH 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 036FH 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 0370H 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 0371H 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 0372H 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0374H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 214 2 886
CLINEA 0000H 0001H 0376H 0001H 0001H
CBLOCKEND 214 1 886
CFUNCTIONEND 214


	rseg $$PortC_Low$main
CFUNCTION 215

_PortC_Low	:
CBLOCK 215 1 892

;;void PortC_Low(void){
CLINEA 0000H 0001H 037CH 0001H 0015H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 215 2 892

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 0386H 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 0387H 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 0388H 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 0389H 0002H 0031H
	rb	0f261h.3

;;	PC0C1  = 1;		// PortC Bit0 set to CMOS Output...
CLINEA 0000H 0001H 038DH 0002H 0031H
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 038EH 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to CMOS Output...
CLINEA 0000H 0001H 038FH 0002H 0031H
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 0390H 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0391H 0002H 0031H
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 0392H 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0393H 0002H 0031H
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 0394H 0002H 000EH
	sb	0f262h.3

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0397H 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 0398H 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0399H 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 039AH 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 039BH 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 039CH 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 039DH 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 039EH 0002H 000EH
	rb	0f264h.3

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 03A1H 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 03A2H 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 03A3H 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 03A4H 0002H 0021H
	rb	0f260h.3

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 03A6H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 215 2 936
CLINEA 0000H 0001H 03A8H 0001H 0001H
CBLOCKEND 215 1 936
CFUNCTIONEND 215


	rseg $$PortA_Digital_Inputs$main
CFUNCTION 216

_PortA_Digital_Inputs	:
CBLOCK 216 1 942

;;void PortA_Digital_Inputs(void){
CLINEA 0000H 0001H 03AEH 0001H 0020H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 216 2 942

;;	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
CLINEA 0000H 0001H 03B8H 0002H 0030H
	sb	0f251h.0

;;	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
CLINEA 0000H 0001H 03B9H 0002H 0030H
	sb	0f251h.1

;;	PA2DIR = 1;		// PortA Bit2 set to Input Mode...
CLINEA 0000H 0001H 03BAH 0002H 0030H
	sb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 03BEH 0002H 0041H
	sb	0f253h.0

;;	PA0C0  = 0;		
CLINEA 0000H 0001H 03BFH 0002H 000EH
	rb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 03C0H 0002H 0041H
	sb	0f253h.1

;;	PA1C0  = 0;	
CLINEA 0000H 0001H 03C1H 0002H 000DH
	rb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 03C2H 0002H 0041H
	sb	0f253h.2

;;	PA2C0  = 0;	
CLINEA 0000H 0001H 03C3H 0002H 000DH
	rb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
CLINEA 0000H 0001H 03C6H 0002H 0039H
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 03C7H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
CLINEA 0000H 0001H 03C8H 0002H 0039H
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 03C9H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
CLINEA 0000H 0001H 03CAH 0002H 0039H
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 03CBH 0002H 000EH
	rb	0f254h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 03CDH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 216 2 975
CLINEA 0000H 0001H 03CFH 0001H 0001H
CBLOCKEND 216 1 975
CFUNCTIONEND 216


	rseg $$PWM_B0_ON$main
CFUNCTION 211

_PWM_B0_ON	:
CBLOCK 211 1 981

;;void PWM_B0_ON(int myPeriod, int myDutyCycle){
CLINEA 0000H 0001H 03D5H 0001H 002EH
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 211 2 981
CARGUMENT 47H 0002H 0024H "myPeriod" 02H 00H 01H
CARGUMENT 47H 0002H 0025H "myDutyCycle" 02H 00H 01H

;;			PWCP = myPeriod;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 03D9H 0004H 0084H
	st	er0,	0f910h

;;			PWCD =    myDutyCycle;		//12    ~  0.25% duty cycle @ 160Hz
CLINEA 0000H 0001H 03E1H 0004H 003EH
	st	er2,	0f912h

;;		PCRUN = 1;		// TURN PWM ON
CLINEA 0000H 0001H 03E3H 0003H 001CH
	sb	0f917h.0
CBLOCKEND 211 2 997

;;}//END PWM_B0_ON Function
CLINEA 0000H 0001H 03E5H 0001H 0019H
	rt
CBLOCKEND 211 1 997
CFUNCTIONEND 211


	rseg $$PinB0_PWM$main
CFUNCTION 217

_PinB0_PWM	:
CBLOCK 217 1 1005

;;void PinB0_PWM(void){
CLINEA 0000H 0001H 03EDH 0001H 0015H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 217 2 1005

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 03F9H 0002H 0031H
	rb	0f259h.0

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 03FCH 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 03FDH 0002H 000EH
	sb	0f25ah.0

;;	PB0MD1  = 0;	// PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0400H 0002H 0036H
	rb	0f25dh.0

;;	PB0MD0  = 1;	
CLINEA 0000H 0001H 0401H 0002H 000EH
	sb	0f25ch.0

;;	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0405H 0002H 0023H
	rb	0f916h.1

;;	PCCS0 = 1;
CLINEA 0000H 0001H 0406H 0002H 000BH
	sb	0f916h.0

;;	PWCP = 4250;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0409H 0002H 007EH
	mov	r0,	#09ah
	mov	r1,	#010h
	st	er0,	0f910h

;;	PWCD =    12;		//12    ~  0.25% duty cycle @ 160Hz
CLINEA 0000H 0001H 0413H 0002H 0033H
	mov	er0,	#12
	st	er0,	0f912h

;;	PCRUN = 0;		// OFF to start
CLINEA 0000H 0001H 0415H 0002H 001CH
	rb	0f917h.0
CBLOCKEND 217 2 1047

;;}
CLINEA 0000H 0001H 0417H 0001H 0001H
	rt
CBLOCKEND 217 1 1047
CFUNCTIONEND 217


	rseg $$NOPms$main
CFUNCTION 209

_NOPms	:
CBLOCK 209 1 1070

;;void NOPms( unsigned int ms ){ 
CLINEA 0000H 0001H 042EH 0001H 001FH
;;*****************************************
;;	register/stack information
;;*****************************************
	_TempSec$4	set	-2
	_TimeFlag$2	set	-3
	_timerThres$0	set	-6
	_timer$6	set	-8
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-08
	push	er8
	mov	er8,	er0
CBLOCK 209 2 1070
CRET 000CH
CARGUMENT 46H 0002H 0028H "ms" 02H 00H 01H
CLOCAL 42H 0002H 0006H 0002H "timerThres" 02H 00H 01H
CLOCAL 42H 0001H 0003H 0002H "TimeFlag" 02H 00H 00H
CLOCAL 42H 0002H 0002H 0002H "TempSec" 02H 00H 01H
CLOCAL 42H 0002H 0008H 0002H "timer" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "timertest" 02H 00H 01H

;;		TempSec = ms;
CLINEA 0000H 0001H 0435H 0003H 000FH
	st	er0,	_TempSec$4[fp]

;;		TimeFlag = 0;
CLINEA 0000H 0001H 0436H 0003H 000FH
	mov	r0,	#00h
	st	r0,	_TimeFlag$2[fp]

;;		tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 0438H 0003H 0017H
	mov	r0,	#01h
	bl	_tm_init

;;		tm_setABSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 018DH 0002H 0015H
	sb	0f8eah.0

;;		tm_setABSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 018EH 0002H 001AH
	rb	0f8eah.1

;;		tm_setABData(0xffff);
CLINEA 0000H 0000H 0157H 0002H 0025H
	mov	r0,	#0ffh
	st	r0,	0f8e8h

;;		tm_setABData(0xffff);
CLINEA 0000H 0000H 0158H 0002H 0023H
	st	r0,	0f8ech

;;		if(ms < 128){
CLINEA 0000H 0001H 043CH 0003H 000FH
	mov	er0,	er8
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bge	_$L47
CBLOCK 209 3 1084

;;			timerThres = 0x1FF * ms;
CLINEA 0000H 0001H 043DH 0004H 001BH
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r8
	subc	r1,	r9
	st	er0,	_timerThres$0[fp]

;;			TimeFlag = 0;
CLINEA 0000H 0001H 043EH 0004H 0010H
	mov	r0,	#00h
	st	r0,	_TimeFlag$2[fp]
CBLOCKEND 209 3 1087

;;		}
CLINEA 0000H 0000H 043FH 0003H 0003H
_$L47 :

;;		if(ms == 128){
CLINEA 0000H 0001H 0440H 0003H 0010H
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bne	_$L49
CBLOCK 209 4 1088

;;			timerThres = 0xFFFF;
CLINEA 0000H 0001H 0441H 0004H 0017H
	mov	er0,	#-1
	st	er0,	_timerThres$0[fp]

;;			TimeFlag = 0;
CLINEA 0000H 0001H 0442H 0004H 0010H
	mov	r0,	#00h
	st	r0,	_TimeFlag$2[fp]
CBLOCKEND 209 4 1091

;;		}
CLINEA 0000H 0000H 0443H 0003H 0003H
_$L49 :

;;		if(ms > 128){
CLINEA 0000H 0001H 0444H 0003H 000FH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	ble	_$L59
CBLOCK 209 5 1092

;;			while(TempSec > 128){
CLINEA 0000H 0000H 0445H 0001H 000EH
	bal	_$L69

;;			while(TempSec > 128){
CLINEA 0000H 0000H 0445H 0004H 0018H
_$L55 :
CBLOCK 209 6 1093

;;				TempSec -= 128;
CLINEA 0000H 0001H 0446H 0005H 0013H
	add	r0,	#080h
	addc	r1,	#0ffh
	st	er0,	_TempSec$4[fp]

;;				TimeFlag++;
CLINEA 0000H 0000H 0447H 0005H 000FH
	lea	_TimeFlag$2[fp]
	inc	[ea]
CBLOCKEND 209 6 1096

;;			while(TempSec > 128){
CLINEA 0000H 0000H 0445H 0001H 000EH
_$L69 :
	l	er0,	_TempSec$4[fp]
	cmp	r0,	#080h
	cmpc	r1,	#00h
	bgt	_$L55

;;			if(TempSec != 0){
CLINEA 0000H 0001H 0449H 0004H 0014H
	mov	er0,	er0
	beq	_$L57
CBLOCK 209 7 1097

;;				timerThres = 0x1FF * TempSec;
CLINEA 0000H 0001H 044AH 0005H 0021H
	mov	er2,	er0
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	_timerThres$0[fp]
CBLOCKEND 209 7 1099

;;			else{
CLINEA 0000H 0001H 044CH 0004H 0008H
	bal	_$L59
_$L57 :
CBLOCK 209 8 1100

;;				timerThres = 0xFFFF;
CLINEA 0000H 0001H 044DH 0005H 0018H
	mov	er0,	#-1
	st	er0,	_timerThres$0[fp]

;;				TimeFlag--;
CLINEA 0000H 0000H 044EH 0005H 000FH
	lea	_TimeFlag$2[fp]
	dec	[ea]
CBLOCKEND 209 8 1103

;;			}
CLINEA 0000H 0000H 044FH 0004H 0004H
_$L59 :
CBLOCKEND 209 5 1104

;;		main_clrWDT();	
CLINEA 0000H 0001H 0453H 0003H 0011H
	bl	_main_clrWDT

;;		tm_startAB();	//using LSCLK, the maximum delay time we have is ~2 secs
CLINEA 0000H 0001H 00D1H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e9h

;;		tm_startAB();	//using LSCLK, the maximum delay time we have is ~2 secs
CLINEA 0000H 0000H 00D2H 0002H 000BH
	sb	0f8ebh.0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0120H 0002H 001BH
	l	r0,	0f8e9h
	mov	r1,	#00h
	mov	er2,	er0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0121H 0002H 0014H
	l	r0,	0f8edh
	or	r3,	r0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0122H 0002H 000CH
	mov	er0,	er2

;;		while(timer < timerThres){
CLINEA 0000H 0001H 0456H 0003H 001CH
	bal	_$L62
_$L64 :
CBLOCK 209 9 1110

;;			timer = tm_getABCounter();
CLINEA 0000H 0000H 0120H 0002H 001BH
	l	r0,	0f8e9h
	mov	r1,	#00h
	mov	er2,	er0

;;			timer = tm_getABCounter();
CLINEA 0000H 0000H 0121H 0002H 0014H
	l	r0,	0f8edh
	or	r3,	r0

;;			timer = tm_getABCounter();
CLINEA 0000H 0000H 0122H 0002H 000CH
	mov	er0,	er2

;;			timer = tm_getABCounter();
CLINEA 0000H 0000H 0457H 0004H 001DH
CBLOCKEND 209 9 1113

;;		}
CLINEA 0000H 0000H 0459H 0003H 0003H
_$L62 :
	st	er0,	_timer$6[fp]

;;		while(timer < timerThres){
CLINEA 0000H 0000H 0456H 0000H 0000H
	l	er2,	_timerThres$0[fp]
	cmp	er0,	er2
	blt	_$L64

;;		if(TimeFlag !=0){
CLINEA 0000H 0001H 045AH 0003H 0013H
	l	r0,	_TimeFlag$2[fp]
	beq	_$L67

;;			tm_stopAB();
CLINEA 0000H 0001H 0105H 0002H 000BH
	rb	0f8ebh.0

;;			TimeFlag--;
CLINEA 0000H 0000H 045CH 0004H 000EH
	add	r0,	#0ffh
	st	r0,	_TimeFlag$2[fp]

;;			timerThres = 0xFFFF;
CLINEA 0000H 0001H 045DH 0004H 0017H
	mov	er0,	#-1
	st	er0,	_timerThres$0[fp]

;;			goto TimerRestart;
CLINEA 0000H 0001H 045EH 0004H 0015H
	bal	_$L59

;;		}
CLINEA 0000H 0000H 045FH 0003H 0003H
_$L67 :
CBLOCKEND 209 2 1120

;;} //End NOPms 
CLINEA 0000H 0001H 0460H 0001H 000EH
	pop	er8
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 209 1 1120
CFUNCTIONEND 209


	rseg $$_funcUartFin$main
CFUNCTION 222

__funcUartFin	:
CBLOCK 222 1 1132

;;{
CLINEA 0000H 0001H 046CH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 222 2 1132
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();						// Function in UART.c: process to continue send & receive...
CLINEA 0000H 0001H 046DH 0002H 0053H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 046EH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin

;;	main_reqNotHalt();						// uncommented 5/2/2013
CLINEA 0000H 0001H 046FH 0002H 0030H
	bl	_main_reqNotHalt
CBLOCKEND 222 2 1136

;;}
CLINEA 0000H 0001H 0470H 0001H 0001H
	pop	pc
CBLOCKEND 222 1 1136
CFUNCTIONEND 222


	rseg $$_funcI2CFin$main
CFUNCTION 224

__funcI2CFin	:
CBLOCK 224 1 1147

;;{
CLINEA 0000H 0001H 047BH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 224 2 1147
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();							// Function in UART.c: process to continue send & receive...
CLINEA 0000H 0001H 047CH 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 047DH 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;	main_reqNotHalt();						// uncommented 5/2/2013
CLINEA 0000H 0001H 047EH 0002H 0030H
	bl	_main_reqNotHalt
CBLOCKEND 224 2 1151

;;}
CLINEA 0000H 0001H 047FH 0001H 0001H
	pop	pc
CBLOCKEND 224 1 1151
CFUNCTIONEND 224


	rseg $$_intI2c$main
CFUNCTION 226

__intI2c	:
CBLOCK 226 1 1161

;;{
CLINEA 0000H 0001H 0489H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 226 2 1161
CRET 0000H

;;	(void)i2c_continue();
CLINEA 0000H 0001H 048AH 0002H 0016H
	bl	_i2c_continue

;;	main_reqNotHalt();
CLINEA 0000H 0001H 048BH 0002H 0013H
	bl	_main_reqNotHalt
CBLOCKEND 226 2 1164

;;}
CLINEA 0000H 0001H 048CH 0001H 0001H
	pop	pc
CBLOCKEND 226 1 1164
CFUNCTIONEND 226


	rseg $$_intADC$main
CFUNCTION 227

__intADC	:
CBLOCK 227 1 1174

;;{
CLINEA 0000H 0001H 0496H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 227 2 1174

;;	_flgADCFin = 1;
CLINEA 0000H 0001H 0497H 0002H 0010H
	mov	r0,	#01h
	st	r0,	NEAR __flgADCFin
CBLOCKEND 227 2 1176

;;}
CLINEA 0000H 0001H 0498H 0001H 0001H
	rt
CBLOCKEND 227 1 1176
CFUNCTIONEND 227


	rseg $$main_reqNotHalt$main
CFUNCTION 218

_main_reqNotHalt	:
CBLOCK 218 1 1186

;;{
CLINEA 0000H 0001H 04A2H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 218 2 1186

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 04A3H 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 218 2 1188

;;}
CLINEA 0000H 0001H 04A4H 0001H 0001H
	rt
CBLOCKEND 218 1 1188
CFUNCTIONEND 218


	rseg $$_intUart$main
CFUNCTION 223

__intUart	:
CBLOCK 223 1 1198

;;{
CLINEA 0000H 0001H 04AEH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 223 2 1198

;;	uart_continue(); 	//in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 04AFH 0002H 0047H
	b	_uart_continue
CBLOCKEND 223 2 1200
CLINEA 0000H 0001H 04B0H 0001H 0001H
CBLOCKEND 223 1 1200
CFUNCTIONEND 223


	rseg $$TBC_ISR$main
CFUNCTION 228

_TBC_ISR	:
CBLOCK 228 1 1206

;;{
CLINEA 0000H 0001H 04B6H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 228 2 1206

;;	LED2_pin ^= 1;	// Toggle LED
CLINEA 0000H 0001H 04B8H 0002H 001DH
	tb	0f260h.3
	beq	_$M21
	rb	0f260h.3
	bal	_$M22
_$M21 :
	sb	0f260h.3
_$M22 :

;;	tb_setHtbdiv( (unsigned char)TB_HTD_1_1 ); //Set the ratio of dividing frequency of the time base counter
CLINEA 0000H 0000H 0041H 0002H 000DH
	mov	r0,	#0fh
	st	r0,	0f00bh
CBLOCKEND 228 2 1210

;;}
CLINEA 0000H 0001H 04BAH 0001H 0001H
	rt
CBLOCKEND 228 1 1210
CFUNCTIONEND 228


	rseg $$TMR89_ISR$main
CFUNCTION 229

_TMR89_ISR	:
CBLOCK 229 1 1216

;;{
CLINEA 0000H 0001H 04C0H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 229 2 1216
CRET 0000H

;;	LED1_pin ^= 1;
CLINEA 0000H 0001H 04C2H 0002H 000FH
	tb	0f260h.1
	beq	_$M24
	rb	0f260h.1
	bal	_$M25
_$M24 :
	sb	0f260h.1
_$M25 :

;;	tm_init(TM_CH_NO_89);
CLINEA 0000H 0001H 04C3H 0002H 0016H
	mov	r0,	#00h
	bl	_tm_init

;;	tm_start89();		//Clear & Restart Timer...
CLINEA 0000H 0001H 00CAH 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e1h

;;	tm_start89();		//Clear & Restart Timer...
CLINEA 0000H 0000H 00CBH 0002H 000BH
	sb	0f8e3h.0
CBLOCKEND 229 2 1221

;;}
CLINEA 0000H 0001H 04C5H 0001H 0001H
	pop	pc
CBLOCKEND 229 1 1221
CFUNCTIONEND 229


	rseg $$TMRAB_ISR$main
CFUNCTION 230

_TMRAB_ISR	:
CBLOCK 230 1 1227

;;{
CLINEA 0000H 0001H 04CBH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 230 2 1227
CRET 0000H

;;	LED4_pin ^= 1;
CLINEA 0000H 0001H 04CDH 0002H 000FH
	tb	0f260h.0
	beq	_$M27
	rb	0f260h.0
	bal	_$M28
_$M27 :
	sb	0f260h.0
_$M28 :

;;	tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 04CEH 0002H 0016H
	mov	r0,	#01h
	bl	_tm_init

;;	tm_startAB();		//Clear & Restart Timer...
CLINEA 0000H 0001H 00D1H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e9h

;;	tm_startAB();		//Clear & Restart Timer...
CLINEA 0000H 0000H 00D2H 0002H 000BH
	sb	0f8ebh.0
CBLOCKEND 230 2 1232

;;}
CLINEA 0000H 0001H 04D0H 0001H 0001H
	pop	pc
CBLOCKEND 230 1 1232
CFUNCTIONEND 230


	rseg $$TMREF_ISR$main
CFUNCTION 231

_TMREF_ISR	:
CBLOCK 231 1 1238

;;{
CLINEA 0000H 0001H 04D6H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 231 2 1238
CRET 0000H

;;	LED7_pin ^= 1;
CLINEA 0000H 0001H 04D8H 0002H 000FH
	tb	0f258h.2
	beq	_$M30
	rb	0f258h.2
	bal	_$M31
_$M30 :
	sb	0f258h.2
_$M31 :

;;	tm_init(TM_CH_NO_EF);
CLINEA 0000H 0001H 04D9H 0002H 0016H
	mov	r0,	#02h
	bl	_tm_init

;;	tm_startEF();		//Clear & Restart Timer...
CLINEA 0000H 0001H 00D8H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f361h

;;	tm_startEF();		//Clear & Restart Timer...
CLINEA 0000H 0000H 00D9H 0002H 000BH
	sb	0f363h.0
CBLOCKEND 231 2 1243

;;}
CLINEA 0000H 0001H 04DBH 0001H 0001H
	pop	pc
CBLOCKEND 231 1 1243
CFUNCTIONEND 231


	rseg $$ExtInt_ISR$main
CFUNCTION 232

_ExtInt_ISR	:
CBLOCK 232 1 1250

;;{
CLINEA 0000H 0001H 04E2H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 232 2 1250

;;	LED9_pin ^= 1;
CLINEA 0000H 0001H 04E4H 0002H 000FH
	tb	0f258h.6
	beq	_$M33
	rb	0f258h.6
	rt
_$M33 :
	sb	0f258h.6
CBLOCKEND 232 2 1254

;;}
CLINEA 0000H 0001H 04E6H 0001H 0001H
	rt
CBLOCKEND 232 1 1254
CFUNCTIONEND 232


	rseg $$NOPx$main
CFUNCTION 210

_NOPx	:
CBLOCK 210 1 1259

;;{
CLINEA 0000H 0001H 04EBH 0001H 0001H
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
CBLOCK 210 2 1259
CARGUMENT 46H 0002H 0028H "MyCount" 02H 00H 01H
CLOCAL 42H 0002H 0002H 0002H "ONCNT" 02H 00H 01H
CLOCAL 42H 0002H 0004H 0002H "xxx" 02H 00H 01H

;;unsigned int ONCNT = 0;
CLINEA 0000H 0001H 04ECH 0001H 0017H
	mov	er0,	#0 
	st	er0,	_ONCNT$0[fp]

;;xxx = MyCount;
CLINEA 0000H 0001H 04EFH 0001H 000EH
	st	er8,	_xxx$2[fp]

;;	while(ONCNT < xxx) {	// NOP for "xxx" Cycles
CLINEA 0000H 0001H 04F1H 0002H 002DH
	bal	_$L82
_$L84 :
CBLOCK 210 3 1265

;;		ONCNT++;
CLINEA 0000H 0000H 04F2H 0003H 000AH
	add	er0,	#1 
	st	er0,	_ONCNT$0[fp]
CBLOCKEND 210 3 1267

;;	}
CLINEA 0000H 0000H 04F3H 0002H 0002H
_$L82 :

;;	while(ONCNT < xxx) {	// NOP for "xxx" Cycles
CLINEA 0000H 0000H 04F1H 0000H 0000H
	l	er2,	_xxx$2[fp]
	cmp	er0,	er2
	blt	_$L84
CBLOCKEND 210 2 1269

;;}
CLINEA 0000H 0001H 04F5H 0001H 0001H
	pop	er8
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 210 1 1269
CFUNCTIONEND 210


	rseg $$SerialLCD_Init_and_Clear$main
CFUNCTION 234

_SerialLCD_Init_and_Clear	:
CBLOCK 234 1 1283

;;void SerialLCD_Init_and_Clear(void){
CLINEA 0000H 0001H 0503H 0001H 0024H
;;*****************************************
;;	register/stack information
;;*****************************************
	_LCD_CONFIG$0	set	-4
	_LCD_CONFIG2$4	set	-5
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-06
CBLOCK 234 2 1283
CRET 0008H
CLOCAL 42H 0003H 0004H 0002H "LCD_CONFIG" 05H 01H 03H 00H 00H 00H
CLOCAL 42H 0001H 0005H 0002H "LCD_CONFIG2" 05H 01H 01H 00H 00H 00H

;;		unsigned char LCD_CONFIG[3]   = {LCD_Display_ON, LCD_Backlight_ON, LCD_HOME}; 
CLINEA 0000H 0001H 0505H 0003H 0050H
	mov	r0,	#019h
	st	r0,	_LCD_CONFIG$0[fp]
	mov	r0,	#011h
	st	r0,	_LCD_CONFIG$0+01h[fp]
	mov	r0,	#080h
	st	r0,	_LCD_CONFIG$0+02h[fp]

;;		unsigned char LCD_CONFIG2[1]  = {LCD_FormFeedClear};	//Move to 0,0 & Clear Display 		
CLINEA 0000H 0001H 0506H 0003H 0057H
	mov	r0,	#0ch
	st	r0,	_LCD_CONFIG2$4[fp]

;;		uart_startSend(LCD_CONFIG2, 1, _funcUartFin); // Send LCD COMMANDS
CLINEA 0000H 0001H 050AH 0003H 0044H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#1 
	mov	er0,	fp
	add	er0,	#-5
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 050BH 0001H 0001H
	bal	_$L91

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 050BH 0003H 001AH
_$L89 :
CBLOCK 234 3 1291

;;			main_clrWDT(); 
CLINEA 0000H 0001H 050CH 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 234 3 1293

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 050BH 0001H 0001H
_$L91 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L89

;;		NOPms(100); 
CLINEA 0000H 0001H 050FH 0003H 000EH
	mov	r0,	#064h
	mov	r1,	#00h
	bl	_NOPms
CBLOCKEND 234 2 1296

;;}
CLINEA 0000H 0001H 0510H 0001H 0001H
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 234 1 1296
CFUNCTIONEND 234


	rseg $$UART_TX_TEST$main
CFUNCTION 235

_UART_TX_TEST	:
CBLOCK 235 1 1302

;;{
CLINEA 0000H 0001H 0516H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_UARTStartupMessage$2	set	-26
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-026
CBLOCK 235 2 1302
CRET 001CH
CLOCAL 4AH 0001H 0000H 0002H "LCD_Cmd_HOME" 02H 00H 00H
CLOCAL 42H 001AH 001AH 0002H "UARTStartupMessage" 05H 01H 1AH 00H 00H 00H

;;		unsigned char UARTStartupMessage[26] = {"ML610Q111 UART - TX Demo: "};
CLINEA 0000H 0001H 051AH 0003H 0048H
	mov	r0,	#04dh
	st	r0,	_UARTStartupMessage$2[fp]
	mov	r0,	#04ch
	st	r0,	_UARTStartupMessage$2+01h[fp]
	mov	r0,	#036h
	st	r0,	_UARTStartupMessage$2+02h[fp]
	mov	r0,	#031h
	st	r0,	_UARTStartupMessage$2+03h[fp]
	mov	r0,	#030h
	st	r0,	_UARTStartupMessage$2+04h[fp]
	mov	r0,	#051h
	st	r0,	_UARTStartupMessage$2+05h[fp]
	mov	r0,	#031h
	st	r0,	_UARTStartupMessage$2+06h[fp]
	st	r0,	_UARTStartupMessage$2+07h[fp]
	st	r0,	_UARTStartupMessage$2+08h[fp]
	mov	r0,	#020h
	st	r0,	_UARTStartupMessage$2+09h[fp]
	mov	r0,	#055h
	st	r0,	_UARTStartupMessage$2+0ah[fp]
	mov	r0,	#041h
	st	r0,	_UARTStartupMessage$2+0bh[fp]
	mov	r0,	#052h
	st	r0,	_UARTStartupMessage$2+0ch[fp]
	mov	r0,	#054h
	st	r0,	_UARTStartupMessage$2+0dh[fp]
	mov	r0,	#020h
	st	r0,	_UARTStartupMessage$2+0eh[fp]
	mov	r0,	#02dh
	st	r0,	_UARTStartupMessage$2+0fh[fp]
	mov	r0,	#020h
	st	r0,	_UARTStartupMessage$2+010h[fp]
	mov	r0,	#054h
	st	r0,	_UARTStartupMessage$2+011h[fp]
	mov	r0,	#058h
	st	r0,	_UARTStartupMessage$2+012h[fp]
	mov	r0,	#020h
	st	r0,	_UARTStartupMessage$2+013h[fp]
	mov	r0,	#044h
	st	r0,	_UARTStartupMessage$2+014h[fp]
	mov	r0,	#065h
	st	r0,	_UARTStartupMessage$2+015h[fp]
	mov	r0,	#06dh
	st	r0,	_UARTStartupMessage$2+016h[fp]
	mov	r0,	#06fh
	st	r0,	_UARTStartupMessage$2+017h[fp]
	mov	r0,	#03ah
	st	r0,	_UARTStartupMessage$2+018h[fp]
	mov	r0,	#020h
	st	r0,	_UARTStartupMessage$2+019h[fp]

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 051CH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 051DH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(UARTStartupMessage, 26, _funcUartFin);
CLINEA 0000H 0001H 051EH 0003H 0037H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#26
	mov	er0,	fp
	add	er0,	#-26
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 051FH 0001H 0001H
	bal	_$L98

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 051FH 0003H 001AH
_$L96 :
CBLOCK 235 3 1311

;;			main_clrWDT(); 
CLINEA 0000H 0001H 0520H 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 235 3 1313

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 051FH 0001H 0001H
_$L98 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L96
CBLOCKEND 235 2 1323

;;}
CLINEA 0000H 0001H 052BH 0001H 0001H
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 235 1 1323
CFUNCTIONEND 235


	rseg $$UART_RX_TEST$main
CFUNCTION 236

_UART_RX_TEST	:
CBLOCK 236 1 1327

;;void UART_RX_TEST(void){
CLINEA 0000H 0001H 052FH 0001H 0018H
;;*****************************************
;;	register/stack information
;;*****************************************
	_MyRx$0	set	-1
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-02
CBLOCK 236 2 1327
CRET 0004H
CLOCAL 42H 0001H 0001H 0002H "MyRx" 05H 01H 01H 00H 00H 00H
CLOCAL 4BH 0002H 0000H 0002H "i" 02H 00H 01H
	mov	r0,	#020h
	st	r0,	_MyRx$0[fp]

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 053CH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 053DH 0003H 000EH
	bl	_uart_stop

;;		uart_startReceive(MyRx, 1, _funcUartFin);	// RX!
CLINEA 0000H 0001H 053EH 0003H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#1 
	mov	er0,	fp
	add	er0,	#-1
	bl	_uart_startReceive
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 053FH 0001H 0001H
	bal	_$L116

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 053FH 0003H 001AH
_$L108 :
CBLOCK 236 4 1343

;;			main_clrWDT();	
CLINEA 0000H 0001H 0540H 0004H 0012H
	bl	_main_clrWDT

;;			LED5_pin ^= 1;	//waiting for data...
CLINEA 0000H 0001H 0541H 0004H 0027H
	tb	0f260h.2
	beq	_$M39
	rb	0f260h.2
	bal	_$M40
_$M39 :
	sb	0f260h.2
_$M40 :
CBLOCKEND 236 4 1346

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 053FH 0001H 0001H
_$L116 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L108

;;		if(MyRx[0] != 0x20){			
CLINEA 0000H 0001H 0545H 0003H 0019H
	l	r0,	_MyRx$0[fp]
	cmp	r0,	#020h
	beq	_$L113
CBLOCK 236 5 1349

;;			_flgUartFin = 0;
CLINEA 0000H 0001H 0547H 0004H 0013H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;			uart_stop();
CLINEA 0000H 0001H 0548H 0004H 000FH
	bl	_uart_stop

;;			uart_startSend(MyRx, 1, _funcUartFin);	// TX!
CLINEA 0000H 0001H 0549H 0004H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#1 
	mov	er0,	fp
	add	er0,	#-1
	bl	_uart_startSend
	add	sp,	#2 

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 054AH 0001H 0001H
	bal	_$L117

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 054AH 0004H 001BH
_$L114 :
CBLOCK 236 6 1354

;;				main_clrWDT(); 
CLINEA 0000H 0001H 054BH 0005H 0013H
	bl	_main_clrWDT
CBLOCKEND 236 6 1356

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 054AH 0001H 0001H
_$L117 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L114

;;			}
CLINEA 0000H 0000H 054CH 0004H 0004H
_$L113 :
CBLOCKEND 236 5 1357
CBLOCKEND 236 2 1360

;;}
CLINEA 0000H 0001H 0550H 0001H 0001H
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 236 1 1360
CFUNCTIONEND 236


	rseg $$PIR_Detect$main
CFUNCTION 237

_PIR_Detect	:
CBLOCK 237 1 1365

;;{
CLINEA 0000H 0001H 0555H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
CBLOCK 237 2 1365
CRET 0000H
CLOCAL 4AH 0002H 0000H 0002H "x" 02H 00H 01H

;;			PB4DIR = 1;			// PortB Bit4 set Direction to INPUT...
CLINEA 0000H 0001H 055DH 0004H 0038H
	sb	0f259h.4

;;			PB4C1  = 0;			// PortB Bit4 set Type to HIGH-IMPEDANCE INPUT...
CLINEA 0000H 0001H 055FH 0004H 0042H
	rb	0f25bh.4

;;			PB4C0  = 0;	
CLINEA 0000H 0001H 0560H 0004H 000FH
	rb	0f25ah.4

;;			PB4MD1  = 0;		// PortB Bit4 set Purpose to GENERAL PURPOSE Input/Output...
CLINEA 0000H 0001H 0562H 0004H 004DH
	rb	0f25dh.4

;;			PB4MD0  = 0;
CLINEA 0000H 0001H 0563H 0004H 000FH
	rb	0f25ch.4

;;	if (PIR_pin == 1)
CLINEA 0000H 0001H 0565H 0002H 0012H
	tb	0f258h.4
	beq	_$L119
CBLOCK 237 3 1382

;;		PIR_ALARM();	// PIR DETECTION EVENT!
CLINEA 0000H 0001H 0567H 0003H 0026H
	bl	_PIR_ALARM

;;	else if (PIR_pin == 0)
CLINEA 0000H 0000H 0569H 0002H 0017H
_$L119 :
CBLOCK 237 4 1386
CBLOCKEND 237 4 1390
CBLOCKEND 237 3 1392
CBLOCKEND 237 2 1392

;;}
CLINEA 0000H 0001H 0570H 0001H 0001H
	pop	pc
CBLOCKEND 237 1 1392
CFUNCTIONEND 237


	rseg $$HALL_Detect$main
CFUNCTION 238

_HALL_Detect	:
CBLOCK 238 1 1397

;;{
CLINEA 0000H 0001H 0575H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 238 2 1397
CLOCAL 4AH 0002H 0000H 0002H "x" 02H 00H 01H

;;			PB3DIR = 1;			// PortB Bit3 set Direction to INPUT...
CLINEA 0000H 0001H 057DH 0004H 0038H
	sb	0f259h.3

;;			PB3C1  = 0;			// PortB Bit3 set Type to HIGH-IMPEDANCE INPUT...
CLINEA 0000H 0001H 057FH 0004H 0042H
	rb	0f25bh.3

;;			PB3C0  = 0;	
CLINEA 0000H 0001H 0580H 0004H 000FH
	rb	0f25ah.3

;;			PB3MD1  = 0;		// PortB Bit3 set Purpose to GENERAL PURPOSE Input/Output...
CLINEA 0000H 0001H 0582H 0004H 004DH
	rb	0f25dh.3

;;			PB3MD0  = 0;
CLINEA 0000H 0001H 0583H 0004H 000FH
	rb	0f25ch.3
CBLOCK 238 3 1414
CBLOCK 238 4 1420
CBLOCKEND 238 4 1424
CBLOCKEND 238 3 1426
CBLOCKEND 238 2 1426

;;}
CLINEA 0000H 0001H 0592H 0001H 0001H
	rt
CBLOCKEND 238 1 1426
CFUNCTIONEND 238


	rseg $$PIR_ALARM$main
CFUNCTION 239

_PIR_ALARM	:
CBLOCK 239 1 1430

;;void PIR_ALARM (void) {
CLINEA 0000H 0001H 0596H 0001H 0017H
;;*****************************************
;;	register/stack information
;;*****************************************
	_PIR_ALARM_Message$0	set	-16
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-016
CBLOCK 239 2 1430
CRET 0012H
CLOCAL 42H 0010H 0010H 0002H "PIR_ALARM_Message" 05H 01H 10H 00H 00H 00H
CLOCAL 4AH 0001H 0000H 0002H "counter" 02H 00H 00H

;;	unsigned char PIR_ALARM_Message[16] = {"PIR EVENT ALARM!"};
CLINEA 0000H 0001H 059BH 0002H 003CH
	mov	r0,	#050h
	st	r0,	_PIR_ALARM_Message$0[fp]
	mov	r0,	#049h
	st	r0,	_PIR_ALARM_Message$0+01h[fp]
	mov	r0,	#052h
	st	r0,	_PIR_ALARM_Message$0+02h[fp]
	mov	r0,	#020h
	st	r0,	_PIR_ALARM_Message$0+03h[fp]
	mov	r0,	#045h
	st	r0,	_PIR_ALARM_Message$0+04h[fp]
	mov	r0,	#056h
	st	r0,	_PIR_ALARM_Message$0+05h[fp]
	mov	r0,	#045h
	st	r0,	_PIR_ALARM_Message$0+06h[fp]
	mov	r0,	#04eh
	st	r0,	_PIR_ALARM_Message$0+07h[fp]
	mov	r0,	#054h
	st	r0,	_PIR_ALARM_Message$0+08h[fp]
	mov	r0,	#020h
	st	r0,	_PIR_ALARM_Message$0+09h[fp]
	mov	r0,	#041h
	st	r0,	_PIR_ALARM_Message$0+0ah[fp]
	mov	r0,	#04ch
	st	r0,	_PIR_ALARM_Message$0+0bh[fp]
	mov	r0,	#041h
	st	r0,	_PIR_ALARM_Message$0+0ch[fp]
	mov	r0,	#052h
	st	r0,	_PIR_ALARM_Message$0+0dh[fp]
	mov	r0,	#04dh
	st	r0,	_PIR_ALARM_Message$0+0eh[fp]
	mov	r0,	#021h
	st	r0,	_PIR_ALARM_Message$0+0fh[fp]

;;		SerialLCD_Init_and_Clear();	// Init And/Or Clear Parallax Serial LCD Display...
CLINEA 0000H 0001H 05A0H 0003H 0051H
	bl	_SerialLCD_Init_and_Clear

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 05A2H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 05A3H 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(PIR_ALARM_Message, 16, _funcUartFin);
CLINEA 0000H 0001H 05A4H 0003H 0036H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#16
	mov	er0,	fp
	add	er0,	#-16
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 05A5H 0001H 0001H
	bal	_$L140

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 05A5H 0003H 001AH
_$L134 :
CBLOCK 239 3 1445

;;			main_clrWDT(); 
CLINEA 0000H 0001H 05A6H 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 239 3 1447

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 05A5H 0001H 0001H
_$L140 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L134

;;		while(PIR_pin == 1) //While motion is still detected...
CLINEA 0000H 0001H 05AAH 0003H 0039H
	bal	_$L136
_$L138 :
CBLOCK 239 4 1451

;;			LED8_pin = 1;	// Toggle LED
CLINEA 0000H 0001H 05ACH 0004H 001EH
	sb	0f258h.7

;;				NOPms(100);
CLINEA 0000H 0001H 05ADH 0005H 000FH
	mov	r0,	#064h
	mov	r1,	#00h
	bl	_NOPms

;;			LED8_pin = 0;	// Toggle LED
CLINEA 0000H 0001H 05AEH 0004H 001EH
	rb	0f258h.7

;;				NOPms(100);
CLINEA 0000H 0001H 05AFH 0005H 000FH
	mov	r0,	#064h
	mov	r1,	#00h
	bl	_NOPms
CBLOCKEND 239 4 1456

;;		} ///wend
CLINEA 0000H 0000H 05B0H 0003H 000BH
_$L136 :

;;		while(PIR_pin == 1) //While motion is still detected...
CLINEA 0000H 0000H 05AAH 0000H 0000H
	tb	0f258h.4
	bne	_$L138

;;		SerialLCD_Init_and_Clear();	// Init And/Or Clear Parallax Serial LCD Display...
CLINEA 0000H 0001H 05B3H 0003H 0051H
	bl	_SerialLCD_Init_and_Clear
CBLOCKEND 239 2 1463

;;}
CLINEA 0000H 0001H 05B7H 0001H 0001H
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 239 1 1463
CFUNCTIONEND 239

	public _PIR_Detect
	public _main_clrWDT
	public _main_reqNotHalt
	public _NOPx
	public _UART_RX_TEST
	public _UART_TX_TEST
	public _PWM_B0_ON
	public _PortA_Digital_Inputs
	public _main
	public _PIR_ALARM
	public _SerialLCD_Init_and_Clear
	public _PortC_Low
	public _HALL_Detect
	public _PortB_Low
	public _PortA_Low
	public _analog_comparator
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
	extrn code near : _uart_stop
	extrn code near : _uart_startSend
	extrn code near : _uart_continue
	extrn code near : _tm_init
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

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

	end
