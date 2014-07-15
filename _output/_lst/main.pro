static	void tb_setHtbdiv(unsigned char htd);
static	void tm_start89(void);
static	void tm_startAB(void);
static	void tm_startEF(void);
static	void tm_restart89(void);
static	void tm_restartAB(void);
static	void tm_restartEF(void);
static	void tm_stop89(void);
static	void tm_stopAB(void);
static	void tm_stopEF(void);
static	unsigned short tm_get89Counter(void);
static	unsigned short tm_getABCounter(void);
static	unsigned short tm_getEFCounter(void);
static	void tm_clr89Counter(void);
static	void tm_clrABCounter(void);
static	void tm_clrEFCounter(void);
static	void tm_set89Data(unsigned short data);
static	void tm_setABData(unsigned short data);
static	void tm_setEFData(unsigned short data);
static	unsigned char tm_get89Source(void);
static	unsigned char tm_getABSource(void);
static	unsigned char tm_getEFSource(void);
static	void tm_set89Source(unsigned char cs);
static	void tm_setABSource(unsigned char cs);
static	void tm_setEFSource(unsigned char cs);
static	void tm_set8Oneshot(unsigned char ost);
static	void tm_set9Oneshot(unsigned char ost);
static	void tm_setAOneshot(unsigned char ost);
static	void tm_setBOneshot(unsigned char ost);
extern	int main(void);
extern	void main_clrWDT(void);
static	void Initialization(void);
static	void SetOSC(void);
extern	void analog_comparator(void);
extern	void PortA_Low(void);
extern	void PortB_Low(void);
extern	void PortC_Low(void);
extern	void PortA_Digital_Inputs(void);
extern	void PWM_B0_ON(int myPeriod,int myDutyCycle);
extern	void PinB0_PWM(void);
static	void _funcUartFin(unsigned int size,unsigned char errStat);
static	void _funcI2CFin(unsigned int size,unsigned char errStat);
static	void _intI2c(void);
static	void _intADC(void);
extern	void main_reqNotHalt(void);
static	void _intUart(void);
static	void TBC_ISR(void);
static	void TMR89_ISR(void);
static	void TMRAB_ISR(void);
static	void TMREF_ISR(void);
static	void ExtInt_ISR(void);
extern	void NOPx(unsigned int MyCount);
extern	void MyUART_Send(void);
extern	void MyUART_Receive(void);
extern	void SerialLCDSplash(void);
extern	void ClearSerialLCD(void);
extern	void SendLCDCmd(unsigned char LCDcmd);
extern	void LCD_Init(void);
