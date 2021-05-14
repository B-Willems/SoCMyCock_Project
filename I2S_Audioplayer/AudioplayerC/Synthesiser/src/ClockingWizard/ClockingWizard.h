

#ifndef _CLOCKINGWIZARD_H_
#define _CLOCKINGWIZARD_H_

 #include "xil_io.h"
 #include "xstatus.h"
 #include "xil_types.h"

 /** @brief	Max. timeout for the Clocking Wizard.
  */
 #define CLOCKINGWIZARD_TIMEOUT									10000

 /** @brief	Clocking Wizard driver instance.
  */
 typedef struct
 {
	 UINTPTR BaseAddr;                   						/**< Memory address for this device */
	 u8 isLocked;                   							/**< Device state */
	 u8 DIVCLK_DIVIDE;                   						/**< Clock divider */
	 u8 CLKFBOUT_MULT;                 							/**< Clock multiplier */
	 u16 CLKFBOUT_FRAC_Multiply;           						/**< Clock fractional multiplier */
	 u32 CLKFBOUT_PHASE;       		    						/**< Clock phase */
 } ClockingWizard_t;

 /** @brief	Clocking Wizard output configuration.
  */
 typedef struct
 {
	  u8 Channel;												/**< Clocking Wizard channel */
	  u8 DIVIDE;                   								/**< Integer part of divider */
	  u16 FRAC_Divide;                   						/**< Fractional part of divider */
	  u32 PHASE;                   								/**< Phase */
	  u32 DUTY;                   								/**< Duty cycle */
 } ClockingWizard_Clock_t;

 /** @brief					Initialize the Clocking Wizard.
  *  @param Device			Pointer to Clocking Wizard instance
  *  @param EffectiveAddr	Device base address
  *  @return				Error code
  */
 u32 ClockingWizard_Init(ClockingWizard_t* Device, const UINTPTR EffectiveAddr);

 /** @brief					Get the Clocking Wizard configuration.
  *  @param Device			Pointer to Clocking Wizard instance
  *  @param EffectiveAddr	Device base address
  *  @return				Error code
  */
 u32 ClockingWizard_GetClockBuffer(ClockingWizard_t* Device);

 /** @brief					Update the Clocking Wizard configuration.
  *  @param Device			Pointer to Clocking Wizard instance
  *  @param EffectiveAddr	Device base address
  *  @return				Error code
  */
 u32 ClockingWizard_SetClockBuffer(ClockingWizard_t* Device);

 /** @brief			Get the output configuration.
  *  @param Device	Pointer to Clocking Wizard instance
  *  @param Output	Pointer to output configuration
  *  @return		Error code
  */
 u32 ClockingWizard_GetOutput(ClockingWizard_t* Device, ClockingWizard_Clock_t* Output);

 /** @brief			Update the clock output configuration.
  *  @param Device	Pointer to Clocking Wizard instance
  *  @param Output	Pointer to output configuration
  *  @return		Error code
  */
 u32 ClockingWizard_SetOutput(ClockingWizard_t* Device, ClockingWizard_Clock_t* Output);

 /** @brief			Reset the Clocking Wizard.
  *  @param Device	Pointer to Clocking Wizard instance
  *  @return		Error code
  */
 u32 ClockingWizard_Reset(ClockingWizard_t* Device);

 /** @brief			Load the default configuration from the Clocking Wizard.
  *  @param Device	Pointer to Clocking Wizard instance
  *  @return		Error code
  */
 u32 ClockingWizard_LoadDefault(ClockingWizard_t* Device);

#endif /* _CLOCKINGWIZARD_H_ */
