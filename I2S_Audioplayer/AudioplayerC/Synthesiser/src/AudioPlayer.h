

#ifndef AUDIOPLAYER_H_
#define AUDIOPLAYER_H_

 #include "xllfifo.h"
 #include "xscugic.h"
 #include "xstatus.h"
 #include "xparameters.h"
 #include "xil_exception.h"

 #include "stdio.h"
 #include "stdbool.h"

 //#include "SD/SD.h"
 #include "ClockingWizard/ClockingWizard.h"

 /** @brief	Size of the FIFO buffer in bytes.
  */
 #define AUDIOPLAYER_FIFO_BUFFER_SIZE					256


 /** @brief		Initialize the I2S audio player.
  *  @return	Error code
  */
 u32 AudioPlayer_Init(void);

 /** @brief			Load a wave file and start playing.
  *  @param File	File name
  *  @return		Error code
  */
 u32 AudioPlayer_LoadFile(const char* File);

 /** @brief		Returns the busy state.
  *  @return	#true when busy
  */
 bool AudioPlayer_IsBusy(void);

 /** @brief			Send the internal test signal to the audio output.
  *  @param	Cycles	Test signal cycles
  */
 void AudioPlayer_SendTestSignal(u32 Cycles,short int type, char octave,char note);

 /** @brief	Stop audio playing.
  */
 void AudioPlayer_Stop(void);

#endif /* AUDIOPLAYER_H_ */