

#include "xstatus.h"
#include "AudioPlayer.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_types.h"

#define GPIO_BASE 0x41200000;
#define GPIO_OUTPUT_DEVICE_ID	XPAR_GPIO_0_DEVICE_ID
#define GPIO_INPUT_DEVICE_ID	XPAR_GPIO_0_DEVICE_ID

#define BIT0	0x01
#define BIT1	0x02
#define BIT2	0x04
#define BIT3	0x08

void GpioInputExample(u16 DeviceId, u32 *DataRead);
XGpio gpioOutput;
XGpio GpioInput;

int main(void)
{
	u32 InputData = 0;
	u32 InputData2 = 0;
	u32 InputData3 = 0;
	u32 InputData4 = 0;
	int Status;

	if(AudioPlayer_Init() != XST_SUCCESS)
	{

		return XST_FAILURE;
	}
	char octaveCounter = 1;
	char soundType = 1;
	 XGpio_Initialize(&gpioOutput, GPIO_OUTPUT_DEVICE_ID);
	 XGpio_SetDataDirection(&gpioOutput, 2, 0x00000000);

	XGpio_Initialize(&GpioInput, GPIO_OUTPUT_DEVICE_ID);
	 /* Set the direction for all signals to be inputs */
	 XGpio_SetDataDirection(&GpioInput, 1, 0xFFFFFFFF);

	while(1)
	{
		char counter = 0;
		if(counter == 0 ){

				XGpio_DiscreteWrite(&gpioOutput, 2, BIT0);
				GpioInputExample(GPIO_INPUT_DEVICE_ID, &InputData);
				if (Status != XST_SUCCESS) {

				}
				switch(InputData)
				{
				case 14: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter,1); 	break;
				case 13: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter,2); 	break;
				case 11: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter,3); 	break;
				case 7: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter,4); 	break;
				default:  break;
				}
				counter++;
		}

				if(counter == 1){
				XGpio_DiscreteWrite(&gpioOutput, 2, BIT1);
				GpioInputExample(GPIO_INPUT_DEVICE_ID, &InputData2);
				if (Status != XST_SUCCESS) {}
				switch(InputData2)
				{
				case 14: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter,5); 	break;
				case 13: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter,6); 	break;
				case 11: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter,7); 	break;
				case 7: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter,8); 	break;
				default:  break;
				}
				counter++;
			}



				if(counter == 2){
				XGpio_DiscreteWrite(&gpioOutput, 2, BIT2);
				GpioInputExample(GPIO_INPUT_DEVICE_ID, &InputData3);
				if (Status != XST_SUCCESS) {

					}
				switch(InputData3)
				{
				case 14: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter+1,1); 	break;
				case 13: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter+1,2); 	break;
				case 11: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter+1,3); 	break;
				case 7: AudioPlayer_SendTestSignal(4000,soundType,octaveCounter+1,4); 	break;
				default:  break;
				}
				counter++;
			}

//				if(counter == 3){
//				XGpio_DiscreteWrite(&gpioOutput, 2, BIT2);
//				GpioInputExample(GPIO_INPUT_DEVICE_ID, &InputData4);
//				if (Status != XST_SUCCESS) {
//
//				}
//				switch(InputData4)
//				{
//				case 14: octaveCounter++;	if (octaveCounter >2){octaveCounter = 1;}	break;
//				case 13: octaveCounter--;	if (octaveCounter <1 ){octaveCounter = 2;}	break;
//				case 11: soundType++; 		if (soundType >4){soundType = 0;}			break;
//				case 7: soundType--; 		if (soundType <1){soundType = 4;}			break;
//				default:  break;
//				}
//				counter++;
//			}

		}
	  return XST_FAILURE;

}


void GpioInputExample(u16 DeviceId, u32 *DataRead)
{

	 /* Read the state of the data so that it can be  verified */
	 *DataRead = XGpio_DiscreteRead(&GpioInput, 1);

}
