

@echo off

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

SoundVolumeView /Disable "KZ_DFI"
timeout /t 0 /nobreak >nul

SoundVolumeView /Enable "KZ_DFI"
timeout /t 0 /nobreak >nul

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


echo Alterado audio para KZ-D FI
timeout /t 3 /nobreak >nul

exit