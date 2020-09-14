SET PATH=D:\Keil5\ARM\ARMCC\Bin;D:\nvidia\bin;D:\nvidia\lib\x64;D:\nvidia\libnvvp;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files\NVIDIA Corporation\Nsight Compute 2019.5.0\;C:\Program Files (x86)\Windows Kits\10\Windows Performance Toolkit\;C:\Program Files\Git\cmd;D:\matlab2020a\runtime\win64;D:\matlab2020a\bin;C:\Users\seu\AppData\Local\Microsoft\WindowsApps
SET ARMCC5_ASMOPT=--diag_suppress=9931
SET ARMCC5_CCOPT=--diag_suppress=9931
SET ARMCC5_LINKOPT=--diag_suppress=9931
SET CPU_TYPE=STM32F103C8
SET CPU_VENDOR=STMicroelectronics
SET UV2_TARGET=USART
SET CPU_CLOCK=0x00B71B00
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\main.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\stm32f10x_it.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\system_stm32f10x.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\pwm_output.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\led.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\key.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\delay.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\sys.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\usart.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\core_cm3.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmAsm" --Via "..\obj\startup_stm32f10x_hd._ia"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\misc.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\stm32f10x_gpio.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\stm32f10x_rcc.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\stm32f10x_usart.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\stm32f10x_tim.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmCC" --Via "..\obj\stm32f10x_flash.__i"
"D:\Keil5\ARM\ARMCC\Bin\ArmLink" --Via "..\OBJ\USART.lnp"
"D:\Keil5\ARM\ARMCC\Bin\fromelf.exe" "..\OBJ\USART.axf" --i32combined --output "..\OBJ\USART.hex"
