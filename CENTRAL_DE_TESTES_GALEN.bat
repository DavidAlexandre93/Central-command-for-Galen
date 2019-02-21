:inicio
@echo off
cls
echo. ---------------------------
echo   Menu de Teste Galen Framework by:David_Alexandre
echo. ---------------------------
echo  1  - Inicializar_Teste_Real_Mobile
echo. 2  - Inicializar_Teste_Web
echo. 3  - Conectar_Appium_Emulator_Mobile_API24
echo  4  - Iniciar_Emulador_API24
echo  5  - Hub_SeleniumGrid
echo  6  - Conectar_Appium_Real_Mobile_Device
echo  7  - Report_Teste_Web
echo  8  - Report_Teste_Real_Mobile
echo  9  - Inicializar_Teste_Emulator_Mobile
echo  10 - Report_Teste_Emulator_Mobile
echo  11 - Sair
echo. ---------------------------

set /p Comando= Escolha uma Opcao :
if "%Comando%" equ "1" (goto:op1)
if "%Comando%" equ "2" (goto:op2)
if "%Comando%" equ "3" (goto:op3)
if "%Comando%" equ "4" (goto:op4)
if "%Comando%" equ "5" (goto:op5)
if "%Comando%" equ "6" (goto:op6)
if "%Comando%" equ "7" (goto:op7)
if "%Comando%" equ "8" (goto:op8)
if "%Comando%" equ "9" (goto:op9)
if "%Comando%" equ "10" (goto:op10)
if "%Comando%" equ "11" (goto:exit)


:op1
cd C:\Users\745093\AppData\Roaming\npm\node_modules\galenframework-cli\PROJETOS\Teste-Appium\Galen-Real-Mobile-Device
start galen test Layout.test.js --htmlreport Evidencia_de_Teste
pause
goto:inicio
:op2
cd C:\Users\745093\AppData\Roaming\npm\node_modules\galenframework-cli\PROJETOS\Teste-Layout
start galen test my.test --htmlreport Evidencia_de_Teste
pause
goto:inicio
:op3
start appium -a 127.0.0.1 -p 8001 -U emulator-5554
pause
goto:inicio
:op4
cd C:\SDK\tools
start emulator.exe -avd Nexus_5_API_24
start %windir%\system32\cmd.exe
cd C:\SDK\tools
start emulator.exe -list-avds
pause
goto:inicio
:op5
cd C:\Selenium Grid
start java -jar selenium-server-standalone-3.141.59.jar -port 4444 -role hub
pause
cd C:\Selenium Grid
start java -jar selenium-server-standalone-3.141.59.jar -role node
pause
goto:inicio
:op6
start appium -a 127.0.0.1 -p 8001 -U HAAZB600X236CSZ
pause
goto:inicio
:op7
cd C:\Users\745093\AppData\Roaming\npm\node_modules\galenframework-cli\PROJETOS\Teste-Layout
start start Evidencia_de_Teste/report.html
pause
goto:inicio
:op8
cd C:\Users\745093\AppData\Roaming\npm\node_modules\galenframework-cli\PROJETOS\Teste-Appium\Galen-Real-Mobile-Device
start start Evidencia_de_Teste/report.html
pause
goto:inicio
:op9
cd C:\Users\745093\AppData\Roaming\npm\node_modules\galenframework-cli\PROJETOS\Teste-Appium\Galen-Emulator-Mobile-Device
start galen test Layout.test.js --htmlreport Evidencia_de_Teste
pause
goto:inicio
:op10
cd C:\Users\745093\AppData\Roaming\npm\node_modules\galenframework-cli\PROJETOS\Teste-Appium\Galen-Emulator-Mobile-Device
start start Evidencia_de_Teste/report.html
pause
goto:inicio
:exit
exit