@echo off
color 2
title Otimizador do Kaua

:MENU
cls

echo.
echo  KK   KK     AAA     UU   UU     AAA    
echo  KK  KK     AAAAA    UU   UU    AAAAA   
echo  KKKKK     AA   AA   UU   UU   AA   AA  
echo  KK  KK    AAAAAAA   UU   UU   AAAAAAA  
echo  KK   KK   AA   AA    UUUUU    AA   AA  
echo.
echo  =========================================
echo       SYSTEM OPTIMIZER TOOL 
echo  =========================================
echo.


echo ========================================================
echo MENU DE OPCOES
echo ========================================================
echo.
echo [1] Limpeza Semanal                                                               
echo [2] Verificar IP (ipconfig)
echo [3] Correcao de arquivos Corrompidos
echo [4] RESET TOTAL REDE
echo [5] Ajustar para obter melhor desempenho
echo [6]Desabilitar Efeitos De Animacoes do Windows
echo [7]Habilitar Desempenho Maximo (Energia)
echo [8]Ferramentas do Sistema
echo [9]Otimizar Teclado

echo.
echo ========================================================
set /p opcao=Digite o numero da opcao Desejada: 

:: Logica de decisao
if "%opcao%"=="1" goto LIMPAR
if "%opcao%"=="2" goto REDE
if "%opcao%"=="3" goto CORRECAO
if "%opcao%"=="4" goto RESET
if "%opcao%"=="5" goto ANIMACOES
if "%opcao%"=="6" goto EFEITOS
if "%opcao%"=="7" goto ENERGIA
if "%opcao%"=="8" goto ATALHOS
if "%opcao%"=="9" goto TECLADO



:: Se digitar errado
echo.
echo Opcao invalida! Tente Novamente.
pause 
goto MENU
:LIMPAR
cls
INICIANDO OTIMIZAÇAO!

del /s /q /f  c:\windows\temp.
del /s /q /f  C:\WINDOWS\Prefetch
del /s /q /f  %temp%.
del /s /q /f  %systemdrive%\*.tmp
del /s /q /f  %systemdrive%\*._mp
del /s /q /f  %systemdrive%\*.log
del /s /q /f  %systemdrive%\*.gid
del /s /q /f  %systemdrive%\*.chk
del /s /q /f  %systemdrive%\*.old
del /s /q /f  %systemdrive%\recycled\*.*
del /s /q /f  %systemdrive%\$Recycle.Bin\*.*
del /s /q /f  %windir%\*.bak
del /s /q /f  %windir%\prefetch\*.*
del /s /q /f  %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db
del /s /q /f  %LocalAppData%\Microsoft\Windows\Explorer\*.db
del /f  %SystemRoot%\Logs\CBS\CBS.log
del /f  %SystemRoot%\Logs\DISM\DISM.log
rd /s /q  c:\windows\tempor~1
rd /s /q  c:\windows\temp
rd /s /q c:\windows\tmp
rd /s /q  c:\windows\ff*.tmp
rd /s /q  c:\windows\history
rd /s /q  c:\windows\cookies
rd /s /q  c:\windows\recent
rd /s /q  c:\windows\spool\printers
ipconfig /flushdns
RunDll32.exe Inetcpl.cpl  ClearMyTracksByProcess 16exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "56" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
cls
powershell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Reinicie o computador para aplicar a otimizacao', ' by Kauã')"
pause
goto MENU


:REDE
cls
echo Detalhes do IP
ipconfig
echo.
pause
goto MENU

:CORRECAO
cls
echo Iniciando verificacao de sistema...
sfc /scannow
pause
goto MENU

:RESET
cls 
echo ==========================================
echo   RESET COMPLETO DE REDE
echo ==========================================
echo.
echo 1. Resetando Winsock...
netsh winsock reset
echo 2. Resetando pilha TCP/IP...
netsh int ip reset
echo 3. Liberando IP atual...
ipconfig /release
echo 4. Renovando IP...
ipconfig /renew
echo 5. Limpando cache DNS...
ipconfig /flushdns
echo.
echo [ATENCAO] E altamente recomendado REINICIAR o PC agora.
pause
goto MENU

:ANIMACOES
cls
echo Abrindo configuracoes de desempenho...
echo.
echo Adicione a Opcao "Ajustar para obter um melhor desempenho"
echo.
SystemPropertiesPerformance.exe
pause
goto MENU

:ENERGIA 
echo Aplicando Script De Desempenho Maximo...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo.
echo Plano De Energia De Desempenho Maximo Adicionado!
echo.
echo Abrindo Configuracoes de Energia...
powercfg.cpl
echo.
echo Aplique o Plano De Energia De Desempenho Maximo Manualmente Na Janela Que Foi Aberta.
echo.
pause
goto MENU
:EFEITOS
cls
echo Abrindo Efeitos Visuais (Configuracoes Modernas)...
start ms-settings:easeofaccess-visualeffects
echo. Desabilite Efeitos Visuais Na Janela Que Foi Aberta.
pause
goto MENU

:ATALHOS
cls
echo [1] Verificar integridade do Windows (SFC)
echo [2] Gerenciador de Dispositivos
echo [3] Editor de Registro
echo [4] Voltar
set /p tool="Escolha: "
if "%tool%"=="1" start cmd /k sfc /scannow
if "%tool%"=="2" start devmgmt.msc
if "%tool%"=="3" start regedit.exe
if "%tool%"=="4" goto MENU
goto ATALHOS

:TECLADO
cls
echo Otimizando resposta do Teclado...
reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 31 /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v Flags /t REG_SZ /d 122 /f
echo.
echo Teclado otimizado! (Requer Logoff/Reiniciar)
pause
goto MENU















