/******************************************************************************
	uart.c  //Adapted to work with Q100 series micros...C. Schell 4/9/2013

    Copyright (C) 2012 LAPIS Semiconductor Co., Ltd.
    All rights reserved.

    This software is provided "as is" and any expressed or implied
    warranties, including, but not limited to, the implied warranties of
    merchantability and fitness for a particular purpose are disclaimed.
    LAPIS Semiconductor shall not be liable for any direct, indirect,
    consequential or incidental damages arising from using or modifying
    this software.
    You (customer) can modify and use this software in whole or part on
    your own responsibility, only for the purpose of developing the software
    for use with microcontroller manufactured by LAPIS Semiconductor.

    History
    2012.10.12  ver.1.00
    2013.04.09  ver 1.10  //Adapted to work with Q100 series micros...C. Schell 4/9/2013 
******************************************************************************/

//Microcontroller's connections on the LaPi Development Board to the 
//  Plug 'n Play, Raspberry Pi Compatable, Universal Connectors:
//
// Updated April 9th, 2013 - C. Schell
//
// ================================ ML610Q111 ================================= 
//
// Pin-01 => 3.3V Power				Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q111 I/O B.6)	Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q111 I/O B.5)*	Pin-06 => GROUND
// Pin-07 => GPIO #04 (Q111 I/O B.2)	Pin-08 => UART-TX  (Q111 I/O B.1)
// Pin-09 => no connection			Pin-10 => UART-RX  (Q111 I/O B.0) 
// Pin-11 => GPIO #17 (Q111 I/O A.0)	Pin-12 => GPIO #18 (Q111 I/O B.7)
// Pin-13 => GPIO #21 (Q111 I/O A.1)	Pin-14 => no connection
// Pin-15 => GPIO #22 (Q111 I/O A.2)	Pin-16 => GPIO #23 (Q111 I/O C.2)
// Pin-17 => no connection			Pin-18 => GPIO #24 (Q111 I/O C.3)
// Pin-19 => SPI-MOSI (Q111 I/O B.4)	Pin-20 => no connection
// Pin-21 => SPI-MISO (Q111 I/O B.3)	Pin-22 => GPIO #25 (Q111 I/O B.2)
// Pin-23 => SPI-SCLK (Q111 I/O B.5)*	Pin-24 => SPI-CS0  (Q111 I/O C.0)
// Pin-25 => no connection			Pin-26 => SPI-CS1  (Q111 I/O C.1)
//
//=============================================================================

// ================================ ML610Q112 ================================= 
//
// Pin-01 => 3.3V Power				Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q112 I/O B.6)	Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q112 I/O B.5)*	Pin-06 => GROUND
// Pin-07 => GPIO #04 (Q112 I/O B.2)	Pin-08 => UART-TX  (Q112 I/O B.1)
// Pin-09 => no connection			Pin-10 => UART-RX  (Q112 I/O B.0) 
// Pin-11 => GPIO #17 (Q112 I/O C.0)	Pin-12 => GPIO #18 (Q112 I/O B.7)
// Pin-13 => GPIO #21 (Q112 I/O C.1)	Pin-14 => no connection
// Pin-15 => GPIO #22 (Q112 I/O C.2)	Pin-16 => GPIO #23 (Q112 I/O D.1)
// Pin-17 => no connection			Pin-18 => GPIO #24 (Q112 I/O D.2)
// Pin-19 => SPI-MOSI (Q112 I/O B.4)	Pin-20 => no connection
// Pin-21 => SPI-MISO (Q112 I/O B.3)	Pin-22 => GPIO #25 (Q112 I/O D.3)
// Pin-23 => SPI-SCLK (Q112 I/O B.5)*	Pin-24 => SPI-CS0  (Q112 I/O D.4)
// Pin-25 => no connection			Pin-26 => SPI-CS1  (Q112 I/O D.5)
//
//=============================================================================

// Thus for both the Q111 & Q112, the desired UART Pins are:
//	UART-TX  (Q111/Q112 I/O B.1)
//	UART-RX  (Q111Q112  I/O B.0)

#include "common.h"
#include "mcu.h"
#include "uart.h" 

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/

/*--- UART ---*/
#define UART_CalcBAUD ( 9600UL ) // both Serial LCD & LaPi GUI (Re-Open Port in GUI)

// => THIS ENTIRE SECTION HAS BEEN ADAPTED FROM THE Q400 SERIES FOR THE Q100 SERIES - C. Schell 4/17/2013

// IRQ4 (UART 0&1 & COMP 0&1)
#define IRQ4_QUA0			( 0x1u  )			// IRQ4 Register QUA0 bit (UART0)
#define IRQ4_QUA1			( 0x2u  )			// IRQ4 Register QUA0 bit (UART1)
#define IRQ4_QCMP0		( 0x4u  )			// IRQ4 Register QUA0 bit (COMP0)
#define IRQ4_QCMP1		( 0x8u  )			// IRQ4 Register QUA0 bit (COMP1)

// => Adapted from Q4xx Series for Q1xx Series
// UAxBUF 
#define UA0BUF_U0B0			( 0x1u )		/* UA0BUF Register U0B0 bit */
#define UA0BUF_U0B1			( 0x2u )		/* UA0BUF Register U0B1 bit */
#define UA0BUF_U0B2			( 0x4u )		/* UA0BUF Register U0B2 bit */
#define UA0BUF_U0B3			( 0x8u )		/* UA0BUF Register U0B3 bit */
#define UA0BUF_U0B4			( 0x10u )		/* UA0BUF Register U0B4 bit */
#define UA0BUF_U0B5			( 0x20u )		/* UA0BUF Register U0B5 bit */
#define UA0BUF_U0B6			( 0x40u )		/* UA0BUF Register U0B6 bit */
#define UA0BUF_U0B7			( 0x80u )		/* UA0BUF Register U0B7 bit */

#define UA1BUF_U1B0			( 0x1u )		// UA1BUF Register U1B0 bit 
#define UA1BUF_U1B1			( 0x2u )		// UA1BUF Register U1B1 bit 
#define UA1BUF_U1B2			( 0x4u )		// UA1BUF Register U1B2 bit 
#define UA1BUF_U1B3			( 0x8u )		// UA1BUF Register U1B3 bit 
#define UA1BUF_U1B4			( 0x10u )		// UA1BUF Register U1B4 bit 
#define UA1BUF_U1B5			( 0x20u )		// UA1BUF Register U1B5 bit 
#define UA1BUF_U1B6			( 0x40u )		// UA1BUF Register U1B6 bit 
#define UA1BUF_U1B7			( 0x80u )		// UA1BUF Register U1B7 bit 

///* UAxCON */
#define UA0CON_U0EN			( 0x1u )		/* UA0CON Register U0EN bit */
#define UA1CON_U1EN			( 0x1u )		// UA1CON Register U1EN bit 

///* UA0MOD0 */
#define UA0MOD0_U0IO		( 0x1u )		/* UA0MOD0 Register U0IO bit   */
#define UA0MOD0_U0CK0		( 0x2u )		/* UA0MOD0 Register U0CK0 bit  */
#define UA0MOD0_U0CK1		( 0x4u )		/* UA0MOD0 Register U0CK1 bit  */
#define UA0MOD0_U0RSEL		( 0x10u )		/* UA0MOD0 Register U0RSEL bit */
#define UA0MOD0_U0RSS		( 0x20u )		// used to select the received data input sampling timing

///* UA0MOD1 */
#define UA0MOD1_U0LG0		( 0x1u )		/* UA0MOD1 Register U0LG0 bit */
#define UA0MOD1_U0LG1		( 0x2u )		/* UA0MOD1 Register U0LG1 bit */
#define UA0MOD1_U0PT0		( 0x4u )		/* UA0MOD1 Register U0PT0 bit */
#define UA0MOD1_U0PT1		( 0x8u )		/* UA0MOD1 Register U0PT1 bit */
#define UA0MOD1_U0STP		( 0x10u )		/* UA0MOD1 Register U0STP bit */
#define UA0MOD1_U0NEG		( 0x20u )		/* UA0MOD1 Register U0NEG bit */
#define UA0MOD1_U0DIR		( 0x40u )		/* UA0MOD1 Register U0DIR bit */

///* UA0BRTL - UART0 Baud Rate Registers LOW
#define UA0BRTL_U0BR0		( 0x1u )		/* UA0BRTL Register U0BR0 bit */
#define UA0BRTL_U0BR1		( 0x2u )		/* UA0BRTL Register U0BR1 bit */
#define UA0BRTL_U0BR2		( 0x4u )		/* UA0BRTL Register U0BR2 bit */
#define UA0BRTL_U0BR3		( 0x8u )		/* UA0BRTL Register U0BR3 bit */
#define UA0BRTL_U0BR4		( 0x10u )		/* UA0BRTL Register U0BR4 bit */
#define UA0BRTL_U0BR5		( 0x20u )		/* UA0BRTL Register U0BR5 bit */
#define UA0BRTL_U0BR6		( 0x40u )		/* UA0BRTL Register U0BR6 bit */
#define UA0BRTL_U0BR7		( 0x80u )		/* UA0BRTL Register U0BR7 bit */

///* UA0BRTH - UART0 Baud Rate Registers HIGH
#define UA0BRTH_U0BR8		( 0x1u )		/* UA0BRTH Register U0BR8 bit  */
#define UA0BRTH_U0BR9		( 0x2u )		/* UA0BRTH Register U0BR9 bit  */
#define UA0BRTH_U0BR10		( 0x4u )		/* UA0BRTH Register U0BR10 bit */
#define UA0BRTH_U0BR11		( 0x8u )		/* UA0BRTH Register U0BR11 bit */

///* UA0STAT - UART0 Status Register
#define UA0STAT_U0FER		( 0x1u )		/* UA0STAT Register U0FER bit */
#define UA0STAT_U0OER		( 0x2u )		/* UA0STAT Register U0OER bit */
#define UA0STAT_U0PER		( 0x4u )		/* UA0STAT Register U0PER bit */
#define UA0STAT_U0FUL		( 0x8u )		/* UA0STAT Register U0FUL bit */

// PORTB Direction Register
#define PBDIR_B0DIR			( 0x01u ) 		// RX pin
#define PBDIR_B13DIR		( 0x02u ) 		// TX pin

///* PBCON0 */
#define PBCON0_B0C0			( 0x01u ) 		// RX pin
#define PBCON0_B1C0			( 0x02u ) 		// TX pin

///* PBCON1 */
#define PBCON1_B0C1			( 0x01u ) 		// RX pin
#define PBCON1_B1C1			( 0x02u ) 		// TX pin

///* PBMOD0 */
#define PBMOD0_B0MD0		( 0x01u ) 		// RX pin
#define PBMOD0_B1MD0		( 0x02u ) 		// TX pin

///* PBMOD1 */
#define PBMOD1_B0MD1		( 0x01u ) 		// RX pin
#define PBMOD1_B1MD1		( 0x02u ) 		// TX pin

///*=== control parameter for UART ===*/
typedef struct {
	unsigned char *	data;			/* pointer to area where the send/receive data is stored	*/
	unsigned int	size;			/* size of send/receive data								*/
	unsigned int	cnt;			/* size of data which is sent/received						*/
	cbfUart		callBack;			/* callback function										*/
	unsigned char	errStat;		/* error status												*/
} tUartCtrlParam; 

/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/
/*=== control parameter for UART ===*/
static tUartCtrlParam _gsCtrlParam = { (void *)0 , 0 , 0 , (void *)0 , 0 };

static unsigned char _Err_Status;
/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/
void _send_byte(unsigned char c);

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
//MODIFIED for Q111 & Q112 - C. Schell April 9th, 2013
// For Both Q111 & Q112, the desired UART Pins are the defaults:
//	UART-TX  (Q111/Q112 I/O B.1)
//	UART-RX  (Q111Q112  I/O B.0)

// Q111 & Q112 User Manual UART Section Info:
// 	UAnBUF : 	UARTn transmit/receive buffer
// 	UAnBRTH,L : UARTn baud rate H and L are:
// 	UAnCON : 	UARTn control register
// 	UAnMOD0,1 : UARTn mode registers 0 and 1
// 	UAnSTAT : 	UARTn status register

//Features
//	5-bit/6-bit/7-bit/8-bit data length selectable.
//	Odd parity, even parity, or no parity selectable.
//	1 stop bit or 2 stop bits selectable.
//	Provided with parity error flag, overrun error flag, framing error flag, and transmit buffer status flag.
//	Positive logic or negative logic selectable as communication logic.
//	LSB first or MSB first selectable as a communication direction.
//	Communication speed: Settable within the range of 2400bps to 115200bps.
//	Built-in baud rate generator.

/*******************************************************************************
	Routine Name:	uart_init
	Form:			int uart_init( unsigned char cs,unsigned short kHz,tUartSetParam *prm)
	Parameters:		unsigned char cs : choice of the clock oscillator inputted into the baud rate generator
					UART_CS_LSCLK(=0)  : LSCLK
					UART_CS_LSCLK2(=1) : LSCLK * 2
					UART_CS_HSCLK(=2)  : HSCLK
				unsigned short kHz       : frequency of HSCLK (this parameter is referred only HSCLK is chosen as the clock oscillator)
				const tUartSetParam *prm : setting parameters
	Return value:	int
					UART_R_OK(=0)       : the UART is initialized
					UART_R_ERR_CS(=-1)  : improper choice of the clock oscillator
					UART_R_ERR_BR(=-2)  : improper choice of baud rate
					UART_R_ERR_LG(=-3)  : data length is out of range
					UART_R_ERR_PT(=-4)  : parity setting is out of range
					UART_R_ERR_STP(=-5) : stop bit length is out of range
					UART_R_ERR_NEG(=-6) : improper setting (positive logic/negative logic)
					UART_R_ERR_DIR(=-7) : improper setting of significant bit (LSB/MSB)
	Description:	initialize UART
******************************************************************************/
int uart_init( unsigned char cs, unsigned short kHz , const tUartSetParam *prm )
{
	unsigned long br_clk;	//BAUD RATE CLOCK
	unsigned long br_cnt;	//BAUD RATE COUNT
	unsigned char setbit;
	
	/*=== A parameter check. ===*/
	switch( (int)cs ){		//BAUD RATE CLOCK SET HERE...
		/*--- LSCLK ---*/
		case UART_CS_LSCLK:
			br_clk = (unsigned long)32768;	  // i.e.: 32.768 kHz
			break;
		/*--- LSCLK x 2 ---*/
		case UART_CS_LSCLK2:
			br_clk = (unsigned long)(32768 * 2);  // i.e.: 65.536 kHz
			break;
		/*--- HSCLK ---*/
		case UART_CS_HSCLK:
			br_clk = (unsigned long)kHz * 1024UL; // i.e.: 8.192 MHz	
			break;
		/*--- Others ---*/
		default:
			return ( UART_R_ERR_CS );		  // else CS error
	} 
	br_cnt = br_clk / prm->br;
	if( br_cnt == 0UL ){			//If Baud Rate Count = zero...Return Baud Rate Error Flag
		return ( UART_R_ERR_BR );
	}
	br_cnt -= 1UL;
	

	if( prm->lg > (unsigned char)UART_LG_5BIT ){
		return ( UART_R_ERR_LG );
	}
	if( prm->pt > (unsigned char)UART_PT_NON ){
		return ( UART_R_ERR_PT );
	}
	if( prm->stp > (unsigned char)UART_STP_2BIT ){
		return ( UART_R_ERR_STP );
	}
	if( prm->neg > (unsigned char)UART_NEG_NEG ){
		return ( UART_R_ERR_NEG );
	}
	if( prm->dir > (unsigned char)UART_DIR_MSB ){
		return ( UART_R_ERR_DIR );
	}
	
	
	/*=== Variable setting. ===*/
		_gsCtrlParam.data		= (void *)0;
		_gsCtrlParam.size		= 0;
		_gsCtrlParam.cnt		= 0;
		_gsCtrlParam.callBack	= (void *)0;
		_gsCtrlParam.errStat	= 0;
	
	/*=== Register setting. ===*/
	/*---	An uart communication stop	---*/
		U0EN = 0;

	/*---	Port setting.	---*/
		uart_PortClear();

	/*---	Input clock choice to the baud rate generator	---*/
		setbit = UA0MOD0;
		setbit &= (unsigned char)( ~(UA0MOD0_U0CK0|UA0MOD0_U0CK1) );
		setbit |= (unsigned char)( cs << 1 );
		setbit |= (unsigned char)UA0MOD0_U0RSEL;
		UA0MOD0 = setbit;
		U0RSEL = 0;
	
	/*---	Communication setting	---*/
		setbit = UA0MOD1;
		setbit &= (unsigned char)( ~(UA0MOD1_U0LG0|UA0MOD1_U0LG1|UA0MOD1_U0PT0|UA0MOD1_U0PT1|UA0MOD1_U0STP|UA0MOD1_U0NEG|UA0MOD1_U0DIR) );
		setbit |= (unsigned char)( (prm->lg  << 0) | 
			                   (prm->pt  << 2) | 
			                   (prm->stp << 4) | 
			                   (prm->neg << 5) | 
			                   (prm->dir << 6) );
		UA0MOD1 = setbit;

	/*---	Baud rate count value setting(1)	---*/
		UA0BRTL = (unsigned char)(br_cnt & 0x000000FF);

	/*---	Baud rate count value setting(2)	---*/
		setbit = UA0BRTH;
		setbit &= (unsigned char)( ~(UA0BRTH_U0BR8|UA0BRTH_U0BR9|UA0BRTH_U0BR10|UA0BRTH_U0BR11) );
		setbit |= (unsigned char)( (br_cnt >> 8) & (UA0BRTH_U0BR8|UA0BRTH_U0BR9|UA0BRTH_U0BR10|UA0BRTH_U0BR11) );
		UA0BRTH = setbit;

//TO MANUALLY SET BAUD RATE:

//With 8.192MHz Clock
//	=BAUD=	=COUNT=			=Period per Bit=		=UAxBRTH=	=UAxBRTL=	=%ERROR=
//	2400bps 	3413 		Approximately 417us 	0x0D 		0x54		 0.01
//	4800bps 	1707 		Approximately 208us 	0x06 		0xAA		-0.02
//	9600bps 	853 		Approximately 104us 	0x03 		0x54		 0.04
//	19200bps 	427 		Approximately 52us 		0x01 		0xAA		-0.08
//	38400bps 	213 		Approximately 26us 		0x00 		0xD4		 0.16
//	57600bps 	142 		Approximately 17.4us 	0x00 		0x8D		 0.16
//	115200bps 	71 			Approximately 8.7us 	0x00 		0x46		 0.16


	//UA0BRTH = 0x0D;	//2400 BAUD
	//UA0BRTL = 0x54;

	/*---	Communication status is clear	---*/
		U0FER = 0;	// Clear Framing Error Flag to start...
		U0OER = 0;	// Clear Overrun Error Flag to start...
		U0PER = 0;	// Clear Parity Error Flag to start...
		U0FUL = 0;	// Clear Buffer Full Flag to start...

	return ( UART_R_OK );
}

void uartSendStr( char* str, unsigned char num  )
{
	unsigned char i = 0;
	unsigned char* ptr = (unsigned char*)str;

	//UA0BUF = 0; // Clear Buffer...
	while( i < num )
	{
		_send_byte( *(ptr+i) ); //Now send the Byte...
		i++;				// increment to select next byte...
	}
}

static void _send_byte(unsigned char c)
{
	U0IO = 0; 		// 0 = Transmit mode (initial value)			
	UA0BUF = c;		// Load byte into Buffer...
	U0EN = 1;		// START COMMUNICATION...		

	while(U0EN != 0)	// In transmit mode, this bit is automatically set to 0 at termination of transmission.
	{
		;
	}


	QUA0 = 0;		//QUA0 is the request flag for the UART0 interrupt
}



//while( U0FUL =! 0)
//{
//	; 	//Wait until Buffer fully sent...(C. Schell)
//		// Added to allow transmission of consecutive data
//		//  - confirm the U0FUL flag of the	UART0 status 
//		//    register (UA0STAT) becomes "0", then write the next 
//		//    transmitted data to the UA0BUF
//}




void uart0_startReceive( void ) //Simplified function for RX on Q11 Series...
{
//int long delay;
unsigned char RX_Code[100];

	/*===	Reception mode setting	===*/
	U0EN = 0;  //UART0 Control Register Bit 0 - "0" Stops communication.
	
	//for (delay=0; delay<50; delay++)
	//{
		U0FER = 0; //UART0 Status Register Bit 0 - Clear Framing Error Flag
		U0OER = 0; //UART0 Status Register Bit 1 - Clear Overrun Error Flag
		U0PER = 0; //UART0 Status Register Bit 2 - Clear Parity  Error Flag

		U0IO = 1;  //UART0 Mode Register 0 Bit 0 - "1" = Receive Mode	
	
		RX_Code[0] = UA0BUF; //Copy buffer into array...
	//}//next

	
	U0EN = 1; //UART0 Control Register Bit 0 - "1" Starts communication

	//for (delay=0; delay<50; delay++)
	//{
		_send_byte(RX_Code[0] );//echo array
		//U0FUL = 0;
	//}//next

}







/*******************************************************************************
	Routine Name:	uart_startSend
	Form:			void uart_startSend( unsigned char *data,unsigned int size,cbfUart func)
	Parameters:		unsigned char *data : pointer to area where the send data is stored
					unsigned int size : size of data (unit is byte)
					cbfUart func : callback function
	Return value:	void
	Description:	start to send the data
******************************************************************************/
void uart_startSend( unsigned char *data, unsigned int size, cbfUart func )
{
	/*=== Transmission of a message mode setting. ===*/
	U0EN = 0;
	U0IO = 0;

	/*=== Transmission of a message system order parameter setting. ===*/
	_gsCtrlParam.data		= data;
	_gsCtrlParam.size		= size;
	_gsCtrlParam.cnt		= 0;
	_gsCtrlParam.callBack	= func;
	_gsCtrlParam.errStat	= 0;
	
	if( _gsCtrlParam.size > 0 ){
		/*=== transmit a message, and it is worked to start. ===*/
		UA0BUF = *data;
		_gsCtrlParam.data++;
		_gsCtrlParam.cnt++;
		U0EN = 1;
	}
}

/*******************************************************************************
	Routine Name:	uart_startReceive
	Form:			void uart_startReceive( unsigned char *data,unsigned int size,cbfUart func)
	Parameters:		unsigned char *data 	: pointer to area where the receive data is stored
				unsigned int size 	: receive buffer size (the unit is byte)
				cbfUart func 		: callback function
	Return value:	void
	Description:	start to receive the data
******************************************************************************/
void uart_startReceive( unsigned char *data,unsigned int size, cbfUart func )
{
	/*===	Reception mode setting	===*/
	U0EN = 0;
	
	U0FER = 0;
	U0OER = 0;
	U0PER = 0;

	U0IO = 1;
	/*=== Transmission of a message system order parameter setting. ===*/
	_gsCtrlParam.data		= data;
	_gsCtrlParam.size		= size;
	_gsCtrlParam.cnt		= 0;
	_gsCtrlParam.callBack	= func;
	_gsCtrlParam.errStat	= 0;
	
	if( _gsCtrlParam.size > 0 ){
		/*=== I receive it, and it is worked to start. ===*/
		U0EN = 1;
	}
}



/*******************************************************************************
	Routine Name:	uart_continue
	Form:			int uart_continue( void )
	Parameters:		none
	Return value:	int
						UART_R_TRANS_FIN(=1)      : send and receive is finished
						UART_R_TRANS_CONT_OK(=0)  : send and receive is continued (success)
						UART_R_TRANS_CONT_NG(=-1) : send and receive is continued (failure)
						UART_R_TRANS_FIN_NG(=-2)  : send and receive is finished (failure)
	Description:	process to continue send and receive
******************************************************************************/
int uart_continue( void )
{
	unsigned char u0io;
	unsigned char u0ful;
	unsigned char u0en;
	unsigned char errStat;
	cbfUart       cbfTmp;
	
	u0io = (unsigned char)( UA0MOD0 & (unsigned char)UA0MOD0_U0IO );
	/*---	Is it a transmission of a message mode?	---*/
	if( u0io == 0 ){
		/*---	Are transmission of a message data left?	---*/
		if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
			/*=== I transmit a message, and it is worked to continue. ===*/
			u0ful = (unsigned char)( UA0STAT & (unsigned char)UA0STAT_U0FUL );
			/*---	There are data in the transmission of a message buffer?	---*/
			if( u0ful == 0 ){
				UA0BUF = *_gsCtrlParam.data;
				_gsCtrlParam.data++;
				_gsCtrlParam.cnt++;
				U0EN = 1;
				return ( UART_R_TRANS_CONT_OK );
			}
			else{
				return ( UART_R_TRANS_CONT_NG );
			}
		}
		else{
			/*---	Did the transmission of data end?	---*/
			u0en = (unsigned char)( UA0CON & (unsigned char)UA0CON_U0EN );
			if( u0en == 0 ){
				/*=== It is returned that the transmission ended. ===*/
				if( _gsCtrlParam.callBack != (void *)0 ){
					_gsCtrlParam.callBack( _gsCtrlParam.size, _gsCtrlParam.errStat );
					_gsCtrlParam.callBack = (void *)0;
				}
				return ( UART_R_TRANS_FIN );
			}
			return ( UART_R_TRANS_FIN_NG );
		}
	}
	/*---	A reception mode	---*/
	else{
		/*---	Are reception data left?	---*/
		if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
			errStat = (unsigned char)( UA0STAT & (unsigned char)(UA0STAT_U0FER|UA0STAT_U0OER|UA0STAT_U0PER) );
			_gsCtrlParam.errStat |= errStat;
			U0FER = 0;
			U0OER = 0;
			U0PER = 0;
			*_gsCtrlParam.data = UA0BUF;
			_gsCtrlParam.data++;
			_gsCtrlParam.cnt++;

			if( ( errStat & ( unsigned char )( UA0STAT_U0FER ) ) == 0 ) {

				if( _gsCtrlParam.size != _gsCtrlParam.cnt ){
					return ( UART_R_TRANS_CONT_OK );
				}
			} else {
				/*---	Frame Error	---*/
				uart_ErrSet( UA0STAT_U0FER );
			}
		}

		if( _gsCtrlParam.callBack != (void *)0 ){
			cbfTmp = _gsCtrlParam.callBack;
			_gsCtrlParam.callBack = (void *)0;
			cbfTmp( _gsCtrlParam.size, _gsCtrlParam.errStat );
		}
		return ( UART_R_TRANS_FIN );
	}
}

/*******************************************************************************
	Routine Name:	uart_stop
	Form:			void uart_stop( void )
	Parameters:		none
	Return value:	void
	Description:	stop to send and receive
******************************************************************************/
void uart_stop( void )
{
	U0EN = 0;
	_gsCtrlParam.data		= (void *)0;
	_gsCtrlParam.size		= 0;
	_gsCtrlParam.cnt		= 0;
	_gsCtrlParam.callBack	= (void *)0;
	_gsCtrlParam.errStat	= 0;
}

/*******************************************************************************
	Routine Name:	uart_checkIRQ
	Form:			int uart_checkIRQ( void )
	Parameters:		none
	Return value:	int
						UART_R_IRQ(=1)     : interrupt request is set
						UART_R_NON_IRQ(=0) : interrupt request is not set
	Description:	check interrupt request
******************************************************************************/
int uart_checkIRQ( void )
{
	unsigned char qua0;
	int ret;
	
	qua0 = (unsigned char)( IRQ4 & (unsigned char)IRQ4_QUA0 );
	if( qua0 == 1 ){
		ret = ( UART_R_IRQ );
	}
	else{
		ret = ( UART_R_NON_IRQ );
	}
	
	return ret;
}

/*******************************************************************************
	Routine Name:	uart_clearIRQ
	Form:			void uart_clearIRQ( void )
	Parameters:		none
	Return value:	void
	Description:	clear interrupt request
******************************************************************************/
void uart_clearIRQ( void )
{
	QUA0 = 0;
}

/*******************************************************************************
	Routine Name:	uart_getTransSize
	Form:			unsigned int uart_getTransSize( void )
	Parameters:		none
	Return value:	unsigned int
						size of data which is sent or received
	Description:	get size of data which is sent or received
******************************************************************************/
unsigned int uart_getTransSize( void )
{
	return _gsCtrlParam.cnt;
}


/*******************************************************************************
	Routine Name	: uart_ErrSet
	Form			: void uart_ErrSet( unsigned char status )
	Parameters		: unsigned char status : Error status information
	Return value	: void
	Description		: Error status state set processing.
******************************************************************************/
void uart_ErrSet( unsigned char status )
{
	_Err_Status |= status;
}

/*******************************************************************************
	Routine Name	: uart_ErrGet
	Form			: unsigned char uart_ErrGet( void )
	Parameters		: void
	Return value	: unsigned char : Error information
	Description		: Error information acquisition processing.
******************************************************************************/
unsigned char uart_ErrGet( void )
{
	return( _Err_Status );
}

/*******************************************************************************
	Routine Name	: uart_ErrClr
	Form			: void uart_ErrClr( void )
	Parameters		: void
	Return value	: void
	Description		: Error information clearness processing.
******************************************************************************/
void uart_ErrClr( void )
{
	_Err_Status = 0;
}

/*******************************************************************************
	Routine Name	: uart_PortSet
	Form			: void uart_PortSet( void )
	Parameters		: void
	Return value	: void
	Description		: Port setting.
******************************************************************************/
void uart_PortSet( void )
{
	/*---	Port setting.	---*/
	/* TXD */
	PB1DIR = 0;		/* Output */
	PB1C0 = 1;
	PB1C1 = 1;		/* CMOS */
	PB1MD0 = 1;
	PB1MD1 = 0;		/* UART TXD */
	/* RXD */
	PB0DIR = 1;		/* Input */
	PB0C0 = 1;
	PB0C1 = 1;		/* Hi Impedance */
	PB0MD0 = 1;
	PB0MD1 = 0;		/* UART RXD */
}

/*******************************************************************************
	Routine Name	: uart_PortClear
	Form			: void uart_PortClear( void )
	Parameters		: void
	Return value	: void
	Description		: Port Clear.
******************************************************************************/
void uart_PortClear( void )
{
	/*---	Port setting.	---*/
	/* TXD */
	PB1DIR = 0;		/* Output */
	PB1C0 = 0;
	PB1C1 = 0;		/* Hi Impedance */
	PB1MD0 = 0;
	PB1MD1 = 0;	      /* General-purpose input/output mode */
	/* RXD */
	PB0DIR = 0;		/* Output */
	PB0C0 = 0;
	PB0C1 = 0;		/* Hi Impedance */
	PB0MD0 = 0;
	PB0MD1 = 0;		/* General-purpose input/output mode */
}



void uart_0_Init( void )
{
 	//Setup UART0 on PortB

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

//UA0BUF

	//Direction...	
	PB0DIR = 1;		// PortB Bit0 set to Input  Mode...UART-RX
	PB1DIR = 0;		// PortB Bit1 set to Output Mode...UART-TX

	//I/O Type...
	PB0C1  = 1;		// PortB Bit0 set to (High-impedance input when PBxDIR=1)...
	PB0C0  = 1;		
	PB1C1  = 1;		// PortB Bit1 set to CMOS Output... 
	PB1C0  = 1;	

	//Port B Mode Registers (Purpose)...C. Schell 4-11-2013
	PB0MD1  = 0;	// PortB Bit0 set to General-purpose input/output mode (initial value)
	PB0MD0  = 0;	
	PB1MD1  = 1;	// PortB Bit1 set to UART0 data output pin
	PB1MD0  = 0;	

	// SETUP UART 0...- C. Schell April 11th, 2013	
		//UART0 Control Register (UA0CON)
		U0EN = 0;	 // 0 = Stops communication. (Initial value)
		
	//UART0 Mode Register 0 (UA0MOD0)
		U0IO   = 0;	 // 0 = Transmit mode (initial value)

		U0CK1  = 1;	 // 10 => Select the HSCLK clock to be input to the baud rate generator of the UART0 		
		U0CK0  = 0;

		U0RSEL = 0;	 // 0 = Selects the PB0 pin as the RX Pin;

		U0RSS = 1;   // U0RSS bit is used to select the received data input sampling timing for the UART0...WAS 0!

	// UART0 Mode Register 1 (UA0MOD1)
		U0LG1 = 0;	 // 00=> 8-bit data length (initial value)... 
		U0LG0 = 0;

		U0PT1 = 1;	 // 10=> No PARITY bit (initial value)
		U0PT0 = 0;

		U0STP = 0;	 // 0=> 1-stop-bit (initial value)

		U0NEG = 0;	 // 0=> Positive Logic (initial value)

		U0DIR = 0;	 // 0=> LSB first (initial value)


	// UART0 Baud Rate Registers //Manually set to 9600 BAUD
		//UA0BRTH = 0x03; // $0354 => 9600bps with 8.192MHz Clock (Approximately 104-us)
		//UA0BRTL = 0x54;	

	// UART0 Status Register
		//UA0BUF is a special function register (SFR) to store the transmitted/received data of the UART.
		//In transmit mode, write transmission data to UA0BUF. To transmit the data consecutively, confirm the U0FUL flag of the
		//UART0 status register (UA0STAT) becomes "0", then write the next transmitted data to the UA0BUF. Any value written
		//to UA0BUF can be read.		

	//UA0BRT = ( unsigned short )( ( ( HSCLK_kHZ * 1000UL ) / UART_CalcBAUD ) - 1 );
}