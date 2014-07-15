;; Compile Options : /TML610111 /MS /near /LE /Ii2c /Iirq /Imain /Itbc /Itimer /Iuart /Icommon /Imath /Istdio /Istdlib /Istring /Iyvals /CT _output\_prn\uart.cal /SS 256 /SD /Oa /Ot /W 3 /Zg /Fa_output\_obj\ /Lv /Zs 
;; Version Number  : Ver.3.41.8
;; File Name       : uart.c

	type (ML610111) 
	model small, near
	$$NVARuart segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$OLDuart_0_Init$uart segment code 2h #0h
	$$_send_byte$uart segment code 2h #0h
	$$uart0_startReceive$uart segment code 2h #0h
	$$uartSendStr$uart segment code 2h #0h
	$$uart_ErrClr$uart segment code 2h #0h
	$$uart_ErrGet$uart segment code 2h #0h
	$$uart_ErrSet$uart segment code 2h #0h
	$$uart_PortClear$uart segment code 2h #0h
	$$uart_PortSet$uart segment code 2h #0h
	$$uart_checkIRQ$uart segment code 2h #0h
	$$uart_clearIRQ$uart segment code 2h #0h
	$$uart_continue$uart segment code 2h #0h
	$$uart_getTransSize$uart segment code 2h #0h
	$$uart_init$uart segment code 2h #0h
	$$uart_startReceive$uart segment code 2h #0h
	$$uart_startSend$uart segment code 2h #0h
	$$uart_stop$uart segment code 2h #0h
CVERSION 3.41.8
CSGLOBAL 03H 0000H "_send_byte" 08H 02H 10H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 02H 0000H "uart_getTransSize" 08H 02H 08H 00H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_PortSet" 08H 02H 0CH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_startReceive" 08H 02H 03H 00H 82H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_init" 08H 02H 01H 00H 83H 1aH 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_checkIRQ" 08H 02H 06H 00H 82H 06H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_clearIRQ" 08H 02H 07H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_ErrClr" 08H 02H 0BH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 02H 0000H "uart_ErrGet" 08H 02H 0AH 00H 80H 00H 00H 00H 00H
CGLOBAL 01H 03H 0000H "uart_ErrSet" 08H 02H 09H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart0_startReceive" 08H 02H 14H 00H 83H 68H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_stop" 08H 02H 05H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_startSend" 08H 02H 02H 00H 82H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uartSendStr" 08H 02H 0FH 00H 83H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "OLDuart_0_Init" 08H 02H 21H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_continue" 08H 02H 04H 00H 83H 0cH 00H 00H 01H
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
CFILE 0002H 00000024H "main\\mcu.h"
CFILE 0003H 000007EEH "main\\ML610111.H"
CFILE 0004H 0000006FH "uart\\uart.h"
CFILE 0000H 0000031CH "uart\\uart.c"

	rseg $$uart_init$uart
CFUNCTION 1

_uart_init	:
CBLOCK 1 1 235

;;{
CLINEA 0000H 0001H 00EBH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_br_clk$0	set	-4
	_prm$4	set	4
	_br_cnt$4	set	-8
	_setbit$8	set	-9
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-010
	push	bp
	push	er8
	mov	r8,	r0
CBLOCK 1 2 235
CRET 0010H
CARGUMENT 46H 0001H 001CH "cs" 02H 00H 00H
CARGUMENT 46H 0002H 0025H "kHz" 02H 00H 01H
CARGUMENT 41H 0002H 0004H "prm" 06H 03H 00H 00H 05H 01H 00H
CLOCAL 42H 0004H 0004H 0002H "br_clk" 02H 00H 02H
CLOCAL 42H 0004H 0008H 0002H "br_cnt" 02H 00H 02H
CLOCAL 42H 0001H 0009H 0002H "setbit" 02H 00H 00H

;;	switch( (int)cs ){		//BAUD RATE CLOCK SET HERE...
CLINEA 0000H 0001H 00F1H 0002H 0032H
CBLOCK 1 3 241
	cmp	r0,	#00h
	beq	_$L6

;;	switch( (int)cs ){		//BAUD RATE CLOCK SET HERE...
CLINEA 0000H 0000H 00F1H 0002H 0032H
	cmp	r0,	#01h
	bne	_$M1
	b	_$L7
_$M1 :

;;	switch( (int)cs ){		//BAUD RATE CLOCK SET HERE...
CLINEA 0000H 0000H 00F1H 0002H 0032H
	cmp	r0,	#02h
	bne	_$M2
	b	_$L8
_$M2 :

;;			return ( UART_R_ERR_CS );		  // else CS error
CLINEA 0000H 0001H 0100H 0004H 0030H
	mov	er0,	#-1
CBLOCKEND 1 3 257
CBLOCKEND 1 2 346

;;}
CLINEA 0000H 0001H 015AH 0001H 0001H
_$L0 :
	pop	er8
	pop	bp
	mov	sp,	fp
	pop	fp
	pop	pc

;;		case UART_CS_LSCLK:
CLINEA 0000H 0001H 00F3H 0003H 0015H
_$L6 :

;;			br_clk = (unsigned long)32768;	  // i.e.: 32.768 kHz
CLINEA 0000H 0001H 00F4H 0004H 0037H
	mov	r0,	#00h
	mov	r1,	#080h
	mov	er2,	#0 

;;	} 
CLINEA 0000H 0000H 0101H 0002H 0003H
_$L4 :
	st	er0,	_br_clk$0[fp]
	st	er2,	_br_clk$0+02h[fp]

;;	br_cnt = br_clk / prm->br;
CLINEA 0000H 0001H 0102H 0002H 001BH
	l	bp,	_prm$4[fp]
	push	xr0
	l	er0,	[bp]
	l	er2,	2[bp]
	push	xr0
	bl	__uldivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	_br_cnt$4[fp]
	st	er2,	_br_cnt$4+02h[fp]

;;	if( br_cnt == 0UL ){			//If Baud Rate Count = zero...Return Baud Rate Error Flag
CLINEA 0000H 0001H 0103H 0002H 0051H
	cmp	r0,	#00h
	cmpc	r1,	#00h
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bne	_$L9
CBLOCK 1 4 259

;;		return ( UART_R_ERR_BR );
CLINEA 0000H 0001H 0104H 0003H 001BH
	mov	er0,	#-2
	bal	_$L0
CBLOCKEND 1 4 261

;;	}
CLINEA 0000H 0000H 0105H 0002H 0002H
_$L9 :

;;	br_cnt -= 1UL;
CLINEA 0000H 0001H 0106H 0002H 000FH
	add	er0,	#-1
	addc	r2,	#0ffh
	addc	r3,	#0ffh
	st	er0,	_br_cnt$4[fp]
	st	er2,	_br_cnt$4+02h[fp]

;;	if( prm->lg > (unsigned char)UART_LG_5BIT ){
CLINEA 0000H 0001H 0109H 0002H 002DH
	l	r0,	4[bp]
	cmp	r0,	#03h
	ble	_$L11
CBLOCK 1 5 265

;;		return ( UART_R_ERR_LG );
CLINEA 0000H 0001H 010AH 0003H 001BH
	mov	er0,	#-3
	bal	_$L0
CBLOCKEND 1 5 267

;;	}
CLINEA 0000H 0000H 010BH 0002H 0002H
_$L11 :

;;	if( prm->pt > (unsigned char)UART_PT_NON ){
CLINEA 0000H 0001H 010CH 0002H 002CH
	l	r0,	5[bp]
	cmp	r0,	#02h
	ble	_$L13
CBLOCK 1 6 268

;;		return ( UART_R_ERR_PT );
CLINEA 0000H 0001H 010DH 0003H 001BH
	mov	er0,	#-4
	bal	_$L0
CBLOCKEND 1 6 270

;;	}
CLINEA 0000H 0000H 010EH 0002H 0002H
_$L13 :

;;	if( prm->stp > (unsigned char)UART_STP_2BIT ){
CLINEA 0000H 0001H 010FH 0002H 002FH
	l	r0,	6[bp]
	cmp	r0,	#01h
	ble	_$L15
CBLOCK 1 7 271

;;		return ( UART_R_ERR_STP );
CLINEA 0000H 0001H 0110H 0003H 001CH
	mov	er0,	#-5
	bal	_$L0
CBLOCKEND 1 7 273

;;	}
CLINEA 0000H 0000H 0111H 0002H 0002H
_$L15 :

;;	if( prm->neg > (unsigned char)UART_NEG_NEG ){
CLINEA 0000H 0001H 0112H 0002H 002EH
	l	r0,	7[bp]
	cmp	r0,	#01h
	ble	_$L17
CBLOCK 1 8 274

;;		return ( UART_R_ERR_NEG );
CLINEA 0000H 0001H 0113H 0003H 001CH
	mov	er0,	#-6
	bal	_$L0
CBLOCKEND 1 8 276

;;	}
CLINEA 0000H 0000H 0114H 0002H 0002H
_$L17 :

;;	if( prm->dir > (unsigned char)UART_DIR_MSB ){
CLINEA 0000H 0001H 0115H 0002H 002EH
	l	r0,	8[bp]
	cmp	r0,	#01h
	ble	_$L19
CBLOCK 1 9 277

;;		return ( UART_R_ERR_DIR );
CLINEA 0000H 0001H 0116H 0003H 001CH
	mov	er0,	#-7
	bal	_$L0
CBLOCKEND 1 9 279

;;	}
CLINEA 0000H 0000H 0117H 0002H 0002H
_$L19 :

;;		_gsCtrlParam.data		= (void *)0;
CLINEA 0000H 0001H 011BH 0003H 0021H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam

;;		_gsCtrlParam.size		= 0;
CLINEA 0000H 0001H 011CH 0003H 0019H
	st	er0,	NEAR __gsCtrlParam+02h

;;		_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 011DH 0003H 0018H
	st	er0,	NEAR __gsCtrlParam+04h

;;		_gsCtrlParam.callBack	= (void *)0;
CLINEA 0000H 0001H 011EH 0003H 0024H
	st	er0,	NEAR __gsCtrlParam+06h

;;		_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 011FH 0003H 001BH
	st	r0,	NEAR __gsCtrlParam+08h

;;		U0EN = 0;
CLINEA 0000H 0001H 0123H 0003H 000BH
	rb	0f291h.0

;;		uart_PortClear();
CLINEA 0000H 0001H 0126H 0003H 0013H
	bl	_uart_PortClear

;;		setbit = UA0MOD0;
CLINEA 0000H 0001H 0129H 0003H 0013H
	l	r0,	0f292h

;;		setbit &= (unsigned char)( ~(UA0MOD0_U0CK0|UA0MOD0_U0CK1) );
CLINEA 0000H 0001H 012AH 0003H 003EH
	and	r0,	#0f9h
	st	r0,	_setbit$8[fp]

;;		setbit |= (unsigned char)( cs << 1 );
CLINEA 0000H 0001H 012BH 0003H 0027H
	mov	r0,	r8
	sll	r0,	#01h
	l	r1,	_setbit$8[fp]
	or	r1,	r0

;;		setbit |= (unsigned char)UA0MOD0_U0RSEL;
CLINEA 0000H 0001H 012CH 0003H 002AH
	mov	r0,	r1
	or	r0,	#010h

;;		UA0MOD0 = setbit;
CLINEA 0000H 0001H 012DH 0003H 0013H
	st	r0,	0f292h

;;		U0RSEL = 0;
CLINEA 0000H 0001H 012EH 0003H 000DH
	rb	0f292h.4

;;		setbit = UA0MOD1;
CLINEA 0000H 0001H 0131H 0003H 0013H
	l	r0,	0f293h

;;		setbit &= (unsigned char)( ~(UA0MOD1_U0LG0|UA0MOD1_U0LG1|UA0MOD1_U0PT0|UA0MOD1_U0PT1|UA0MOD1_U0STP|UA0MOD1_U0NEG|UA0MOD1_U0DIR) );
CLINEA 0000H 0001H 0132H 0003H 0084H
	and	r0,	#080h
	st	r0,	_setbit$8[fp]

;;			                   (prm->dir << 6) );
CLINEA 0000H 0001H 0137H 0017H 0028H
	l	bp,	_prm$4[fp]
	l	r0,	5[bp]
	sll	r0,	#02h
	l	r1,	4[bp]
	or	r1,	r0
	l	r0,	6[bp]
	sll	r0,	#04h
	or	r0,	r1
	l	r1,	7[bp]
	sll	r1,	#05h
	or	r1,	r0
	l	r0,	8[bp]
	sll	r0,	#06h
	or	r0,	r1
	l	r1,	_setbit$8[fp]
	or	r1,	r0
	st	r1,	_setbit$8[fp]

;;		UA0MOD1 = setbit;
CLINEA 0000H 0001H 0138H 0003H 0013H
	st	r1,	0f293h

;;		UA0BRTL = (unsigned char)(br_cnt & 0x000000FF);
CLINEA 0000H 0001H 013BH 0003H 0031H
	l	r0,	_br_cnt$4[fp]
	st	r0,	0f294h

;;		setbit = UA0BRTH;
CLINEA 0000H 0001H 013EH 0003H 0013H
	l	r0,	0f295h

;;		setbit &= (unsigned char)( ~(UA0BRTH_U0BR8|UA0BRTH_U0BR9|UA0BRTH_U0BR10|UA0BRTH_U0BR11) );
CLINEA 0000H 0001H 013FH 0003H 005CH
	and	r0,	#0f0h
	st	r0,	_setbit$8[fp]

;;		setbit |= (unsigned char)( (br_cnt >> 8) & (UA0BRTH_U0BR8|UA0BRTH_U0BR9|UA0BRTH_U0BR10|UA0BRTH_U0BR11) );
CLINEA 0000H 0001H 0140H 0003H 006BH
	l	r0,	_br_cnt$4+01h[fp]
	and	r0,	#0fh
	l	r1,	_setbit$8[fp]
	or	r1,	r0
	st	r1,	_setbit$8[fp]

;;		UA0BRTH = setbit;
CLINEA 0000H 0001H 0141H 0003H 0013H
	st	r1,	0f295h

;;		U0FER = 0;	// Clear Framing Error Flag to start...
CLINEA 0000H 0001H 0154H 0003H 0034H
	rb	0f296h.0

;;		U0OER = 0;	// Clear Overrun Error Flag to start...
CLINEA 0000H 0001H 0155H 0003H 0034H
	rb	0f296h.1

;;		U0PER = 0;	// Clear Parity Error Flag to start...
CLINEA 0000H 0001H 0156H 0003H 0033H
	rb	0f296h.2

;;		U0FUL = 0;	// Clear Buffer Full Flag to start...
CLINEA 0000H 0001H 0157H 0003H 0032H
	rb	0f296h.3

;;	return ( UART_R_OK );
CLINEA 0000H 0001H 0159H 0002H 0016H
	mov	er0,	#0 
	b	_$L0

;;		case UART_CS_LSCLK2:
CLINEA 0000H 0001H 00F7H 0003H 0016H
_$L7 :

;;			br_clk = (unsigned long)(32768 * 2);  // i.e.: 65.536 kHz
CLINEA 0000H 0001H 00F8H 0004H 003CH
	mov	er0,	#0 
	mov	er2,	#1 

;;			break;
CLINEA 0000H 0001H 00F9H 0004H 0009H
	b	_$L4

;;		case UART_CS_HSCLK:
CLINEA 0000H 0001H 00FBH 0003H 0015H
_$L8 :

;;			br_clk = (unsigned long)kHz * 1024UL; // i.e.: 8.192 MHz	
CLINEA 0000H 0001H 00FCH 0004H 003CH
	mov	er0,	er2
	mov	er2,	#0 
	sllc	r3,	#07h
	sllc	r2,	#07h
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r3,	#03h
	sllc	r2,	#03h
	sllc	r1,	#03h
	sll	r0,	#03h

;;			break;
CLINEA 0000H 0001H 00FDH 0004H 0009H
	b	_$L4
CBLOCKEND 1 1 346
CFUNCTIONEND 1


	rseg $$uartSendStr$uart
CFUNCTION 15

_uartSendStr	:
CBLOCK 15 1 349

;;{
CLINEA 0000H 0001H 015DH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_i$0	set	-1
	_ptr$2	set	-4
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-04
	push	xr8
	mov	er8,	er0
	mov	r10,	r2
CBLOCK 15 2 349
CRET 000AH
CARGUMENT 47H 0002H 0028H "str" 04H 03H 00H 00H 00H
CARGUMENT 46H 0001H 001EH "num" 02H 00H 00H
CLOCAL 42H 0001H 0001H 0002H "i" 02H 00H 00H
CLOCAL 42H 0002H 0004H 0002H "ptr" 04H 03H 00H 00H 00H

;;	unsigned char i = 0;
CLINEA 0000H 0001H 015EH 0002H 0015H
	mov	r0,	#00h
	st	r0,	_i$0[fp]

;;	unsigned char* ptr = (unsigned char*)str;
CLINEA 0000H 0001H 015FH 0002H 002AH
	st	er8,	_ptr$2[fp]

;;	while( i < num )
CLINEA 0000H 0001H 0162H 0002H 0011H
	bal	_$L22
_$L24 :
CBLOCK 15 3 355

;;		_send_byte( *(ptr+i) ); //Now send the Byte...
CLINEA 0000H 0001H 0164H 0003H 0030H
	mov	r1,	#00h
	l	er2,	_ptr$2[fp]
	add	er0,	er2
	l	r0,	[er0]
	bl	__send_byte

;;		i++;				// increment to select next byte...
CLINEA 0000H 0000H 0165H 0003H 002DH
	lea	_i$0[fp]
	inc	[ea]
	l	r0,	_i$0[fp]
CBLOCKEND 15 3 358

;;	}
CLINEA 0000H 0000H 0166H 0002H 0002H
_$L22 :

;;	while( i < num )
CLINEA 0000H 0000H 0162H 0000H 0000H
	cmp	r0,	r10
	blt	_$L24
CBLOCKEND 15 2 359

;;}
CLINEA 0000H 0001H 0167H 0001H 0001H
	pop	xr8
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 15 1 359
CFUNCTIONEND 15


	rseg $$_send_byte$uart
CFUNCTION 16

__send_byte	:
CBLOCK 16 1 362

;;{
CLINEA 0000H 0001H 016AH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 16 2 362
CARGUMENT 46H 0001H 0014H "c" 02H 00H 00H

;;	U0IO = 0; 		// 0 = Transmit mode (initial value)			
CLINEA 0000H 0001H 016BH 0002H 0034H
	rb	0f292h.0

;;	UA0BUF = c;		// Load byte into Buffer...
CLINEA 0000H 0001H 016CH 0002H 0029H
	st	r0,	0f290h

;;	U0EN = 1;		// START COMMUNICATION...		
CLINEA 0000H 0001H 016DH 0002H 0027H
	sb	0f291h.0

;;	while(U0EN != 0)	// In transmit mode, this bit is automatically set to 0 at termination of transmission.
CLINEA 0000H 0000H 016FH 0002H 0069H
_$L29 :
CBLOCK 16 3 368
CBLOCKEND 16 3 370
	tb	0f291h.0
	bne	_$L29

;;	QUA0 = 0;		//QUA0 is the request flag for the UART0 interrupt
CLINEA 0000H 0001H 0175H 0002H 003EH
	rb	0f01ch.0
CBLOCKEND 16 2 374

;;}
CLINEA 0000H 0001H 0176H 0001H 0001H
	rt
CBLOCKEND 16 1 374
CFUNCTIONEND 16


	rseg $$uart0_startReceive$uart
CFUNCTION 20

_uart0_startReceive	:
CBLOCK 20 1 391

;;{
CLINEA 0000H 0001H 0187H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_RX_Code$4	set	-100
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-0100
CBLOCK 20 2 391
CRET 0066H
CLOCAL 4BH 0004H 0000H 0002H "delay" 02H 00H 02H
CLOCAL 42H 0064H 0064H 0002H "RX_Code" 05H 01H 64H 00H 00H 00H

;;	U0EN = 0;  //UART0 Control Register Bit 0 - "0" Stops communication.
CLINEA 0000H 0001H 018CH 0002H 0045H
	rb	0f291h.0

;;		U0FER = 0; //UART0 Status Register Bit 0 - Clear Framing Error Flag
CLINEA 0000H 0001H 0190H 0003H 0045H
	rb	0f296h.0

;;		U0OER = 0; //UART0 Status Register Bit 1 - Clear Overrun Error Flag
CLINEA 0000H 0001H 0191H 0003H 0045H
	rb	0f296h.1

;;		U0PER = 0; //UART0 Status Register Bit 2 - Clear Parity  Error Flag
CLINEA 0000H 0001H 0192H 0003H 0045H
	rb	0f296h.2

;;		U0IO = 1;  //UART0 Mode Register 0 Bit 0 - "1" = Receive Mode	
CLINEA 0000H 0001H 0194H 0003H 0040H
	sb	0f292h.0

;;		RX_Code[0] = UA0BUF; //Copy buffer into array...
CLINEA 0000H 0001H 0196H 0003H 0032H
	l	r0,	0f290h
	st	r0,	_RX_Code$4[fp]

;;	U0EN = 1; //UART0 Control Register Bit 0 - "1" Starts communication
CLINEA 0000H 0001H 019AH 0002H 0044H
	sb	0f291h.0

;;		_send_byte(RX_Code[0] );//echo array
CLINEA 0000H 0001H 019EH 0003H 0026H
	bl	__send_byte
CBLOCKEND 20 2 418

;;}
CLINEA 0000H 0001H 01A2H 0001H 0001H
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 20 1 418
CFUNCTIONEND 20


	rseg $$uart_startSend$uart
CFUNCTION 2

_uart_startSend	:
CBLOCK 2 1 436

;;{
CLINEA 0000H 0001H 01B4H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_func$4	set	2
;;*****************************************

	push	fp
	mov	fp,	sp
	push	er8
	mov	er8,	er0
CBLOCK 2 2 436
CARGUMENT 46H 0002H 0028H "data" 04H 03H 00H 00H 00H
CARGUMENT 46H 0002H 0025H "size" 02H 00H 01H
CARGUMENT 43H 0002H 0002H "func" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;	U0EN = 0;
CLINEA 0000H 0001H 01B6H 0002H 000AH
	rb	0f291h.0

;;	U0IO = 0;
CLINEA 0000H 0001H 01B7H 0002H 000AH
	rb	0f292h.0

;;	_gsCtrlParam.data		= data;
CLINEA 0000H 0001H 01BAH 0002H 001BH
	st	er0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.size		= size;
CLINEA 0000H 0001H 01BBH 0002H 001BH
	st	er2,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 01BCH 0002H 0017H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.callBack	= func;
CLINEA 0000H 0001H 01BDH 0002H 001EH
	l	er0,	_func$4[fp]
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 01BEH 0002H 001AH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+08h

;;	if( _gsCtrlParam.size > 0 ){
CLINEA 0000H 0001H 01C0H 0002H 001DH
	cmp	r2,	#00h
	cmpc	r3,	#00h
	ble	_$L33
CBLOCK 2 3 448

;;		UA0BUF = *data;
CLINEA 0000H 0001H 01C2H 0003H 0011H
	l	r0,	[er8]
	st	r0,	0f290h

;;		_gsCtrlParam.data++;
CLINEA 0000H 0000H 01C3H 0003H 0016H
	l	er0,	NEAR __gsCtrlParam
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;		_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 01C4H 0003H 0015H
	l	er0,	NEAR __gsCtrlParam+04h
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;		U0EN = 1;
CLINEA 0000H 0001H 01C5H 0003H 000BH
	sb	0f291h.0
CBLOCKEND 2 3 454

;;	}
CLINEA 0000H 0000H 01C6H 0002H 0002H
_$L33 :
CBLOCKEND 2 2 455

;;}
CLINEA 0000H 0001H 01C7H 0001H 0001H
	pop	er8
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 2 1 455
CFUNCTIONEND 2


	rseg $$uart_startReceive$uart
CFUNCTION 3

_uart_startReceive	:
CBLOCK 3 1 467

;;{
CLINEA 0000H 0001H 01D3H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_func$4	set	2
;;*****************************************

	push	fp
	mov	fp,	sp
CBLOCK 3 2 467
CARGUMENT 46H 0002H 0024H "data" 04H 03H 00H 00H 00H
CARGUMENT 46H 0002H 0025H "size" 02H 00H 01H
CARGUMENT 43H 0002H 0002H "func" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;	U0EN = 0;
CLINEA 0000H 0001H 01D5H 0002H 000AH
	rb	0f291h.0

;;	U0FER = 0;
CLINEA 0000H 0001H 01D7H 0002H 000BH
	rb	0f296h.0

;;	U0OER = 0;
CLINEA 0000H 0001H 01D8H 0002H 000BH
	rb	0f296h.1

;;	U0PER = 0;
CLINEA 0000H 0001H 01D9H 0002H 000BH
	rb	0f296h.2

;;	U0IO = 1;
CLINEA 0000H 0001H 01DBH 0002H 000AH
	sb	0f292h.0

;;	_gsCtrlParam.data		= data;
CLINEA 0000H 0001H 01DDH 0002H 001BH
	st	er0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.size		= size;
CLINEA 0000H 0001H 01DEH 0002H 001BH
	st	er2,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 01DFH 0002H 0017H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.callBack	= func;
CLINEA 0000H 0001H 01E0H 0002H 001EH
	l	er0,	_func$4[fp]
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 01E1H 0002H 001AH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+08h

;;	if( _gsCtrlParam.size > 0 ){
CLINEA 0000H 0001H 01E3H 0002H 001DH
	cmp	r2,	#00h
	cmpc	r3,	#00h
	ble	_$L36
CBLOCK 3 3 483

;;		U0EN = 1;
CLINEA 0000H 0001H 01E5H 0003H 000BH
	sb	0f291h.0
CBLOCKEND 3 3 486

;;	}
CLINEA 0000H 0000H 01E6H 0002H 0002H
_$L36 :
CBLOCKEND 3 2 487

;;}
CLINEA 0000H 0001H 01E7H 0001H 0001H
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 3 1 487
CFUNCTIONEND 3


	rseg $$uart_continue$uart
CFUNCTION 4

_uart_continue	:
CBLOCK 4 1 503

;;{
CLINEA 0000H 0001H 01F7H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_u0io$0	set	-1
	_u0ful$2	set	-2
	_u0en$4	set	-3
	_errStat$6	set	-4
	_cbfTmp$8	set	-6
;;*****************************************

	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-06
	push	bp
CBLOCK 4 2 503
CRET 000AH
CLOCAL 42H 0001H 0001H 0002H "u0io" 02H 00H 00H
CLOCAL 42H 0001H 0002H 0002H "u0ful" 02H 00H 00H
CLOCAL 42H 0001H 0003H 0002H "u0en" 02H 00H 00H
CLOCAL 42H 0001H 0004H 0002H "errStat" 02H 00H 00H
CLOCAL 43H 0002H 0006H 0002H "cbfTmp" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;	u0io = (unsigned char)( UA0MOD0 & (unsigned char)UA0MOD0_U0IO );
CLINEA 0000H 0001H 01FEH 0002H 0041H
	l	r0,	0f292h
	and	r0,	#01h
	st	r0,	_u0io$0[fp]

;;	if( u0io == 0 ){
CLINEA 0000H 0001H 0200H 0002H 0011H
	cmp	r0,	#00h
	bne	_$L39
CBLOCK 4 3 512

;;		if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 0202H 0003H 002EH
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L41
CBLOCK 4 4 514

;;			u0ful = (unsigned char)( UA0STAT & (unsigned char)UA0STAT_U0FUL );
CLINEA 0000H 0001H 0204H 0004H 0045H
	l	r0,	0f296h
	and	r0,	#08h
	st	r0,	_u0ful$2[fp]

;;			if( u0ful == 0 ){
CLINEA 0000H 0001H 0206H 0004H 0014H
	cmp	r0,	#00h
	bne	_$L43
CBLOCK 4 5 518

;;				UA0BUF = *_gsCtrlParam.data;
CLINEA 0000H 0001H 0207H 0005H 0020H
	l	bp,	NEAR __gsCtrlParam
	l	r0,	[bp]
	st	r0,	0f290h

;;				_gsCtrlParam.data++;
CLINEA 0000H 0000H 0208H 0005H 0018H
	mov	er0,	bp
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;				_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 0209H 0005H 0017H
	mov	er0,	er2
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;				U0EN = 1;
CLINEA 0000H 0001H 020AH 0005H 000DH
	sb	0f291h.0

;;				return ( UART_R_TRANS_CONT_OK );
CLINEA 0000H 0001H 020BH 0005H 0024H
	mov	er0,	#0 
CBLOCKEND 4 5 524
CBLOCKEND 4 2 574

;;}
CLINEA 0000H 0001H 023EH 0001H 0001H
_$L38 :
	pop	bp
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 4 3 574
CBLOCKEND 4 4 574

;;			else{
CLINEA 0000H 0000H 020DH 0004H 0008H
_$L43 :
CBLOCK 4 6 525

;;				return ( UART_R_TRANS_CONT_NG );
CLINEA 0000H 0001H 020EH 0005H 0024H
	mov	er0,	#-1
	bal	_$L38
CBLOCKEND 4 6 527

;;		else{
CLINEA 0000H 0000H 0211H 0003H 0007H
_$L41 :
CBLOCK 4 7 529

;;			u0en = (unsigned char)( UA0CON & (unsigned char)UA0CON_U0EN );
CLINEA 0000H 0001H 0213H 0004H 0041H
	l	r0,	0f291h
	and	r0,	#01h
	st	r0,	_u0en$4[fp]

;;			if( u0en == 0 ){
CLINEA 0000H 0001H 0214H 0004H 0013H
	cmp	r0,	#00h
	bne	_$L47
CBLOCK 4 8 532

;;				if( _gsCtrlParam.callBack != (void *)0 ){
CLINEA 0000H 0001H 0216H 0005H 002DH
	l	er0,	NEAR __gsCtrlParam+06h
	beq	_$L49
CBLOCK 4 9 534

;;					_gsCtrlParam.callBack( _gsCtrlParam.size, _gsCtrlParam.errStat );
CLINEA 0000H 0001H 0217H 0006H 0046H
	l	r2,	NEAR __gsCtrlParam+08h
	l	er0,	NEAR __gsCtrlParam+02h
	l	bp,	NEAR __gsCtrlParam+06h
	bl	bp

;;					_gsCtrlParam.callBack = (void *)0;
CLINEA 0000H 0001H 0218H 0006H 0027H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+06h
CBLOCKEND 4 9 537

;;				}
CLINEA 0000H 0000H 0219H 0005H 0005H
_$L49 :

;;				return ( UART_R_TRANS_FIN );
CLINEA 0000H 0001H 021AH 0005H 0020H
	mov	er0,	#1 
	bal	_$L38
CBLOCKEND 4 8 539

;;			}
CLINEA 0000H 0000H 021BH 0004H 0004H
_$L47 :

;;			return ( UART_R_TRANS_FIN_NG );
CLINEA 0000H 0001H 021CH 0004H 0022H
	mov	er0,	#-2
	bal	_$L38
CBLOCKEND 4 7 541

;;	else{
CLINEA 0000H 0000H 0220H 0002H 0006H
_$L39 :
CBLOCK 4 10 544

;;		if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 0222H 0003H 002EH
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L58
CBLOCK 4 11 546

;;			errStat = (unsigned char)( UA0STAT & (unsigned char)(UA0STAT_U0FER|UA0STAT_U0OER|UA0STAT_U0PER) );
CLINEA 0000H 0001H 0223H 0004H 0065H
	l	r0,	0f296h
	and	r0,	#07h
	st	r0,	_errStat$6[fp]

;;			_gsCtrlParam.errStat |= errStat;
CLINEA 0000H 0001H 0224H 0004H 0023H
	l	r0,	NEAR __gsCtrlParam+08h
	l	r1,	_errStat$6[fp]
	or	r0,	r1
	st	r0,	NEAR __gsCtrlParam+08h

;;			U0FER = 0;
CLINEA 0000H 0001H 0225H 0004H 000DH
	rb	0f296h.0

;;			U0OER = 0;
CLINEA 0000H 0001H 0226H 0004H 000DH
	rb	0f296h.1

;;			U0PER = 0;
CLINEA 0000H 0001H 0227H 0004H 000DH
	rb	0f296h.2

;;			*_gsCtrlParam.data = UA0BUF;
CLINEA 0000H 0001H 0228H 0004H 001FH
	l	bp,	NEAR __gsCtrlParam
	l	r0,	0f290h
	st	r0,	[bp]

;;			_gsCtrlParam.data++;
CLINEA 0000H 0000H 0229H 0004H 0017H
	l	er0,	NEAR __gsCtrlParam
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;			_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 022AH 0004H 0016H
	l	er0,	NEAR __gsCtrlParam+04h
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;			if( ( errStat & ( unsigned char )( UA0STAT_U0FER ) ) == 0 ) {
CLINEA 0000H 0001H 022CH 0004H 0040H
	l	r0,	_errStat$6[fp]
	tb	r0.0
	bne	_$L54
CBLOCK 4 12 556

;;				if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 022EH 0005H 0030H
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L58
CBLOCK 4 13 558

;;					return ( UART_R_TRANS_CONT_OK );
CLINEA 0000H 0001H 022FH 0006H 0025H
	mov	er0,	#0 
	b	_$L38
CBLOCKEND 4 13 560

;;				}
CLINEA 0000H 0000H 0230H 0005H 0005H
CBLOCKEND 4 12 561

;;			} else {
CLINEA 0000H 0000H 0231H 0004H 000BH
_$L54 :
CBLOCK 4 14 561

;;				uart_ErrSet( UA0STAT_U0FER );
CLINEA 0000H 0001H 0233H 0005H 0021H
	mov	r0,	#01h
	bl	_uart_ErrSet
CBLOCKEND 4 14 564

;;			}
CLINEA 0000H 0000H 0234H 0004H 0004H
_$L58 :
CBLOCKEND 4 11 565

;;		if( _gsCtrlParam.callBack != (void *)0 ){
CLINEA 0000H 0001H 0237H 0003H 002BH
	l	er0,	NEAR __gsCtrlParam+06h
	beq	_$L59
CBLOCK 4 15 567

;;			cbfTmp = _gsCtrlParam.callBack;
CLINEA 0000H 0001H 0238H 0004H 0022H
	st	er0,	_cbfTmp$8[fp]

;;			_gsCtrlParam.callBack = (void *)0;
CLINEA 0000H 0001H 0239H 0004H 0025H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+06h

;;			cbfTmp( _gsCtrlParam.size, _gsCtrlParam.errStat );
CLINEA 0000H 0001H 023AH 0004H 0035H
	l	r2,	NEAR __gsCtrlParam+08h
	l	er0,	NEAR __gsCtrlParam+02h
	l	bp,	_cbfTmp$8[fp]
	bl	bp
CBLOCKEND 4 15 571

;;		}
CLINEA 0000H 0000H 023BH 0003H 0003H
_$L59 :

;;		return ( UART_R_TRANS_FIN );
CLINEA 0000H 0001H 023CH 0003H 001EH
	mov	er0,	#1 
	b	_$L38
CBLOCKEND 4 10 573
CBLOCKEND 4 1 574
CFUNCTIONEND 4


	rseg $$uart_stop$uart
CFUNCTION 5

_uart_stop	:
CBLOCK 5 1 584

;;{
CLINEA 0000H 0001H 0248H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 5 2 584

;;	U0EN = 0;
CLINEA 0000H 0001H 0249H 0002H 000AH
	rb	0f291h.0

;;	_gsCtrlParam.data		= (void *)0;
CLINEA 0000H 0001H 024AH 0002H 0020H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.size		= 0;
CLINEA 0000H 0001H 024BH 0002H 0018H
	st	er0,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 024CH 0002H 0017H
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.callBack	= (void *)0;
CLINEA 0000H 0001H 024DH 0002H 0023H
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 024EH 0002H 001AH
	st	r0,	NEAR __gsCtrlParam+08h
CBLOCKEND 5 2 591

;;}
CLINEA 0000H 0001H 024FH 0001H 0001H
	rt
CBLOCKEND 5 1 591
CFUNCTIONEND 5


	rseg $$uart_checkIRQ$uart
CFUNCTION 6

_uart_checkIRQ	:
CBLOCK 6 1 603

;;{
CLINEA 0000H 0001H 025BH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
	_qua0$0	set	-1
	_ret$2	set	-4
;;*****************************************

	push	fp
	mov	fp,	sp
	add	sp,	#-04
CBLOCK 6 2 603
CLOCAL 42H 0001H 0001H 0002H "qua0" 02H 00H 00H
CLOCAL 43H 0002H 0004H 0002H "ret" 02H 00H 01H

;;	qua0 = (unsigned char)( IRQ4 & (unsigned char)IRQ4_QUA0 );
CLINEA 0000H 0001H 025FH 0002H 003BH
	l	r0,	0f01ch
	and	r0,	#01h
	st	r0,	_qua0$0[fp]

;;	if( qua0 == 1 ){
CLINEA 0000H 0001H 0260H 0002H 0011H
	cmp	r0,	#01h
	bne	_$L63
CBLOCK 6 3 608

;;		ret = ( UART_R_IRQ );
CLINEA 0000H 0001H 0261H 0003H 0017H
	mov	er0,	#1 
CBLOCKEND 6 3 610

;;	else{
CLINEA 0000H 0001H 0263H 0002H 0006H
	bal	_$L65
_$L63 :
CBLOCK 6 4 611

;;		ret = ( UART_R_NON_IRQ );
CLINEA 0000H 0001H 0264H 0003H 001BH
	mov	er0,	#0 
CBLOCKEND 6 4 613

;;	}
CLINEA 0000H 0000H 0265H 0002H 0002H
_$L65 :
	st	er0,	_ret$2[fp]

;;	return ret;
CLINEA 0000H 0001H 0267H 0002H 000CH
CBLOCKEND 6 2 616

;;}
CLINEA 0000H 0000H 0268H 0001H 0001H
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 6 1 616
CFUNCTIONEND 6


	rseg $$uart_clearIRQ$uart
CFUNCTION 7

_uart_clearIRQ	:
CBLOCK 7 1 626

;;{
CLINEA 0000H 0001H 0272H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 7 2 626

;;	QUA0 = 0;
CLINEA 0000H 0001H 0273H 0002H 000AH
	rb	0f01ch.0
CBLOCKEND 7 2 628

;;}
CLINEA 0000H 0001H 0274H 0001H 0001H
	rt
CBLOCKEND 7 1 628
CFUNCTIONEND 7


	rseg $$uart_getTransSize$uart
CFUNCTION 8

_uart_getTransSize	:
CBLOCK 8 1 639

;;{
CLINEA 0000H 0001H 027FH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 8 2 639

;;	return _gsCtrlParam.cnt;
CLINEA 0000H 0001H 0280H 0002H 0019H
	l	er0,	NEAR __gsCtrlParam+04h
CBLOCKEND 8 2 641

;;}
CLINEA 0000H 0000H 0281H 0001H 0001H
	rt
CBLOCKEND 8 1 641
CFUNCTIONEND 8


	rseg $$uart_ErrSet$uart
CFUNCTION 9

_uart_ErrSet	:
CBLOCK 9 1 652

;;{
CLINEA 0000H 0001H 028CH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	mov	r2,	r0
CBLOCK 9 2 652
CARGUMENT 46H 0001H 0016H "status" 02H 00H 00H

;;	_Err_Status |= status;
CLINEA 0000H 0001H 028DH 0002H 0017H
	l	r0,	NEAR __Err_Status
	or	r0,	r2
	st	r0,	NEAR __Err_Status
CBLOCKEND 9 2 654

;;}
CLINEA 0000H 0001H 028EH 0001H 0001H
	rt
CBLOCKEND 9 1 654
CFUNCTIONEND 9


	rseg $$uart_ErrGet$uart
CFUNCTION 10

_uart_ErrGet	:
CBLOCK 10 1 664

;;{
CLINEA 0000H 0001H 0298H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 10 2 664

;;	return( _Err_Status );
CLINEA 0000H 0001H 0299H 0002H 0017H
	l	r0,	NEAR __Err_Status
CBLOCKEND 10 2 666

;;}
CLINEA 0000H 0000H 029AH 0001H 0001H
	rt
CBLOCKEND 10 1 666
CFUNCTIONEND 10


	rseg $$uart_ErrClr$uart
CFUNCTION 11

_uart_ErrClr	:
CBLOCK 11 1 676

;;{
CLINEA 0000H 0001H 02A4H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 11 2 676

;;	_Err_Status = 0;
CLINEA 0000H 0001H 02A5H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __Err_Status
CBLOCKEND 11 2 678

;;}
CLINEA 0000H 0001H 02A6H 0001H 0001H
	rt
CBLOCKEND 11 1 678
CFUNCTIONEND 11


	rseg $$uart_PortSet$uart
CFUNCTION 12

_uart_PortSet	:
CBLOCK 12 1 688

;;{
CLINEA 0000H 0001H 02B0H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 12 2 688

;;	PB1DIR = 0;		/* Output */
CLINEA 0000H 0001H 02B3H 0002H 001AH
	rb	0f259h.1

;;	PB1C0 = 1;
CLINEA 0000H 0001H 02B4H 0002H 000BH
	sb	0f25ah.1

;;	PB1C1 = 1;		/* CMOS */
CLINEA 0000H 0001H 02B5H 0002H 0017H
	sb	0f25bh.1

;;	PB1MD0 = 1;
CLINEA 0000H 0001H 02B6H 0002H 000CH
	sb	0f25ch.1

;;	PB1MD1 = 0;		/* UART TXD */
CLINEA 0000H 0001H 02B7H 0002H 001CH
	rb	0f25dh.1

;;	PB0DIR = 1;		/* Input */
CLINEA 0000H 0001H 02B9H 0002H 0019H
	sb	0f259h.0

;;	PB0C0 = 1;
CLINEA 0000H 0001H 02BAH 0002H 000BH
	sb	0f25ah.0

;;	PB0C1 = 1;		/* Hi Impedance */
CLINEA 0000H 0001H 02BBH 0002H 001FH
	sb	0f25bh.0

;;	PB0MD0 = 1;
CLINEA 0000H 0001H 02BCH 0002H 000CH
	sb	0f25ch.0

;;	PB0MD1 = 0;		/* UART RXD */
CLINEA 0000H 0001H 02BDH 0002H 001CH
	rb	0f25dh.0
CBLOCKEND 12 2 702

;;}
CLINEA 0000H 0001H 02BEH 0001H 0001H
	rt
CBLOCKEND 12 1 702
CFUNCTIONEND 12


	rseg $$uart_PortClear$uart
CFUNCTION 13

_uart_PortClear	:
CBLOCK 13 1 712

;;{
CLINEA 0000H 0001H 02C8H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 13 2 712

;;	PB1DIR = 0;		/* Output */
CLINEA 0000H 0001H 02CBH 0002H 001AH
	rb	0f259h.1

;;	PB1C0 = 0;
CLINEA 0000H 0001H 02CCH 0002H 000BH
	rb	0f25ah.1

;;	PB1C1 = 0;		/* Hi Impedance */
CLINEA 0000H 0001H 02CDH 0002H 001FH
	rb	0f25bh.1

;;	PB1MD0 = 0;
CLINEA 0000H 0001H 02CEH 0002H 000CH
	rb	0f25ch.1

;;	PB1MD1 = 0;	      /* General-purpose input/output mode */
CLINEA 0000H 0001H 02CFH 0002H 003AH
	rb	0f25dh.1

;;	PB0DIR = 0;		/* Output */
CLINEA 0000H 0001H 02D1H 0002H 001AH
	rb	0f259h.0

;;	PB0C0 = 0;
CLINEA 0000H 0001H 02D2H 0002H 000BH
	rb	0f25ah.0

;;	PB0C1 = 0;		/* Hi Impedance */
CLINEA 0000H 0001H 02D3H 0002H 001FH
	rb	0f25bh.0

;;	PB0MD0 = 0;
CLINEA 0000H 0001H 02D4H 0002H 000CH
	rb	0f25ch.0

;;	PB0MD1 = 0;		/* General-purpose input/output mode */
CLINEA 0000H 0001H 02D5H 0002H 0035H
	rb	0f25dh.0
CBLOCKEND 13 2 726

;;}
CLINEA 0000H 0001H 02D6H 0001H 0001H
	rt
CBLOCKEND 13 1 726
CFUNCTIONEND 13


	rseg $$OLDuart_0_Init$uart
CFUNCTION 33

_OLDuart_0_Init	:
CBLOCK 33 1 731

;;{
CLINEA 0000H 0001H 02DBH 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 33 2 731

;;	PB0DIR = 1;		// PortB Bit0 set to Input  Mode...UART-RX
CLINEA 0000H 0001H 02E6H 0002H 0038H
	sb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...UART-TX
CLINEA 0000H 0001H 02E7H 0002H 0038H
	rb	0f259h.1

;;	PB0C1  = 1;		// PortB Bit0 set to (High-impedance input when PBxDIR=1)...
CLINEA 0000H 0001H 02EAH 0002H 004AH
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 02EBH 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output... 
CLINEA 0000H 0001H 02ECH 0002H 0032H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 02EDH 0002H 000DH
	sb	0f25ah.1

;;	PB0MD1  = 0;	// PortB Bit0 set to General-purpose input/output mode (initial value)
CLINEA 0000H 0001H 02F0H 0002H 0054H
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 02F1H 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 1;	// PortB Bit1 set to UART0 data output pin
CLINEA 0000H 0001H 02F2H 0002H 0038H
	sb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 02F3H 0002H 000EH
	rb	0f25ch.1

;;		U0EN = 0;	 // 0 = Stops communication. (Initial value)
CLINEA 0000H 0001H 02F7H 0003H 0038H
	rb	0f291h.0

;;		U0IO   = 0;	 // 0 = Transmit mode (initial value)
CLINEA 0000H 0001H 02FAH 0003H 0033H
	rb	0f292h.0

;;		U0CK1  = 1;	 // 10 => Select the HSCLK clock to be input to the baud rate generator of the UART0 		
CLINEA 0000H 0001H 02FCH 0003H 0065H
	sb	0f292h.2

;;		U0CK0  = 0;
CLINEA 0000H 0001H 02FDH 0003H 000DH
	rb	0f292h.1

;;		U0RSEL = 0;	 // 0 = Selects the PB0 pin as the RX Pin;
CLINEA 0000H 0001H 02FFH 0003H 0038H
	rb	0f292h.4

;;		U0RSS = 1;   // U0RSS bit is used to select the received data input sampling timing for the UART0...WAS 0!
CLINEA 0000H 0001H 0301H 0003H 006CH
	sb	0f292h.5

;;		U0LG1 = 0;	 // 00=> 8-bit data length (initial value)... 
CLINEA 0000H 0001H 0304H 0003H 003BH
	rb	0f293h.1

;;		U0LG0 = 0;
CLINEA 0000H 0001H 0305H 0003H 000CH
	rb	0f293h.0

;;		U0PT1 = 1;	 // 10=> No PARITY bit (initial value)
CLINEA 0000H 0001H 0307H 0003H 0033H
	sb	0f293h.3

;;		U0PT0 = 0;
CLINEA 0000H 0001H 0308H 0003H 000CH
	rb	0f293h.2

;;		U0STP = 0;	 // 0=> 1-stop-bit (initial value)
CLINEA 0000H 0001H 030AH 0003H 002FH
	rb	0f293h.4

;;		U0NEG = 0;	 // 0=> Positive Logic (initial value)
CLINEA 0000H 0001H 030CH 0003H 0033H
	rb	0f293h.5

;;		U0DIR = 0;	 // 0=> LSB first (initial value)
CLINEA 0000H 0001H 030EH 0003H 002EH
	rb	0f293h.6

;;	UA0BRT = ( unsigned short )( ( ( HSCLK_kHZ * 1000UL ) / UART_CalcBAUD ) - 1 );
CLINEA 0000H 0001H 031BH 0002H 004FH
	mov	r0,	#054h
	mov	r1,	#03h
	st	er0,	0f294h
CBLOCKEND 33 2 796

;;}
CLINEA 0000H 0001H 031CH 0001H 0001H
	rt
CBLOCKEND 33 1 796
CFUNCTIONEND 33

	public _uart_getTransSize
	public _uart_PortSet
	public _uart_startReceive
	public _uart_init
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
	extrn code : __uldivu8sw

	end
