#include "SBUS.h"
#include "stm32f4xx_hal.h"

//   UART_HandleTypeDef huart1;
	 
   uint8_t rxData[50];
  
	 uint8_t ReceiveBuff[25];  
	 uint8_t buffer_index = 0;
	unsigned int i =0 ;
void SBUS_USART( void)
	{
//	HAL_UART_Receive_DMA(&huart1, (uint8_t *)rxData, sizeof(rxData)-1) ;

		for(i=0;i<50;i++)
		{
	  int rx =rxData[i] ;
		if (buffer_index == 0 && rx == SBUS_STARTBYTE)
		{
			for(int j=0;j<26;j++)
				{
		     	rx=rxData[i++];
		    	ReceiveBuff[buffer_index++] = rx;
				}
					if (buffer_index == 25) 
			{
			buffer_index = 0;
			if (ReceiveBuff[24] == SBUS_ENDBYTE) 
			{
				for (int z = 0; z<18; z++) 
				{
		       _channels[z]      = 0;
				}
			_channels[0]  = ((ReceiveBuff[1]    |ReceiveBuff[2]<<8)                 & 0x07FF);
			_channels[1]  = ((ReceiveBuff[2]>>3 |ReceiveBuff[3]<<5)                 & 0x07FF);
			_channels[2]  = ((ReceiveBuff[3]>>6 |ReceiveBuff[4]<<2 |ReceiveBuff[5]<<10)  & 0x07FF);
			_channels[3]  = ((ReceiveBuff[5]>>1 |ReceiveBuff[6]<<7)                 & 0x07FF);
			_channels[4]  = ((ReceiveBuff[6]>>4 |ReceiveBuff[7]<<4)                 & 0x07FF);
			_channels[5]  = ((ReceiveBuff[7]>>7 |ReceiveBuff[8]<<1 |ReceiveBuff[9]<<9)   & 0x07FF);
			_channels[6]  = ((ReceiveBuff[9]>>2 |ReceiveBuff[10]<<6)                & 0x07FF);
			_channels[7]  = ((ReceiveBuff[10]>>5|ReceiveBuff[11]<<3)                & 0x07FF);
			_channels[8]  = ((ReceiveBuff[12]   |ReceiveBuff[13]<<8)                & 0x07FF);
			_channels[9]  = ((ReceiveBuff[13]>>3|ReceiveBuff[14]<<5)                & 0x07FF);
			_channels[10] = ((ReceiveBuff[14]>>6|ReceiveBuff[15]<<2|ReceiveBuff[16]<<10) & 0x07FF);
			_channels[11] = ((ReceiveBuff[16]>>1|ReceiveBuff[17]<<7)                & 0x07FF);
			_channels[12] = ((ReceiveBuff[17]>>4|ReceiveBuff[18]<<4)                & 0x07FF);
			_channels[13] = ((ReceiveBuff[18]>>7|ReceiveBuff[19]<<1|ReceiveBuff[20]<<9)  & 0x07FF);
			_channels[14] = ((ReceiveBuff[20]>>2|ReceiveBuff[21]<<6)                & 0x07FF);
			_channels[15] = ((ReceiveBuff[21]>>5|ReceiveBuff[22]<<3)                & 0x07FF);
//				((ReceiveBuff[23])      & 0x0001) ? _channels[16] = 2047: _channels[16] = 0;
//			((ReceiveBuff[23] >> 1) & 0x0001) ? _channels[17] = 2047: _channels[17] = 0;
		}
//			else {break;}
		}		
	  }
		}
	}
		
	int getChannel(int channel) 
		{
	extern int _channels[18];
	if (channel < 1 || channel > 18) {
		return 0;
	} else {
		return _channels[channel - 1];
	}
}
//int getNormalizedChannel(int channel) {
//	if (channel < 1 or channel > 18) {
//		return 0;
//	} else {
//		return (int) lround(_channels[channel - 1] / 9.92) - 100; //9.92 or 10.24?
//	}
//}

