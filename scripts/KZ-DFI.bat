:: Script para habilitar o Dolby Atmos na saída de áudio KZ-D-FI.
:: Este script não irá definir essa saída por padrão, 
:: pois o padrão sempre vai ser o Voicemeeter Input.

:: Foi necessário ajustar o script para desabilitar e reabilitar o dispositivo,
:: além de incluir delays devido a eventuais falhas em aplicar as configurações.

@echo off

:: Define como padrão o Voicemeeter Input
SoundVolumeView /SetDefault "Voicemeeter Input" all
timeout /t 0 /nobreak >nul

:: Necessário definir outros dispositivos com outro áudio espacial
:: devido a inconsistências na execução do script 
SoundVolumeView /SetSpatial "CORSAIR VOID ELITE Wireless Gaming Headset" "Windows Sonic"
timeout /t 0 /nobreak >nul

SoundVolumeView /SetSpatial "{0.0.0.00000000}.{3c43c84d-1922-4b61-8f6f-9203303bb3ec}" "Windows Sonic"
timeout /t 0 /nobreak >nul

SoundVolumeView /SetSpatial "KZ_DFI" "Dolby Atmos for Headphones"
timeout /t 0 /nobreak >nul

SoundVolumeView /SetPlaybackThroughDevice "CABLE Output" "KZ_DFI"
timeout /t 0 /nobreak >nul

SoundVolumeView /SetListenToThisDevice "CABLE Output" 1
timeout /t 0 /nobreak >nul

:: Desabilita e reabilita, devido a falhas para retirar Dolby Atmos 
:: do dispositivo anterior.
SoundVolumeView /Disable "KZ_DFI"
timeout /t 0 /nobreak >nul

SoundVolumeView /Enable "KZ_DFI"
timeout /t 0 /nobreak >nul

:: Reexecuta o script, para garantir êxito na alteração
SoundVolumeView /SetDefault "Voicemeeter Input" all
timeout /t 0 /nobreak >nul

SoundVolumeView /SetSpatial "CORSAIR VOID ELITE Wireless Gaming Headset" "Windows Sonic"
timeout /t 0 /nobreak >nul

SoundVolumeView /SetSpatial "{0.0.0.00000000}.{3c43c84d-1922-4b61-8f6f-9203303bb3ec}" "Windows Sonic"
timeout /t 0 /nobreak >nul

SoundVolumeView /SetSpatial "KZ_DFI" "Dolby Atmos for Headphones"
timeout /t 0 /nobreak >nul

SoundVolumeView /SetPlaybackThroughDevice "CABLE Output" "KZ_DFI"
timeout /t 0 /nobreak >nul

SoundVolumeView /SetListenToThisDevice "CABLE Output" 1
timeout /t 0 /nobreak >nul

:: Mensagem na tela para informar a alteração com sucesso.
echo Alterado audio para KZ-D FI
timeout /t 3 /nobreak >nul

exit