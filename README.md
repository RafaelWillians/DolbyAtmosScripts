# Dolby Atmos Scripts

Scripts para alternar o Dolby Atmos entre dispositivos - apenas para Windows.

Dolby Atmos requer licença e apenas é possível atribuir a um único canal de áudio físico. Testado com Voicemeeter e infelizmente não foi possível atribuir a ele para então ir ao sistema todo, somente ao dispositivo de saída físico.

Essa é uma configuração pessoal, pois pode não ser necessário ter o VBCABLE instalado.
Porém me agradou mais direcionar para ele, em vez de diretamente para a saída de áudio.
Caso utilizar sem VBCABLE, será necessário modificar o script.

## Requisitos

* Windows 10 ou superior
* Dolby Atmos (via Microsoft Store)
* SoundVolumeView
* Voicemeeter Banana
* VBCABLE 

## Configurações no Voicemeeter
* Hardware Out: apenas CABLE Input (VBCABLE) e o CABLE Output direciona para a saída de áudio desejada com Dolby Atmos (KZ D-FI ou outro headset).
* Stereo Input: os 3 microfones (do KZ D-FI, headset Corsair e microfone Fifine).

## Scripts - formato .BAT
### [Saída de Áudio Principal - KZ D-FI](./scripts/KZ-DFI.bat)

## Arquitetura do Áudio no PC

![Diagrama Arquitetura Audio](./etc/arquitetura-audio.png)

### Outputs (Fones de ouvido, headsets ou alto-falantes)

1. Apenas o Voicemeeter Input como saída padrão. No Voicemeeter, está configurado o CABLE Input como Hardware Out A1. 
2. Automaticamente o VBCABLE direciona o áudio do CABLE Input para o CABLE Output.
3. Por scripts, é alternada a escuta do CABLE Output para os fones (KZ D-FI, headset Corsair ou outro fone).
4. Como alternativa, podemos alternar para os alto-falantes do monitor ou outra saída de áudio.

### Inputs (Microfones)
1. Apenas é definido o Voicemeeter Out B1 como padrão de entrada de áudio. E no próprio aplicativo do Voicemeeter, adicionamos os 3 microfones (KZ D-FI, Corsair ou Fifine) e apenas desmutamos o que utilizarmos.