;; Compile Options : /TML610111 /MS /near /Icommon /Imain /Iirq /Itimer /Itbc /Ipwm /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 1 /Ff /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : uart.c

	type (ML610111) 
	fastfloat
	model small, near
	$$NVARuart segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$OLDuart_0_Init$uart segment code 2h #0h
	$$_send_byte$uart segment code 2h #0h
	$$uart0_startReceive$uart segment code 2h #0h
	$$uartSendStr$uart segment code 2h #0h
	$$uart_0_Init$uart segment code 2h #0h
	$$uart_ErrClr$uart segment code 2h #0h
	$$uart_ErrGet$uart segment code 2h #0h
	$$uart_ErrSet$uart segment code 2h #0h
	$$uart_PortClear$uart segment code 2h #0h
	$$uart_PortSet$uart segment code 2h #0h
	$$uart_checkIRQ$uart segment code 2h #0h
	$$uart_clearIRQ$uart segment code 2h #0h
	$$uart_continue$uart segment code 2h #0h
	$$uart_getTransSize$uart segment code 2h #0h
	$$uart_startReceive$uart segment code 2h #0h
	$$uart_startSend$uart segment code 2h #0h
	$$uart_stop$uart segment code 2h #0h
CVERSION 3.41.8
CSGLOBAL 03H 0000H "_send_byte" 08H 02H 10H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 02H 0000H "uart_getTransSize" 08H 02H 08H 00H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_PortSet" 08H 02H 0CH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_0_Init" 08H 02H 0EH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_startReceive" 08H 02H 03H 00H 82H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_checkIRQ" 08H 02H 06H 00H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_clearIRQ" 08H 02H 07H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_ErrClr" 08H 02H 0BH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 02H 0000H "uart_ErrGet" 08H 02H 0AH 00H 80H 00H 00H 00H 00H
CGLOBAL 01H 03H 0000H "uart_ErrSet" 08H 02H 09H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart0_startReceive" 08H 02H 14H 00H 83H 68H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_stop" 08H 02H 05H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_startSend" 08H 02H 02H 00H 82H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uartSendStr" 08H 02H 0FH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "OLDuart_0_Init" 08H 02H 21H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_continue" 08H 02H 04H 00H 81H 04H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_PortClear" 08H 02H 0DH 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0002H 0005H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "data" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000002H "size" 02H 00H 01H
CSTRUCTMEM 42H 00000002H 00000004H "cnt" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000006H "callBack" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 42H 00000001H 00000008H "errStat" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0001H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "tUartCtrlParam" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CSGLOBAL 42H 0001H "_Err_Status" 02H 00H 00H
CSGLOBAL 43H 000AH "_gsCtrlParam" 04H 00H 05H 02H 00H
CFILE 0001H 00000027H "common\\common.h"
CFILE 0002H 00000028H "main\\mcu.h"
CFILE 0003H 000007EEH "main\\ML610111.H"
CFILE 0004H 0000006FH "uart\\uart.h"
CFILE 0000H 000002DEH "uart\\uart.c"

	rseg $$uart_0_Init$uart
CFUNCTION 14

_uart_0_Init	:
CBLOCK 14 1 215

;;{
CLINEA 0000H 0001H 00D7H 0001H 0001H
CBLOCK 14 2 215

;;	UA0BRT = ( unsigned short )( ( ( HSCLK_kHZ * 1000UL ) / UART_CalcBAUD ) - 1 );
CLINEA 0000H 0001H 00DBH 0002H 004FH
	mov	r0,	#054h
	mov	r1,	#03h
	st	er0,	0f294h

;;	PB0DIR = 1;		// PortB Bit0 set to Input  Mode...UART-RX
CLINEA 0000H 0001H 00E6H 0002H 0038H
	sb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...UART-TX
CLINEA 0000H 0001H 00E7H 0002H 0038H
	rb	0f259h.1

;;	PB0C1  = 1;		// PortB Bit0 set to (High-impedance input when PBxDIR=1)...
CLINEA 0000H 0001H 00EAH 0002H 004AH
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 00EBH 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output... 
CLINEA 0000H 0001H 00ECH 0002H 0032H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 00EDH 0002H 000DH
	sb	0f25ah.1

;;	PB0MD1  = 0;	// PortB Bit0 set to General-purpose input/output mode (initial value)
CLINEA 0000H 0001H 00F0H 0002H 0054H
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 00F1H 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 1;	// PortB Bit1 set to UART0 data output pin
CLINEA 0000H 0001H 00F2H 0002H 0038H
	sb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 00F3H 0002H 000EH
	rb	0f25ch.1

;;		U0EN = 0;	 // 0 = Stops communication. (Initial value)
CLINEA 0000H 0001H 00F7H 0003H 0038H
	rb	0f291h.0

;;		U0IO   = 0;	 // 0 = Transmit mode (initial value)
CLINEA 0000H 0001H 00FAH 0003H 0033H
	rb	0f292h.0

;;		U0CK1  = 1;	 // 10 => Select the HSCLK clock to be input to the baud rate generator of the UART0 		
CLINEA 0000H 0001H 00FCH 0003H 0065H
	sb	0f292h.2

;;		U0CK0  = 0;
CLINEA 0000H 0001H 00FDH 0003H 000DH
	rb	0f292h.1

;;		U0RSEL = 0;	 // 0 = Selects the PB0 pin as the RX Pin;
CLINEA 0000H 0001H 00FFH 0003H 0038H
	rb	0f292h.4

;;		U0RSS = 1;   // U0RSS bit is used to select the received data input sampling timing for the UART0...WAS 0!
CLINEA 0000H 0001H 0101H 0003H 006CH
	sb	0f292h.5

;;		U0LG1 = 0;	 // 00=> 8-bit data length (initial value)... 
CLINEA 0000H 0001H 0104H 0003H 003BH
	rb	0f293h.1

;;		U0LG0 = 0;
CLINEA 0000H 0001H 0105H 0003H 000CH
	rb	0f293h.0

;;		U0PT1 = 1;	 // 10=> No PARITY bit (initial value)
CLINEA 0000H 0001H 0107H 0003H 0033H
	sb	0f293h.3

;;		U0PT0 = 0;
CLINEA 0000H 0001H 0108H 0003H 000CH
	rb	0f293h.2

;;		U0STP = 0;	 // 0=> 1-stop-bit (initial value)
CLINEA 0000H 0001H 010AH 0003H 002FH
	rb	0f293h.4

;;		U0NEG = 0;	 // 0=> Positive Logic (initial value)
CLINEA 0000H 0001H 010CH 0003H 0033H
	rb	0f293h.5

;;		U0DIR = 0;	 // 0=> LSB first (initial value)
CLINEA 0000H 0001H 010EH 0003H 002EH
	rb	0f293h.6
CBLOCKEND 14 2 284

;;}
CLINEA 0000H 0001H 011CH 0001H 0001H
	rt
CBLOCKEND 14 1 284
CFUNCTIONEND 14


	rseg $$uartSendStr$uart
CFUNCTION 15

_uartSendStr	:
CBLOCK 15 1 287

;;{
CLINEA 0000H 0001H 011FH 0001H 0001H
	push	lr
	push	xr8
	push	xr4
	mov	er8,	er0
	mov	r10,	r2
CBLOCK 15 2 287
CRET 0008H
CARGUMENT 47H 0002H 0028H "str" 04H 03H 00H 00H 00H
CARGUMENT 46H 0001H 001EH "num" 02H 00H 00H
CLOCAL 46H 0001H 0018H 0002H "i" 02H 00H 00H
CLOCAL 46H 0002H 0027H 0002H "ptr" 04H 03H 00H 00H 00H

;;	unsigned char i = 0;
CLINEA 0000H 0001H 0120H 0002H 0015H
	mov	r4,	#00h

;;	unsigned char* ptr = (unsigned char*)str;
CLINEA 0000H 0001H 0121H 0002H 002AH
	mov	er6,	er8

;;	while( i < num )
CLINEA 0000H 0001H 0124H 0002H 0011H
	bal	_$L2
_$L4 :
CBLOCK 15 3 293

;;		_send_byte( *(ptr+i) ); //Now send the Byte...
CLINEA 0000H 0001H 0126H 0003H 0030H
	mov	r0,	r4
	mov	r1,	#00h
	add	er0,	er6
	l	r0,	[er0]
	bl	__send_byte

;;		i++;				// increment to select next byte...
CLINEA 0000H 0000H 0127H 0003H 002DH
	add	r4,	#01h
CBLOCKEND 15 3 296

;;	}
CLINEA 0000H 0000H 0128H 0002H 0002H
_$L2 :

;;	while( i < num )
CLINEA 0000H 0000H 0124H 0000H 0000H
	cmp	r4,	r10
	blt	_$L4
CBLOCKEND 15 2 297

;;}
CLINEA 0000H 0001H 0129H 0001H 0001H
	pop	xr4
	pop	xr8
	pop	pc
CBLOCKEND 15 1 297
CFUNCTIONEND 15


	rseg $$_send_byte$uart
CFUNCTION 16

__send_byte	:
CBLOCK 16 1 300

;;{
CLINEA 0000H 0001H 012CH 0001H 0001H
CBLOCK 16 2 300
CARGUMENT 46H 0001H 0014H "c" 02H 00H 00H

;;	U0IO = 0; 		// 0 = Transmit mode (initial value)			
CLINEA 0000H 0001H 012DH 0002H 0034H
	rb	0f292h.0

;;	UA0BUF = c;		// Load byte into Buffer...
CLINEA 0000H 0001H 012EH 0002H 0029H
	st	r0,	0f290h

;;	U0EN = 1;		// START COMMUNICATION...		
CLINEA 0000H 0001H 012FH 0002H 0027H
	sb	0f291h.0

;;	while(U0EN != 0)	// In transmit mode, this bit is automatically set to 0 at termination of transmission.
CLINEA 0000H 0000H 0131H 0002H 0069H
_$L9 :
CBLOCK 16 3 306
CBLOCKEND 16 3 308
	tb	0f291h.0
	bne	_$L9

;;	QUA0 = 0;		//QUA0 is the request flag for the UART0 interrupt
CLINEA 0000H 0001H 0137H 0002H 003EH
	rb	0f01ch.0
CBLOCKEND 16 2 312

;;}
CLINEA 0000H 0001H 0138H 0001H 0001H
	rt
CBLOCKEND 16 1 312
CFUNCTIONEND 16


	rseg $$uart0_startReceive$uart
CFUNCTION 20

_uart0_startReceive	:
CBLOCK 20 1 329

;;{
CLINEA 0000H 0001H 0149H 0001H 0001H
	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-0100
CBLOCK 20 2 329
CRET 0066H
CLOCAL 4BH 0004H 0000H 0002H "delay" 02H 00H 02H
CLOCAL 42H 0064H 0064H 0002H "RX_Code" 05H 01H 64H 00H 00H 00H

;;	U0EN = 0;  //UART0 Control Register Bit 0 - "0" Stops communication.
CLINEA 0000H 0001H 014EH 0002H 0045H
	rb	0f291h.0

;;		U0FER = 0; //UART0 Status Register Bit 0 - Clear Framing Error Flag
CLINEA 0000H 0001H 0152H 0003H 0045H
	rb	0f296h.0

;;		U0OER = 0; //UART0 Status Register Bit 1 - Clear Overrun Error Flag
CLINEA 0000H 0001H 0153H 0003H 0045H
	rb	0f296h.1

;;		U0PER = 0; //UART0 Status Register Bit 2 - Clear Parity  Error Flag
CLINEA 0000H 0001H 0154H 0003H 0045H
	rb	0f296h.2

;;		U0IO = 1;  //UART0 Mode Register 0 Bit 0 - "1" = Receive Mode	
CLINEA 0000H 0001H 0156H 0003H 0040H
	sb	0f292h.0

;;		RX_Code[0] = UA0BUF; //Copy buffer into array...
CLINEA 0000H 0001H 0158H 0003H 0032H
	l	r0,	0f290h
	st	r0,	-100[fp]

;;	U0EN = 1; //UART0 Control Register Bit 0 - "1" Starts communication
CLINEA 0000H 0001H 015CH 0002H 0044H
	sb	0f291h.0

;;		_send_byte(RX_Code[0] );//echo array
CLINEA 0000H 0001H 0160H 0003H 0026H
	bl	__send_byte
CBLOCKEND 20 2 356

;;}
CLINEA 0000H 0001H 0164H 0001H 0001H
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 20 1 356
CFUNCTIONEND 20


	rseg $$uart_startSend$uart
CFUNCTION 2

_uart_startSend	:
CBLOCK 2 1 374

;;{
CLINEA 0000H 0001H 0176H 0001H 0001H
	push	fp
	mov	fp,	sp
	push	er8
	mov	er8,	er0
CBLOCK 2 2 374
CARGUMENT 46H 0002H 0028H "data" 04H 03H 00H 00H 00H
CARGUMENT 46H 0002H 0025H "size" 02H 00H 01H
CARGUMENT 43H 0002H 0002H "func" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;	U0EN = 0;
CLINEA 0000H 0001H 0178H 0002H 000AH
	rb	0f291h.0

;;	U0IO = 0;
CLINEA 0000H 0001H 0179H 0002H 000AH
	rb	0f292h.0

;;	_gsCtrlParam.data		= data;
CLINEA 0000H 0001H 017CH 0002H 001BH
	st	er0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.size		= size;
CLINEA 0000H 0001H 017DH 0002H 001BH
	st	er2,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 017EH 0002H 0017H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.callBack	= func;
CLINEA 0000H 0001H 017FH 0002H 001EH
	l	er0,	2[fp]
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 0180H 0002H 001AH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+08h

;;	if( _gsCtrlParam.size > 0 ){
CLINEA 0000H 0001H 0182H 0002H 001DH
	cmp	r2,	#00h
	cmpc	r3,	#00h
	ble	_$L13
CBLOCK 2 3 386

;;		UA0BUF = *data;
CLINEA 0000H 0001H 0184H 0003H 0011H
	l	r0,	[er8]
	st	r0,	0f290h

;;		_gsCtrlParam.data++;
CLINEA 0000H 0000H 0185H 0003H 0016H
	l	er0,	NEAR __gsCtrlParam
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;		_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 0186H 0003H 0015H
	l	er0,	NEAR __gsCtrlParam+04h
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;		U0EN = 1;
CLINEA 0000H 0001H 0187H 0003H 000BH
	sb	0f291h.0
CBLOCKEND 2 3 392

;;	}
CLINEA 0000H 0000H 0188H 0002H 0002H
_$L13 :
CBLOCKEND 2 2 393

;;}
CLINEA 0000H 0001H 0189H 0001H 0001H
	pop	er8
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 2 1 393
CFUNCTIONEND 2


	rseg $$uart_startReceive$uart
CFUNCTION 3

_uart_startReceive	:
CBLOCK 3 1 405

;;{
CLINEA 0000H 0001H 0195H 0001H 0001H
	push	fp
	mov	fp,	sp
CBLOCK 3 2 405
CARGUMENT 46H 0002H 0024H "data" 04H 03H 00H 00H 00H
CARGUMENT 46H 0002H 0025H "size" 02H 00H 01H
CARGUMENT 43H 0002H 0002H "func" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;	U0EN = 0;
CLINEA 0000H 0001H 0197H 0002H 000AH
	rb	0f291h.0

;;	U0FER = 0;
CLINEA 0000H 0001H 0199H 0002H 000BH
	rb	0f296h.0

;;	U0OER = 0;
CLINEA 0000H 0001H 019AH 0002H 000BH
	rb	0f296h.1

;;	U0PER = 0;
CLINEA 0000H 0001H 019BH 0002H 000BH
	rb	0f296h.2

;;	U0IO = 1;
CLINEA 0000H 0001H 019DH 0002H 000AH
	sb	0f292h.0

;;	_gsCtrlParam.data		= data;
CLINEA 0000H 0001H 019FH 0002H 001BH
	st	er0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.size		= size;
CLINEA 0000H 0001H 01A0H 0002H 001BH
	st	er2,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 01A1H 0002H 0017H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.callBack	= func;
CLINEA 0000H 0001H 01A2H 0002H 001EH
	l	er0,	2[fp]
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 01A3H 0002H 001AH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+08h

;;	if( _gsCtrlParam.size > 0 ){
CLINEA 0000H 0001H 01A5H 0002H 001DH
	cmp	r2,	#00h
	cmpc	r3,	#00h
	ble	_$L16
CBLOCK 3 3 421

;;		U0EN = 1;
CLINEA 0000H 0001H 01A7H 0003H 000BH
	sb	0f291h.0
CBLOCKEND 3 3 424

;;	}
CLINEA 0000H 0000H 01A8H 0002H 0002H
_$L16 :
CBLOCKEND 3 2 425

;;}
CLINEA 0000H 0001H 01A9H 0001H 0001H
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 3 1 425
CFUNCTIONEND 3


	rseg $$uart_continue$uart
CFUNCTION 4

_uart_continue	:
CBLOCK 4 1 441

;;{
CLINEA 0000H 0001H 01B9H 0001H 0001H
	push	lr
	push	bp
CBLOCK 4 2 441
CRET 0002H
CLOCAL 46H 0001H 0014H 0002H "u0io" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "u0ful" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "u0en" 02H 00H 00H
CLOCAL 46H 0001H 0016H 0002H "errStat" 02H 00H 00H
CLOCAL 47H 0002H 002AH 0002H "cbfTmp" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;	u0io = (unsigned char)( UA0MOD0 & (unsigned char)UA0MOD0_U0IO );
CLINEA 0000H 0001H 01C0H 0002H 0041H
	l	r0,	0f292h
	and	r0,	#01h

;;	if( u0io == 0 ){
CLINEA 0000H 0001H 01C2H 0002H 0011H
	cmp	r0,	#00h
	bne	_$L19
CBLOCK 4 3 450

;;		if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 01C4H 0003H 002EH
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L21
CBLOCK 4 4 452

;;			u0ful = (unsigned char)( UA0STAT & (unsigned char)UA0STAT_U0FUL );
CLINEA 0000H 0001H 01C6H 0004H 0045H
	l	r0,	0f296h
	and	r0,	#08h

;;			if( u0ful == 0 ){
CLINEA 0000H 0001H 01C8H 0004H 0014H
	cmp	r0,	#00h
	bne	_$L23
CBLOCK 4 5 456

;;				UA0BUF = *_gsCtrlParam.data;
CLINEA 0000H 0001H 01C9H 0005H 0020H
	l	bp,	NEAR __gsCtrlParam
	l	r0,	[bp]
	st	r0,	0f290h

;;				_gsCtrlParam.data++;
CLINEA 0000H 0000H 01CAH 0005H 0018H
	mov	er0,	bp
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;				_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 01CBH 0005H 0017H
	mov	er0,	er2
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;				U0EN = 1;
CLINEA 0000H 0001H 01CCH 0005H 000DH
	sb	0f291h.0

;;				return ( UART_R_TRANS_CONT_OK );
CLINEA 0000H 0001H 01CDH 0005H 0024H
	mov	er0,	#0 
CBLOCKEND 4 5 462
CBLOCKEND 4 2 512

;;}
CLINEA 0000H 0001H 0200H 0001H 0001H
_$L18 :
	pop	bp
	pop	pc
CBLOCKEND 4 3 512
CBLOCKEND 4 4 512

;;			else{
CLINEA 0000H 0000H 01CFH 0004H 0008H
_$L23 :
CBLOCK 4 6 463

;;				return ( UART_R_TRANS_CONT_NG );
CLINEA 0000H 0001H 01D0H 0005H 0024H
	mov	er0,	#-1
	bal	_$L18
CBLOCKEND 4 6 465

;;		else{
CLINEA 0000H 0000H 01D3H 0003H 0007H
_$L21 :
CBLOCK 4 7 467

;;			u0en = (unsigned char)( UA0CON & (unsigned char)UA0CON_U0EN );
CLINEA 0000H 0001H 01D5H 0004H 0041H
	l	r0,	0f291h
	and	r0,	#01h

;;			if( u0en == 0 ){
CLINEA 0000H 0001H 01D6H 0004H 0013H
	cmp	r0,	#00h
	bne	_$L27
CBLOCK 4 8 470

;;				if( _gsCtrlParam.callBack != (void *)0 ){
CLINEA 0000H 0001H 01D8H 0005H 002DH
	l	er0,	NEAR __gsCtrlParam+06h
	beq	_$L29
CBLOCK 4 9 472

;;					_gsCtrlParam.callBack( _gsCtrlParam.size, _gsCtrlParam.errStat );
CLINEA 0000H 0001H 01D9H 0006H 0046H
	l	r2,	NEAR __gsCtrlParam+08h
	l	er0,	NEAR __gsCtrlParam+02h
	l	bp,	NEAR __gsCtrlParam+06h
	bl	bp

;;					_gsCtrlParam.callBack = (void *)0;
CLINEA 0000H 0001H 01DAH 0006H 0027H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+06h
CBLOCKEND 4 9 475

;;				}
CLINEA 0000H 0000H 01DBH 0005H 0005H
_$L29 :

;;				return ( UART_R_TRANS_FIN );
CLINEA 0000H 0001H 01DCH 0005H 0020H
	mov	er0,	#1 
	bal	_$L18
CBLOCKEND 4 8 477

;;			}
CLINEA 0000H 0000H 01DDH 0004H 0004H
_$L27 :

;;			return ( UART_R_TRANS_FIN_NG );
CLINEA 0000H 0001H 01DEH 0004H 0022H
	mov	er0,	#-2
	bal	_$L18
CBLOCKEND 4 7 479

;;	else{
CLINEA 0000H 0000H 01E2H 0002H 0006H
_$L19 :
CBLOCK 4 10 482

;;		if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 01E4H 0003H 002EH
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L38
CBLOCK 4 11 484

;;			errStat = (unsigned char)( UA0STAT & (unsigned char)(UA0STAT_U0FER|UA0STAT_U0OER|UA0STAT_U0PER) );
CLINEA 0000H 0001H 01E5H 0004H 0065H
	l	r0,	0f296h
	and	r0,	#07h
	mov	r2,	r0

;;			_gsCtrlParam.errStat |= errStat;
CLINEA 0000H 0001H 01E6H 0004H 0023H
	l	r0,	NEAR __gsCtrlParam+08h
	or	r0,	r2
	st	r0,	NEAR __gsCtrlParam+08h

;;			U0FER = 0;
CLINEA 0000H 0001H 01E7H 0004H 000DH
	rb	0f296h.0

;;			U0OER = 0;
CLINEA 0000H 0001H 01E8H 0004H 000DH
	rb	0f296h.1

;;			U0PER = 0;
CLINEA 0000H 0001H 01E9H 0004H 000DH
	rb	0f296h.2

;;			*_gsCtrlParam.data = UA0BUF;
CLINEA 0000H 0001H 01EAH 0004H 001FH
	l	bp,	NEAR __gsCtrlParam
	l	r0,	0f290h
	st	r0,	[bp]

;;			_gsCtrlParam.data++;
CLINEA 0000H 0000H 01EBH 0004H 0017H
	l	er0,	NEAR __gsCtrlParam
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;			_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 01ECH 0004H 0016H
	l	er0,	NEAR __gsCtrlParam+04h
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;			if( ( errStat & ( unsigned char )( UA0STAT_U0FER ) ) == 0 ) {
CLINEA 0000H 0001H 01EEH 0004H 0040H
	tb	r2.0
	bne	_$L34
CBLOCK 4 12 494

;;				if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 01F0H 0005H 0030H
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L38
CBLOCK 4 13 496

;;					return ( UART_R_TRANS_CONT_OK );
CLINEA 0000H 0001H 01F1H 0006H 0025H
	mov	er0,	#0 
	b	_$L18
CBLOCKEND 4 13 498

;;				}
CLINEA 0000H 0000H 01F2H 0005H 0005H
CBLOCKEND 4 12 499

;;			} else {
CLINEA 0000H 0000H 01F3H 0004H 000BH
_$L34 :
CBLOCK 4 14 499

;;				uart_ErrSet( UA0STAT_U0FER );
CLINEA 0000H 0001H 01F5H 0005H 0021H
	mov	r0,	#01h
	bl	_uart_ErrSet
CBLOCKEND 4 14 502

;;			}
CLINEA 0000H 0000H 01F6H 0004H 0004H
_$L38 :
CBLOCKEND 4 11 503

;;		if( _gsCtrlParam.callBack != (void *)0 ){
CLINEA 0000H 0001H 01F9H 0003H 002BH
	l	er0,	NEAR __gsCtrlParam+06h
	beq	_$L39
CBLOCK 4 15 505

;;			cbfTmp = _gsCtrlParam.callBack;
CLINEA 0000H 0001H 01FAH 0004H 0022H
	mov	bp,	er0

;;			_gsCtrlParam.callBack = (void *)0;
CLINEA 0000H 0001H 01FBH 0004H 0025H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+06h

;;			cbfTmp( _gsCtrlParam.size, _gsCtrlParam.errStat );
CLINEA 0000H 0001H 01FCH 0004H 0035H
	l	r2,	NEAR __gsCtrlParam+08h
	l	er0,	NEAR __gsCtrlParam+02h
	bl	bp
CBLOCKEND 4 15 509

;;		}
CLINEA 0000H 0000H 01FDH 0003H 0003H
_$L39 :

;;		return ( UART_R_TRANS_FIN );
CLINEA 0000H 0001H 01FEH 0003H 001EH
	mov	er0,	#1 
	b	_$L18
CBLOCKEND 4 10 511
CBLOCKEND 4 1 512
CFUNCTIONEND 4


	rseg $$uart_stop$uart
CFUNCTION 5

_uart_stop	:
CBLOCK 5 1 522

;;{
CLINEA 0000H 0001H 020AH 0001H 0001H
CBLOCK 5 2 522

;;	U0EN = 0;
CLINEA 0000H 0001H 020BH 0002H 000AH
	rb	0f291h.0

;;	_gsCtrlParam.data		= (void *)0;
CLINEA 0000H 0001H 020CH 0002H 0020H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.size		= 0;
CLINEA 0000H 0001H 020DH 0002H 0018H
	st	er0,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 020EH 0002H 0017H
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.callBack	= (void *)0;
CLINEA 0000H 0001H 020FH 0002H 0023H
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 0210H 0002H 001AH
	st	r0,	NEAR __gsCtrlParam+08h
CBLOCKEND 5 2 529

;;}
CLINEA 0000H 0001H 0211H 0001H 0001H
	rt
CBLOCKEND 5 1 529
CFUNCTIONEND 5


	rseg $$uart_checkIRQ$uart
CFUNCTION 6

_uart_checkIRQ	:
CBLOCK 6 1 541

;;{
CLINEA 0000H 0001H 021DH 0001H 0001H
CBLOCK 6 2 541
CLOCAL 46H 0001H 0014H 0002H "qua0" 02H 00H 00H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;	qua0 = (unsigned char)( IRQ4 & (unsigned char)IRQ4_QUA0 );
CLINEA 0000H 0001H 0221H 0002H 003BH
	l	r0,	0f01ch
	and	r0,	#01h

;;	if( qua0 == 1 ){
CLINEA 0000H 0001H 0222H 0002H 0011H
	cmp	r0,	#01h
	bne	_$L43
CBLOCK 6 3 546

;;		ret = ( UART_R_IRQ );
CLINEA 0000H 0001H 0223H 0003H 0017H
	mov	er0,	#1 
CBLOCKEND 6 3 548

;;	else{
CLINEA 0000H 0001H 0225H 0002H 0006H
	rt
_$L43 :
CBLOCK 6 4 549

;;		ret = ( UART_R_NON_IRQ );
CLINEA 0000H 0001H 0226H 0003H 001BH
	mov	er0,	#0 
CBLOCKEND 6 4 551

;;	return ret;
CLINEA 0000H 0001H 0229H 0002H 000CH
CBLOCKEND 6 2 554

;;}
CLINEA 0000H 0000H 022AH 0001H 0001H
	rt
CBLOCKEND 6 1 554
CFUNCTIONEND 6


	rseg $$uart_clearIRQ$uart
CFUNCTION 7

_uart_clearIRQ	:
CBLOCK 7 1 564

;;{
CLINEA 0000H 0001H 0234H 0001H 0001H
CBLOCK 7 2 564

;;	QUA0 = 0;
CLINEA 0000H 0001H 0235H 0002H 000AH
	rb	0f01ch.0
CBLOCKEND 7 2 566

;;}
CLINEA 0000H 0001H 0236H 0001H 0001H
	rt
CBLOCKEND 7 1 566
CFUNCTIONEND 7


	rseg $$uart_getTransSize$uart
CFUNCTION 8

_uart_getTransSize	:
CBLOCK 8 1 577

;;{
CLINEA 0000H 0001H 0241H 0001H 0001H
CBLOCK 8 2 577

;;	return _gsCtrlParam.cnt;
CLINEA 0000H 0001H 0242H 0002H 0019H
	l	er0,	NEAR __gsCtrlParam+04h
CBLOCKEND 8 2 579

;;}
CLINEA 0000H 0000H 0243H 0001H 0001H
	rt
CBLOCKEND 8 1 579
CFUNCTIONEND 8


	rseg $$uart_ErrSet$uart
CFUNCTION 9

_uart_ErrSet	:
CBLOCK 9 1 590

;;{
CLINEA 0000H 0001H 024EH 0001H 0001H
	mov	r2,	r0
CBLOCK 9 2 590
CARGUMENT 46H 0001H 0016H "status" 02H 00H 00H

;;	_Err_Status |= status;
CLINEA 0000H 0001H 024FH 0002H 0017H
	l	r0,	NEAR __Err_Status
	or	r0,	r2
	st	r0,	NEAR __Err_Status
CBLOCKEND 9 2 592

;;}
CLINEA 0000H 0001H 0250H 0001H 0001H
	rt
CBLOCKEND 9 1 592
CFUNCTIONEND 9


	rseg $$uart_ErrGet$uart
CFUNCTION 10

_uart_ErrGet	:
CBLOCK 10 1 602

;;{
CLINEA 0000H 0001H 025AH 0001H 0001H
CBLOCK 10 2 602

;;	return( _Err_Status );
CLINEA 0000H 0001H 025BH 0002H 0017H
	l	r0,	NEAR __Err_Status
CBLOCKEND 10 2 604

;;}
CLINEA 0000H 0000H 025CH 0001H 0001H
	rt
CBLOCKEND 10 1 604
CFUNCTIONEND 10


	rseg $$uart_ErrClr$uart
CFUNCTION 11

_uart_ErrClr	:
CBLOCK 11 1 614

;;{
CLINEA 0000H 0001H 0266H 0001H 0001H
CBLOCK 11 2 614

;;	_Err_Status = 0;
CLINEA 0000H 0001H 0267H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __Err_Status
CBLOCKEND 11 2 616

;;}
CLINEA 0000H 0001H 0268H 0001H 0001H
	rt
CBLOCKEND 11 1 616
CFUNCTIONEND 11


	rseg $$uart_PortSet$uart
CFUNCTION 12

_uart_PortSet	:
CBLOCK 12 1 626

;;{
CLINEA 0000H 0001H 0272H 0001H 0001H
CBLOCK 12 2 626

;;	PB1DIR = 0;		/* Output */
CLINEA 0000H 0001H 0275H 0002H 001AH
	rb	0f259h.1

;;	PB1C0 = 1;
CLINEA 0000H 0001H 0276H 0002H 000BH
	sb	0f25ah.1

;;	PB1C1 = 1;		/* CMOS */
CLINEA 0000H 0001H 0277H 0002H 0017H
	sb	0f25bh.1

;;	PB1MD0 = 1;
CLINEA 0000H 0001H 0278H 0002H 000CH
	sb	0f25ch.1

;;	PB1MD1 = 0;		/* UART TXD */
CLINEA 0000H 0001H 0279H 0002H 001CH
	rb	0f25dh.1

;;	PB0DIR = 1;		/* Input */
CLINEA 0000H 0001H 027BH 0002H 0019H
	sb	0f259h.0

;;	PB0C0 = 1;
CLINEA 0000H 0001H 027CH 0002H 000BH
	sb	0f25ah.0

;;	PB0C1 = 1;		/* Hi Impedance */
CLINEA 0000H 0001H 027DH 0002H 001FH
	sb	0f25bh.0

;;	PB0MD0 = 1;
CLINEA 0000H 0001H 027EH 0002H 000CH
	sb	0f25ch.0

;;	PB0MD1 = 0;		/* UART RXD */
CLINEA 0000H 0001H 027FH 0002H 001CH
	rb	0f25dh.0
CBLOCKEND 12 2 640

;;}
CLINEA 0000H 0001H 0280H 0001H 0001H
	rt
CBLOCKEND 12 1 640
CFUNCTIONEND 12


	rseg $$uart_PortClear$uart
CFUNCTION 13

_uart_PortClear	:
CBLOCK 13 1 650

;;{
CLINEA 0000H 0001H 028AH 0001H 0001H
CBLOCK 13 2 650

;;	PB1DIR = 0;		/* Output */
CLINEA 0000H 0001H 028DH 0002H 001AH
	rb	0f259h.1

;;	PB1C0 = 0;
CLINEA 0000H 0001H 028EH 0002H 000BH
	rb	0f25ah.1

;;	PB1C1 = 0;		/* Hi Impedance */
CLINEA 0000H 0001H 028FH 0002H 001FH
	rb	0f25bh.1

;;	PB1MD0 = 0;
CLINEA 0000H 0001H 0290H 0002H 000CH
	rb	0f25ch.1

;;	PB1MD1 = 0;	      /* General-purpose input/output mode */
CLINEA 0000H 0001H 0291H 0002H 003AH
	rb	0f25dh.1

;;	PB0DIR = 0;		/* Output */
CLINEA 0000H 0001H 0293H 0002H 001AH
	rb	0f259h.0

;;	PB0C0 = 0;
CLINEA 0000H 0001H 0294H 0002H 000BH
	rb	0f25ah.0

;;	PB0C1 = 0;		/* Hi Impedance */
CLINEA 0000H 0001H 0295H 0002H 001FH
	rb	0f25bh.0

;;	PB0MD0 = 0;
CLINEA 0000H 0001H 0296H 0002H 000CH
	rb	0f25ch.0

;;	PB0MD1 = 0;		/* General-purpose input/output mode */
CLINEA 0000H 0001H 0297H 0002H 0035H
	rb	0f25dh.0
CBLOCKEND 13 2 664

;;}
CLINEA 0000H 0001H 0298H 0001H 0001H
	rt
CBLOCKEND 13 1 664
CFUNCTIONEND 13


	rseg $$OLDuart_0_Init$uart
CFUNCTION 33

_OLDuart_0_Init	:
CBLOCK 33 1 669

;;{
CLINEA 0000H 0001H 029DH 0001H 0001H
CBLOCK 33 2 669

;;	PB0DIR = 1;		// PortB Bit0 set to Input  Mode...UART-RX
CLINEA 0000H 0001H 02A8H 0002H 0038H
	sb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...UART-TX
CLINEA 0000H 0001H 02A9H 0002H 0038H
	rb	0f259h.1

;;	PB0C1  = 1;		// PortB Bit0 set to (High-impedance input when PBxDIR=1)...
CLINEA 0000H 0001H 02ACH 0002H 004AH
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 02ADH 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output... 
CLINEA 0000H 0001H 02AEH 0002H 0032H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 02AFH 0002H 000DH
	sb	0f25ah.1

;;	PB0MD1  = 0;	// PortB Bit0 set to General-purpose input/output mode (initial value)
CLINEA 0000H 0001H 02B2H 0002H 0054H
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 02B3H 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 1;	// PortB Bit1 set to UART0 data output pin
CLINEA 0000H 0001H 02B4H 0002H 0038H
	sb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 02B5H 0002H 000EH
	rb	0f25ch.1

;;		U0EN = 0;	 // 0 = Stops communication. (Initial value)
CLINEA 0000H 0001H 02B9H 0003H 0038H
	rb	0f291h.0

;;		U0IO   = 0;	 // 0 = Transmit mode (initial value)
CLINEA 0000H 0001H 02BCH 0003H 0033H
	rb	0f292h.0

;;		U0CK1  = 1;	 // 10 => Select the HSCLK clock to be input to the baud rate generator of the UART0 		
CLINEA 0000H 0001H 02BEH 0003H 0065H
	sb	0f292h.2

;;		U0CK0  = 0;
CLINEA 0000H 0001H 02BFH 0003H 000DH
	rb	0f292h.1

;;		U0RSEL = 0;	 // 0 = Selects the PB0 pin as the RX Pin;
CLINEA 0000H 0001H 02C1H 0003H 0038H
	rb	0f292h.4

;;		U0RSS = 1;   // U0RSS bit is used to select the received data input sampling timing for the UART0...WAS 0!
CLINEA 0000H 0001H 02C3H 0003H 006CH
	sb	0f292h.5

;;		U0LG1 = 0;	 // 00=> 8-bit data length (initial value)... 
CLINEA 0000H 0001H 02C6H 0003H 003BH
	rb	0f293h.1

;;		U0LG0 = 0;
CLINEA 0000H 0001H 02C7H 0003H 000CH
	rb	0f293h.0

;;		U0PT1 = 1;	 // 10=> No PARITY bit (initial value)
CLINEA 0000H 0001H 02C9H 0003H 0033H
	sb	0f293h.3

;;		U0PT0 = 0;
CLINEA 0000H 0001H 02CAH 0003H 000CH
	rb	0f293h.2

;;		U0STP = 0;	 // 0=> 1-stop-bit (initial value)
CLINEA 0000H 0001H 02CCH 0003H 002FH
	rb	0f293h.4

;;		U0NEG = 0;	 // 0=> Positive Logic (initial value)
CLINEA 0000H 0001H 02CEH 0003H 0033H
	rb	0f293h.5

;;		U0DIR = 0;	 // 0=> LSB first (initial value)
CLINEA 0000H 0001H 02D0H 0003H 002EH
	rb	0f293h.6

;;	UA0BRT = ( unsigned short )( ( ( HSCLK_kHZ * 1000UL ) / UART_CalcBAUD ) - 1 );
CLINEA 0000H 0001H 02DDH 0002H 004FH
	mov	r0,	#054h
	mov	r1,	#03h
	st	er0,	0f294h
CBLOCKEND 33 2 734

;;}
CLINEA 0000H 0001H 02DEH 0001H 0001H
	rt
CBLOCKEND 33 1 734
CFUNCTIONEND 33

	public _uart_getTransSize
	public _uart_PortSet
	public _uart_0_Init
	public _uart_startReceive
	public _uart_checkIRQ
	public _uart_clearIRQ
	public _uart_ErrClr
	public _uart_ErrGet
	public _uart_ErrSet
	public _uart0_startReceive
	public _uart_stop
	public _uart_startSend
	public _uartSendStr
	public _OLDuart_0_Init
	public _uart_continue
	public _uart_PortClear
	extrn code near : _main

	rseg $$NINITTAB
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	00h
	align

	rseg $$NINITVAR
__gsCtrlParam :
	ds	0ah

	rseg $$NVARuart
__Err_Status :
	ds	01h

	end
