//*****************************************************************************
//
// USDC TEMPLATE FIRMWARE for Q111 MCU 
//
// DEMONSTRATES: 
//					1.) INTERRUPTS on TBC
//					1.) INTERRUPTS on TMR8/9
//					1.) INTERRUPTS on TMR A/B
//					1.) INTERRUPTS on TMR E/F
//					1.) PWM Control
//
// Program:	 LAPIS MCU Development Board Demo Code 
// Author:	 C. Schell, K. Bahar & F. Lee 
//		 	 ROHM Semiconductor USA, LLC
//		 	 US Design Center
//
// Started:  April 6th, 2013
// Purpose:	 Demonstration Code for use with LAPIS MCU Development Board 
// Updated:	 JULY 11th, 2014
//*****************************************************************************

//*****************************************************************************
// Microcontroller's connections on the LAPIS MCU Development Board to the 
//  Plug 'n Play, Raspberry Pi Compatible, Universal Connectors:
//
// ================================ ML610Q111 ================================= 
//
// Pin-01 => 3.3V Power					Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q111 I/O B.6)	Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q111 I/O B.5)*	Pin-06 => GROUND
// Pin-07 => no connection*				Pin-08 => UART-TX  (Q111 I/O B.1)
// Pin-09 => no connection				Pin-10 => UART-RX  (Q111 I/O B.0) 
// Pin-11 => GPIO #17 (Q111 I/O A.0)	Pin-12 => GPIO #18 (Q111 I/O B.7)
// Pin-13 => GPIO #21 (Q111 I/O A.1)	Pin-14 => no connection
// Pin-15 => GPIO #22 (Q111 I/O A.2)	Pin-16 => GPIO #23 (Q111 I/O C.2)
// Pin-17 => no connection				Pin-18 => GPIO #24 (Q111 I/O C.3)
// Pin-19 => SPI-MOSI (Q111 I/O B.4)	Pin-20 => no connection
// Pin-21 => SPI-MISO (Q111 I/O B.3)	Pin-22 => GPIO #25 (Q111 I/O B.2)
// Pin-23 => SPI-SCLK (Q111 I/O B.5)*	Pin-24 => SPI-CS0  (Q111 I/O C.0)
// Pin-25 => no connection				Pin-26 => SPI-CS1  (Q111 I/O C.1)
// 
//=============================================================================
//*****************************************************************************

//*****************************************************************************
// Q111 Microcontroller's I/O Pins at J3 on the LAPIS MCU Development Board to the
// LAPIS MCU Development Board 
//
// ================================ ML610Q111 ================================= 
//
// Pin-01 => A.0				Pin-02 => A.1
// Pin-03 => A.2				Pin-04 => B.0
// Pin-05 => B.1				Pin-06 => B.2
// Pin-07 => B.3				Pin-08 => B.4
// Pin-09 => B.5				Pin-10 => B.6 
// Pin-11 => B.7				Pin-12 => C.0
// Pin-13 => C.1				Pin-14 => C.2
// Pin-15 => C.3				Pin-16 => GROUND
//
//=============================================================================
//*****************************************************************************


//***** PREPROCESSOR DIRECTIVES ***********************************************
 // INCLUDED FILES...
	#include	<ML610111.H>	// Lapis Micro ML610Q111 on LAPIS MCU Development Board
	#include	<stdlib.h>		// General-purpose utilities
	#include 	<uart.h>		// UART Function Prototypes
	#include 	<common.h>		// Common Definitions
	#include 	<irq.h>			// IRQ Definitions
	#include 	<mcu.h>			// MCU Definition
	#include	<i2c.h>			// I2C Definition
	#include	<stdio.h>		// I/O-related processing	
	#include 	<tbc.h>			// Set TBC (Timer Based Clock) API
	#include 	<timer.h>		// Timer Macros & APIs

	#include	<float.h>		// Numerical limits for floating-point numbers	
	#include	<string.h>		// Character string manipulation routines
	#include	<yvals.h>		// Called for by most Header Files

	#include 	<main.h>		// Clear WDT API
	#include	<ctype.h>		// Character classification and conversion 
	#include	<errno.h>		// Error identifiers Library
	#include	<limits.h>		// Numerical limits for integers
	#include	<math.h>		// Mathematical functions
	#include	<muldivu8.h>	// Multiplication and Division accelerator
	#include	<setjmp.h>		// Global jump (longjmp)
	#include	<signal.h>		// Signal handling functions
	#include	<stdarg.h>		// Variable numbers of arguments
	#include	<stddef.h>		// Standard types and macros 
	#include	<yfuns.h>		//  
	
//*****************************************************************************
 // I/O PIN DATA ALIASES...
// Connections for Q111 Universal Socket
	#define RX 			PB0D 
	#define TX 			PB1D
 
	#define I2C_SDA 	PB6D 
	#define I2C_SCL 	PB5D 

	#define GPIO_17		PA0D
	#define GPIO_21		PA1D
	#define GPIO_22		PA2D
	#define GPIO_18		PB7D
	#define GPIO_23		PC2D
	#define GPIO_24		PC3D
	#define GPIO_25		PB2D

	#define SPI_MOSI	PB4D
	#define SPI_MISO	PB3D
	#define SPI_SCL 	PB5D
	#define SPI_CS0		PC0D
	#define SPI_CS1 	PC1D 	
	
		// ====== DICE ======
	//
	//	1	2	3
	//
	//	4	5	6
	//
	//	7	8	9
	//
	// ==================

	#define LED1_pin		PC1D	//2013-04-18 (LaPi Plug 'n Play Board)
	#define LED2_pin		PC3D	//2013-04-18 (LaPi Plug 'n Play Board)
	#define LED3_pin		PB0D	//2013-04-18 (LaPi Plug 'n Play Board)
	#define LED4_pin		PC0D	//2013-04-18 (LaPi Plug 'n Play Board)
	#define LED5_pin		PC2D	//2013-04-18 (LaPi Plug 'n Play Board)
	#define LED6_pin		PB5D	//2013-04-18 (LaPi Plug 'n Play Board)
	#define LED7_pin		PB2D	//2013-04-18 (LaPi Plug 'n Play Board)
	#define LED8_pin		PB7D	//2013-04-18 (LaPi Plug 'n Play Board)
	#define LED9_pin		PB6D	//2013-04-18 (LaPi Plug 'n Play Board)
	

//*****************************************************************************
//===========================================================================
//   MACROS: 
//===========================================================================

// ===== Peripheral setting.=====
	#define HSCLK_KHZ				( 8192U ) 
	//#define LSCLK_HZ				( 32768UL )
	#define FLG_SET					( 0x01u )

// ===== UART Setting =====
	#define _OUTPUT_UART		// States that this micro has UART capabilities

	#define UART_BAUDRATE		( UART_BR_9600BPS )	// (Re-Open Port in GUI)
	#define UART_DATA_LENGTH	( UART_LG_8BIT )
	#define UART_PARITY_BIT		( UART_PT_NON )
	#define UART_STOP_BIT		( UART_STP_1BIT )
	#define UART_LOGIC			( UART_NEG_POS )
	#define UART_DIRECTION		( UART_DIR_LSB )

//*****************************************************************************
// Constants / Variables:
	// ===== UART Settings =====
	static const tUartSetParam	_uartSetParam = { 
		UART_BAUDRATE,
		UART_DATA_LENGTH,
		UART_PARITY_BIT,
		UART_STOP_BIT,
		UART_LOGIC,
		UART_DIRECTION
	};

//*****************************************************************************
//===========================================================================
//   STRUCTURES: 
//===========================================================================
	//Example Structure Declaration
	typedef struct {
		unsigned char state     : 1;
		unsigned char state_sub : 2;
		unsigned char reserve   : 5;
	} STRUCT_STATE;	 


//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   FUNCTION PROTOTYPES: 
//	Establishes the name and return type of a function and may specify the 
// 	types, formal parameter names and number of arguments to the function                                 
//===========================================================================
	void main_clrWDT( void );				// no return value and no arguments
	void Initialization( void );			// no return value and no arguments
	void SetOSC( void );					// no return value and no arguments

	static void NOPms(unsigned int ms);		// no return value - Delay in ms as Argument
	void NOPx( unsigned int MyCount );		// no return value - Count in ms as Argument
	void PWM_B0_ON(int myPeriod, int myDutyCycle);		// no return value - Period & DutyCycle Variables as Arguments

	void analog_comparator( void );			
	void PortA_Low( void );					// no return value and no arguments
	void PortB_Low( void );					// no return value and no arguments
	void PortC_Low( void );					// no return value and no arguments
	void PortA_Digital_Inputs( void );		// no return value and no arguments
	void PinB0_PWM( void ); 				// no return value and no arguments
	void main_reqNotHalt( void );			// no return value and no arguments

	static void _initPeri( void );
	static void _intWdt( void );
	static void _intTimer( void );

	void _funcUartFin( unsigned int size, unsigned char errStat );
	void _funcI2CFin( unsigned int size, unsigned char errStat );
	void _intUart( void );
	void _intI2c( void );
	void _intADC( void );
	
	void TBC_ISR( void );			//TBC Interrupt Service Routine...
	void TMR89_ISR( void );			//TIMER 8/9 Interrupt Service Routine...
	void TMRAB_ISR( void );			//TIMER A/B Interrupt Service Routine...
	void TMREF_ISR( void );			//TIMER E/F Interrupt Service Routine...
	void ExtInt_ISR( void );		//External Interrupt Interrupt Service Routine...

//*****************************************************************************

//GLOBALS...

	//UART, I2C & ADC Variables
	unsigned char	_flgUartFin;
	unsigned char 	_flgI2CFin;
	unsigned char	_flgADCFin;
	unsigned char	_reqNotHalt;

/*############################################################################*/
/*#                                  APIs                                    #*/
/*############################################################################*/
//*****************************************************************************
//===========================================================================
//  	Start of MAIN FUNCTION
//===========================================================================
int main(void) 
{

	//LOCAL VARIABLES
	char char_a;				// -128 to 127
	unsigned char uchar;		// 0-255
	unsigned int uint, delay;	// 0 to 65,535
	long long_a;				// -2,147,483,648 to 2,147,483,647
	float float_a;				// 1.17549435e-38 to 3.40282347e+38
	double double_a;			// 2.2250738585072014e-308 to 1.7976931348623157e+308 
	int i,j,k,x,y;				// -32,768 to 32767

	Init:
		Initialization();		// Init Micro...(& UART)
		main_clrWDT();
		NOPx(10);				// Short Delay... 
		
		LED1_pin = 0;
		LED2_pin = 0;
		LED3_pin = 0;
		LED4_pin = 0;
		LED5_pin = 0;
		LED6_pin = 0;
		LED7_pin = 0;
		LED8_pin = 0;
		LED9_pin = 0;


	MyTest:		
	//PLACE USER CODE HERE...
		//LED3_pin ^= 1;
		PWM_B0_ON(4000, 125);	//period, Duty Cycle variables
		NOPx(1);				// Short Delay...
		
	main_clrWDT();				//Remember, you must periodically clear the timer before it rolls over
								//...WDT currently set to 8sec
	goto MyTest;

}//end main

//===========================================================================
//  	End of MAIN FUNCTION
//===========================================================================
//*****************************************************************************




//*****************************************************************************
//===========================================================================
//  	Start of Other Functions...
//===========================================================================
//*****************************************************************************


/*******************************************************************************
	Routine Name:	main_clrWDT
	Form:			void main_clrWDT( void )
	Parameters:		void
	Return value:	void
	Description:	clear WDT.
******************************************************************************/

void main_clrWDT( void )
{
	__DI(); // Disable multi-interrupts
		do {
			WDTCON = 0x5Au;
		} while (WDP != 1);
		WDTCON = 0xA5u;

	__EI(); // Re-Enable multi-interrupts
}

//===========================================================================
//	Initialize Micro to Desired State...
//===========================================================================
static void Initialization(void)
{

	//Initialize Peripherals	
		//BLKCON2 Control Bits...Manually Set 4/12/2013
			DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
			DUA0  = 1; // 0=> Enables the operation of UART0 (initial value).
			DUA1  = 1; // 0=> Enables Uart1 (initial value). 
			DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
			DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
	
		BLKCON4 = 0x00; // SA-ADC: 0=> Enables ; 0xFF=> Disables
		BLKCON6 = 0x00; // Timers 8, 9, A, E, F : 0=> Enables ; 0xFF=> Disables
		BLKCON7 = 0x00; // PWM (PWMC, PWMD, PWME, PWMF : 0=> Enables ; 0xFF=> Disables

	// ===== Set Oscillator Rate =====
     	SetOSC(); 	//8MHz

	// Port Initialize
		PortA_Low();	//Initialize all 3 Ports of Q111 Port A to GPIO-Low
		PortB_Low();	//Initialize all 8 Ports of Q111 Port B to GPIO-Low
		PortC_Low();	//Initialize all 4 Ports of Q111 Port C to GPIO-Low

	//UART Initialization to 9600-8-N-1 


	// ===== PWM =====	
		PinB0_PWM();		// Set up PWM peripheral (Pin on B.0)

	// ===== Comparator =====	
		//analog_comparator();	//Set up anaolg comparator peripheral


/* 	// ===== SET SPECIFIC DESIRED PINS AS INPUTS =====
		//Setup PIR Sensor Input on B.4
			//Step 1: Set Pin Direction...
				PB4DIR = 1;			// PortB Bit4 set Direction to INPUT...
			//Step 2: Set Pin I/O Type...
				PB4C1  = 0;			// PortB Bit4 set Type to HIGH-IMPEDANCE INPUT...
				PB4C0  = 0;	
			//Step 3: Set Pin Purpose...
				PB4MD1  = 0;		// PortB Bit4 set Purpose to GENERAL PURPOSE Input/Output...
				PB4MD0  = 0;

		//Setup HALL Sensor Input on B.3
			//Step 1: Set Pin Direction...
				PB3DIR = 1;			// PortB Bit3 set Direction to INPUT...
			//Step 2: Set Pin I/O Type...
				PB3C1  = 0;			// PortB Bit3 set Type to HIGH-IMPEDANCE INPUT...
				PB3C0  = 0;	
			//Step 3: Set Pin Purpose...
				PB3MD1  = 0;		// PortB Bit3 set Purpose to GENERAL PURPOSE Input/Output...
				PB3MD0  = 0;

		//Setup ACCELEROMETER X-SIGNAL Sensor Input on A.2
			//Step 1: Set Pin Direction...
				PA2DIR = 1;			// PortA Bit2 set Direction to INPUT...
			//Step 2: Set Pin I/O Type...
				PA2C1  = 0;			// PortA Bit2 set Type to HIGH-IMPEDANCE INPUT...
				PA2C0  = 0;	
			//Step 3: Set Pin Purpose...
				PA2MD1  = 0;		// PortA Bit2 set Purpose to GENERAL PURPOSE Input/Output...
				PA2MD0  = 0;
		
		//Setup ACCELEROMETER Y-SIGNAL Sensor Input on A.1
			//Step 1: Set Pin Direction...
				PA1DIR = 1;			// PortA Bit1 set Direction to INPUT...
			//Step 2: Set Pin I/O Type...
				PA1C1  = 0;			// PortA Bit1 set Type to HIGH-IMPEDANCE INPUT...
				PA1C0  = 0;	
			//Step 3: Set Pin Purpose...
				PA1MD1  = 0;		// PortA Bit1 set Purpose to GENERAL PURPOSE Input/Output...
				PA1MD0  = 0;

		//Setup ACCELEROMETER Temperature-SIGNAL Sensor Input on A.0
			//Step 1: Set Pin Direction...
				PA0DIR = 1;			// PortA Bit0 set Direction to INPUT...
			//Step 2: Set Pin I/O Type...
				PA0C1  = 0;			// PortA Bit0 set Type to HIGH-IMPEDANCE INPUT...
				PA0C0  = 0;	
			//Step 3: Set Pin Purpose...
				PA0MD1  = 0;		// PortA Bit0 set Purpose to GENERAL PURPOSE Input/Output...
				PA0MD0  = 0; */


    
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
	// INTERRUPT SETUP...
		irq_di();	// Disable Interrupts
		irq_init();	// Initialize Interrupts (All Off and NO Requests)
			//====================================================================
			//FOR NOTES ONLY...This is all taken care of in "irq_init()"
				// INTERRUPT ENABLE REGISTERS...
				//  IE0 = VOLTAGE LEVEL SUPERVISOR Int.
				//  IE1 = EXTERNAL Ints on B3, B2, B1, B0, A2, A1, & A0
				//  IE2 = SPI, A/D, I2C Slave & I2C Master Int.
				//  IE3 = TIMERS 8 & 9 Ints.
				//  IE4 = UART & COMPARATOR Ints.
				//  IE5 = TIMERS A, B, E & F Ints.
				//  IE6 = PWMC, PWMD, PWME, PWMF & 128Hz & 32Hz TBC Ints.
				//  IE7 = 16Hz & 2Hz TBC Ints.
				//IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
				//--------------------------------------------------------------
				// INTERRUPT REQUEST FLAG REGISTERS...
				//  IRQ0 = WDT & VLS Int Requests
				//  IRQ1 = EXTERNAL Int Requests
				//  IRQ2 = SPI, A/D, I2C Slave & I2C Master Int Requests
				//  IRQ3 = TIMERS 8 & 9 Int Requests 
				//  IRQ4 = UART & COMPARATOR Int Requests 
				//  IRQ5 = TIMERS A, B, E & F Int Requests 
				//  IRQ6 = PWMC &  128Hz & 32Hz TBC Int Requests 
				//  IRQ7 = 16Hz & 2Hz TBC Int Requests 
				//IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;
			//====================================================================

			// INTERRUPT ENABLE REGISTERS...
				IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;


			// INTERRUPT REQUEST REGISTERS...
				IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;

			//------------- SET UP UART Interrupts Handler -------------------------------------------
				(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
					EUA0 = 1; 	// EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
			//----------------------------------------------------------------------------------------
			
			//------------- SET UP I2C MASTER Interrupts Handler -------------------------------------
				(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
					EI2CM = 1; // EI2CM is the enable flag for the I2C MASTER interrupt (1=ENABLED)
					QI2CM = 0;
			//----------------------------------------------------------------------------------------
			
			//------------- SET UP ADC Interrupts Handler --------------------------------------------
				(void)irq_setHdr( (unsigned char)IRQ_NO_SADINT, _intADC );
					ESAD = 1; // ESAD is the enable flag for the ADC interrupt (1=ENABLED)
					QSAD = 0;
			//----------------------------------------------------------------------------------------
			
			//------------- SET UP  xHz TBC Interrupt (Options: 128Hz, 32Hz, 16Hz, 2Hz) --------------
				(void)irq_setHdr( (unsigned char)IRQ_NO_T2HINT, TBC_ISR );  //Clear interrupt request flag
					E2H = 1;	  // Enable x Hz TBC Interrupt (1=ENABLED)
					Q2H = 1;	  // Request flag for the time base counter x Hz interrupt	
			// -----			
			//------------- TBC...Set Ratio: : 1:1 => 1_1 --------------------------------------------
				(void)tb_setHtbdiv( (unsigned char)TB_HTD_1_1 ); //Set the ratio of dividing frequency of the time base counter
			//----------------------------------------------------------------------------------------
			
			//------------- SET UP TIMER 8/9 Interrupt to increment timers every ~X ms ---------------
				(void)irq_setHdr( (unsigned char)IRQ_NO_TM9INT, TMR89_ISR );  //Clear interrupt request flag
					ETM8 = 1;	  	// Enable timer 8 Interrupt (1=ENABLED
					ETM9 = 1;	  	// Enable timer 9 Interrupt (1=ENABLED)
					QTM8 = 1;		// timer 8 IRQ request flag; 1=REQUEST
					QTM9 = 1;		// timer 9 IRQ request flag; 1=REQUEST
					T8CS0 = 1;		// 111 => Select PLLCLK
					T8CS1 = 1;
					T8CS2 = 1;
					T9CS0 = 1;		// 111 => Select PLLCLK
					T9CS1 = 1;
					T9CS2 = 1; 
					tm_init(TM_CH_NO_89);
					tm_set89Data(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
					tm_set89Source(TM_CS_HTBCLK);
					tm_start89();
					T89M16 = 1;		//1 => sets 16-bit timer mode
				
					HTD3 = 1;	//High-Speed Time Base Counter Divide Register: 1111 = 9182kHz
					HTD2 = 1;
					HTD1 = 1;
					HTD0 = 1; 
			//----------------------------------------------------------------------------------------

			
			//------------- SET UP TIMER A/B Interrupt to increment timers every ~X ms ---------------
				(void)irq_setHdr( (unsigned char)IRQ_NO_TMBINT, TMRAB_ISR );  //Clear interrupt request flag
					ETMA = 1;	  	// Enable timer 8 Interrupt (1=ENABLED
					ETMB = 1;	  	// Enable timer 9 Interrupt (1=ENABLED)
					QTMA = 1;		// timer 8 IRQ request flag; 1=REQUEST
					QTMB = 1;		// timer 9 IRQ request flag; 1=REQUEST
					TACS0 = 1;		// 111 => Select PLLCLK
					TACS1 = 1;
					TACS2 = 1;
					TBCS0 = 1;		// 111 => Select PLLCLK
					TBCS1 = 1;
					TBCS2 = 1; 
					tm_init(TM_CH_NO_AB);
					tm_setABData(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
					tm_setABSource(TM_CS_HTBCLK);
					tm_startAB();
					TABM16 = 1;		//1 => sets 16-bit timer mode
				
					HTD3 = 1;	//High-Speed Time Base Counter Divide Register: 1111 = 9182kHz
					HTD2 = 1;
					HTD1 = 1;
					HTD0 = 1; 
			//----------------------------------------------------------------------------------------

			
			//------------- SET UP TIMER E/F Interrupt to increment timers every ~X ms ---------------
				(void)irq_setHdr( (unsigned char)IRQ_NO_TMFINT, TMREF_ISR );  //Clear interrupt request flag
					ETME = 1;	  	// Enable timer E Interrupt (1=ENABLED
					ETMF = 1;	  	// Enable timer F Interrupt (1=ENABLED)
					QTME = 1;		// Timer E IRQ request flag; 1=REQUEST
					QTMF = 1;		// Timer F IRQ request flag; 1=REQUEST
					TECS0 = 1;		// 111 => Select PLLCLK
					TECS1 = 1;
					TECS2 = 1;
					TFCS0 = 1;		// 111 => Select PLLCLK
					TFCS1 = 1;
					TFCS2 = 1;
					tm_init(TM_CH_NO_EF);
					tm_setEFData(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
					tm_setEFSource(TM_CS_HTBCLK);
					tm_startEF();
					TEFM16 = 1;		//1 => sets 16-bit timer mode
				
					HTD3 = 1;	//High-Speed Time Base Counter Divide Register: 1111 = 9182kHz
					HTD2 = 1;
					HTD1 = 1;
					HTD0 = 1; 
			//----------------------------------------------------------------------------------------
			
			//------------- SET UP B.3 as an input, and prepare to use as an external interrupt ------
					PB3DIR = 1;
					PB3C1 = 0;
					PB3C0 = 0;
					PB3MD1 = 0;
					PB3MD0 = 0;
					PB3E1 = 1;
					PB3E0 = 0;		//PBnE0-1 are used to choose the Rising-Edge Mode for this interrupt
					PB3SM = 0;
			// -----
			//------------- SET UP EXTERNAL INTERRUPT on B.3 -----------------------------------------
				(void)irq_setHdr( (unsigned char)IRQ_NO_PB3INT, ExtInt_ISR );  //Clear interrupt request flag
					EPB3 = 0;	//1=> Enables Interrupt
					QPB3 = 0;	//Enables Request Flag (need to set to 
			//----------------------------------------------------------------------------------------
	
			
	irq_ei(); // Enable Interrupts
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII 


	// SET UP WATCH DOG TIMER...
		WDTMOD = 0x03; 	// 0x03=overflow 8sec...
		main_clrWDT(); 	// Clear WDT

}//End Initialization
//===========================================================================


//===========================================================================
//	OSC set
//===========================================================================
static void SetOSC(void){

	FCON0 = 0x00;		//xMHz PLL (3=1MHz; 2=2MHz; 1=4MHz; 0=8MHz)...
 
      ENOSC = 1;		//1=Enable High Speed Oscillator...

	__EI();				//INT enable
}
//===========================================================================


//===========================================================================
//	Analog Comparator setup
//===========================================================================
void analog_comparator(void){

//Carl's Notes...

//Step 1: Select the Interrupt Mode
// 	a.) Interrupt Disabled      => CMPxE1 = 0; CMPxE0 = 0;	  
// 	b.) Falling-Edge Int. Mode  => CMPxE1 = 0; CMPxE0 = 1;
// 	c.) Rising-Edge Int. Mode   => CMPxE1 = 1; CMPxE0 = 0;
// 	d.) Both-Edge Int. Mode     => CMPxE1 = 1; CMPxE0 = 1;


//Step 2: Enable the Comparator                       => CMPxEN = 1;	

//Step 3: Wait 3ms to allow Comparator to stabilize

//Step 4: Read the comparison result			=> CMPxD: 0= +<-; 1= +>-

//Step 5: Disable the Comparator				=> CMPxEN = 0;	



   //Comparator 0...
	CMP0EN  = 0x01; 	// Comparator ON...
	CMP0E1  = 0x00; 	// No Interupt...
	CMP0E0  = 0x00;
	CMP0SM1 = 0x00; 	// Detect without Sampling... 
	CMP0RFS = 0x01; 	// Differential Input on B5

   //Comparator 0 OFF
	CMP0EN  = 0x00;


}
//===========================================================================



//===========================================================================
//	Clear All 3 Bits of Port A
//===========================================================================
void PortA_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
	PA2DIR = 0;		// PortA Bit2 set to Output Mode...

	//I/O Type...
	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
	PA0C0  = 1;		
	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
	PA1C0  = 1;	
	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
	PA2C0  = 1;	

	//Purpose...
	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
	PA0MD0  = 0;	
	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
	PA1MD0  = 0;	
	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
	PA2MD0  = 0;	

	//Data...
	PA0D = 0;		// A.0 Output OFF....
	PA1D = 0;		// A.1 Output OFF....
	PA2D = 0;		// A.2 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 8 Bits of Port B
//===========================================================================
void PortB_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
	PB7DIR = 0;		// PortB Bit7 set to Output Mode...

	//I/O Type...
	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
	PB0C0  = 1;		
	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
	PB1C0  = 1;	
	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
	PB2C0  = 1;	
	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
	PB3C0  = 1;		
	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
	PB4C0  = 1;	
	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
	PB5C0  = 1;	
	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
	PB6C0  = 1;	
	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
	PB7C0  = 1;	

	//Purpose...
	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
	PB0MD0  = 0;	
	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
	PB1MD0  = 0;	
	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
	PB2MD0  = 0;	
	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
	PB3MD0  = 0;	
	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
	PB4MD0  = 0;	
	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
	PB5MD0  = 0;
	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
	PB6MD0  = 0;	
	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
	PB7MD0  = 0;

	//Data...
	PB0D = 0;		// B.0 Output OFF....
	PB1D = 0;		// B.1 Output OFF....
	PB2D = 0;		// B.2 Output OFF....
	PB3D = 0;		// B.3 Output OFF....
	PB4D = 0;		// B.4 Output OFF....
	PB5D = 0;		// B.5 Output OFF....
	PB6D = 0;		// B.6 Output OFF....
	PB7D = 0;		// B.7 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 4 Bits of Port C
//===========================================================================
void PortC_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
	PC3DIR = 0;		// PortC Bit3 set to Output Mode...


	//I/O Type...
	PC0C1  = 1;		// PortC Bit0 set to CMOS Output...
	PC0C0  = 1;		
	PC1C1  = 1;		// PortC Bit1 set to CMOS Output...
	PC1C0  = 1;	
	PC2C1  = 1;		// PortC Bit2 set to CMOS Output...
	PC2C0  = 1;	
	PC3C1  = 1;		// PortC Bit3 set to CMOS Output...
	PC3C0  = 1;		

	//Purpose...
	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
	PC0MD0  = 0;	
	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
	PC1MD0  = 0;	
	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
	PC2MD0  = 0;	
	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
	PC3MD0  = 0;	

	//Data...
	PC0D = 0;		// C.0 Output OFF....
	PC1D = 0;		// C.1 Output OFF....
	PC2D = 0;		// C.2 Output OFF....
	PC3D = 0;		// C.3 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Set All 3 Bits of Port A as Digital Input Pins
//===========================================================================
void PortA_Digital_Inputs(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
	PA2DIR = 1;		// PortA Bit2 set to Input Mode...


	//I/O Type...
	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
	PA0C0  = 0;		
	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
	PA1C0  = 0;	
	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
	PA2C0  = 0;	

	//Purpose...
	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
	PA0MD0  = 0;	
	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
	PA1MD0  = 0;	
	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
	PA2MD0  = 0;	

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	PWM Output on Port B - Pin 0
//===========================================================================
void PWM_B0_ON(int myPeriod, int myDutyCycle){

		
		//SET THE PERIOD...
			PWCP = myPeriod;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

		//PWCD =    10;		//10    ~  0.2 % duty cycle @ 120Hz
		//PWCD =   100;		//100   ~  2.4 % duty cycle @ 120Hz
		//PWCD =  1000;		//1000  ~ 23.5 % duty cycle @ 120Hz
		//PWCD = 4000;		//4000  ~ 94.0 % duty cycle @ 120Hz
		//PWCD = 4150;		//4150  ~ 99.0 % duty cycle @ 120Hz
		//PWCD =    20;		//20    ~  0.4 % duty cycle @ 120Hz	
			PWCD =    myDutyCycle;		//12    ~  0.25% duty cycle @ 160Hz
		
		PCRUN = 1;		// TURN PWM ON

}//END PWM_B0_ON Function
//===========================================================================



//===========================================================================
//	PWM Output on Port B - Pin 0
//===========================================================================
void PinB0_PWM(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Select the Clock Mode...
//Step 5: Set the Duty Cycle...
//Step 5: Start the PWM Counter...

	//Direction...	
	PB0DIR = 0;		// PortB Bit0 set to Output Mode...

	//I/O Type...
	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
	PB0C0  = 1;		

	//Purpose...
	PB0MD1  = 0;	// PortB Bit0 set to PWM Output (0,1)...
	PB0MD0  = 1;	


	//Select the Clock Mode...
	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
	PCCS0 = 1;

	//SET THE PERIOD...(Added April 4th, 2013)
	PWCP = 4250;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

	//SET THE DUTY CYCLE...(Added April 15th, 2013)

	//PWCD =    10;		//10    ~  0.2 % duty cycle @ 120Hz
	//PWCD =   100;		//100   ~  2.4 % duty cycle @ 120Hz
	//PWCD =  1000;		//1000  ~ 23.5 % duty cycle @ 120Hz
	//PWCD = 4000;		//4000  ~ 94.0 % duty cycle @ 120Hz
	//PWCD = 4150;		//4150  ~ 99.0 % duty cycle @ 120Hz
	//PWCD =    20;		//20    ~  0.4 % duty cycle @ 120Hz	
	PWCD =    12;		//12    ~  0.25% duty cycle @ 160Hz

	PCRUN = 0;		// OFF to start

}
//===========================================================================








/*******************************************************************************
	Routine Name:	NOPms
	Form:			void NOP1000( unsigned int ms )
	Parameters:		unsigned int sec = "Number of seconds where the device is 
						not doing anything"
	Return value:	void
	Description:	NOP for x seconds. Uses HTB* clock (512kHz) and 
					timer A+B (max 0xFFFF)*(HTBCLK = 1/16 * HSCLK 
					= (1/16)*8192kHz = 512kHz, see HTBDR to change if 
					we need an even smaller increment timer...)
					1/(512kHz) * 0xFFFF = 127ms
					
******************************************************************************/
/* 
	void NOPms( unsigned int ms )
	{
	unsigned int timerThres;
	unsigned char TimeFlag;
	unsigned int TempSec;
	unsigned int timer;
	unsigned int timertest;

		TempSec = ms;
		TimeFlag = 0;

		tm_init(TM_CH_NO_AB);
		tm_setABSource(TM_CS_HTBCLK);
		tm_setABData(0xffff);

		if(ms < 128){
			timerThres = 0x1FF * ms;
			TimeFlag = 0;
		}
		if(ms == 128){
			timerThres = 0xFFFF;
			TimeFlag = 0;
		}
		if(ms > 128){
			while(TempSec > 128){
				TempSec -= 128;
				TimeFlag++;
			}
			if(TempSec != 0){
				timerThres = 0x1FF * TempSec;
			}
			else{
				timerThres = 0xFFFF;
				TimeFlag--;
			}
		}

	TimerRestart:
		main_clrWDT();	
		//tm_restart89();	//using LSCLK, the maximum delay time we have is ~2 secs
		tm_startAB();
		timer = tm_getABCounter();
		while(timer < timerThres){
			timer = tm_getABCounter();
			timertest = timer;
		}
		if(TimeFlag !=0){
			tm_stopAB();
			TimeFlag--;
			timerThres = 0xFFFF;
			goto TimerRestart;
		}
	} //End NOPms 
*/

/*******************************************************************************
	Routine Name:	_funcUartFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
				unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcUartFin( unsigned int size, unsigned char errStat )
{
	uart_continue();					// Function in UART.c: process to continue send and receive...
	_flgUartFin = (unsigned char)FLG_SET;
	main_reqNotHalt();				// uncommented 5/2/2013
}

/*******************************************************************************
	Routine Name:	_funcI2CFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
				unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcI2CFin( unsigned int size, unsigned char errStat )
{
	i2c_continue();					// Function in UART.c: process to continue send and receive...
	_flgI2CFin = (unsigned char)FLG_SET;
	main_reqNotHalt();				// uncommented 5/2/2013
}

/*******************************************************************************
	Routine Name:	_intI2c
	Form:			static void _intI2c( void )
	Parameters:		void
	Return value:	void
	Description:	I2C handler.
******************************************************************************/
static void _intI2c( void )
{
	(void)i2c_continue();
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	_intADC
	Form:			static void _intADC( void )
	Parameters:		void
	Return value:	void
	Description:	I2C handler.
******************************************************************************/
static void _intADC( void )
{
	_flgADCFin = 1;
}

/*******************************************************************************
	Routine Name:	main_reqNotHalt
	Form:			void reqNotHalt( void )
	Parameters:		void
	Return value:	void
	Description:	request not halt.
******************************************************************************/
void main_reqNotHalt( void )
{
	_reqNotHalt = (unsigned char)FLG_SET;
}

/*******************************************************************************
	Routine Name:	_intUart
	Form:			static void _intUart( void )
	Parameters:		void
	Return value:	void
	Description:	UART handler.
******************************************************************************/
static void _intUart( void )
{
	uart_continue(); 	//in UART.c: process to continue send and receive...
}


//===========================================================================
//INTERRUPT SERVICE ROUTINE FOR TBC
static void TBC_ISR( void ) 
{
	//Your Code Here...
	LED6_pin ^= 1; 
}
//===========================================================================

//===========================================================================
//INTERRUPT SERVICE ROUTINE FOR Timer8/9
static void TMR89_ISR( void ) 
{
	//Your Code Here...
	LED1_pin ^= 1;
	LED2_pin ^= 1;
	tm_init(TM_CH_NO_89);
	tm_start89();		//Clear & Restart Timer...
}
//===========================================================================

//===========================================================================
//INTERRUPT SERVICE ROUTINE FOR TimerA/B
static void TMRAB_ISR( void ) 
{
	//Your Code Here...
	LED4_pin ^= 1;
	LED5_pin ^= 1;
	tm_init(TM_CH_NO_AB);
	tm_startAB();		//Clear & Restart Timer...
}
//===========================================================================

//===========================================================================
//INTERRUPT SERVICE ROUTINE FOR TimerE/F
static void TMREF_ISR( void ) 
{
	//Your Code Here...
	LED7_pin ^= 1;
	LED8_pin ^= 1;
	tm_init(TM_CH_NO_EF);
	tm_startEF();		//Clear & Restart Timer...
}
//===========================================================================


//===========================================================================
// ----- ISR for External Interrupt Pin 
static void ExtInt_ISR( void ) 
{
	//Your Code Here...
	LED9_pin ^= 1;
	
}
//===========================================================================

//===========================================================================
void NOPx( unsigned int MyCount )
{
unsigned int ONCNT = 0;
unsigned int xxx;

xxx = MyCount;

	while(ONCNT < xxx) {	// NOP for "xxx" Cycles
		ONCNT++;
	}
	ONCNT = 0;			// Reset Counter 
}
//===========================================================================