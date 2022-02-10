![](https://github.com/2uj1m28ohz/flysafe/blob/main/FlySafeScreen.png)

## Descrição
FlySafe é um terminal app escrito em shell script e desenvolvido exclusivamente para executar o backup de EVE Online[^2]. FlySafe é um fork de Autopilot[^1].

## Recursos
- Backup EVE Online
- Ajuda
- Updates
- Sobre

## Requisitos
- [Windows](https://www.microsoft.com/windows) 10+
- [Terminal](https://www.github.com/microsoft/terminal) *recomendado*
- [PowerShell](https://www.github.com/powershell/powershell) 7.2.0+
- [7-Zip](https://www.7-zip.org) 21.07+

## Como Executar
1. Descomprima o pacote .7z
2. Abra o PowerShell
3. [Desbloqueie](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.utility/unblock-file) o script
```
Get-Item C:\Users\[Usuário]\Downloads\FlySafe-[Versão].ps1 | Unblock-File
```
4. Execute o script
```
C:\Users\[Usuário]\Downloads\FlySafe-[Versão].ps1
```
![](https://github.com/2uj1m28ohz/flysafe/blob/main/FlySafeTerminal.png)
>NOTA: *Certifique-se de informar o local e nome corretos do script*

## Histórico e Requisitos
|Versão|Publicação|Suporte|Windows|PowerShell|7-Zip|
|:---|:---:|:---:|:---:|:---:|:---:|
|22.40.1|✅|✅|10|7.2.0|21.07|
|22.30.1|✅|❌|10|7.0.0|19.00|
|22.20.1|✅|❌|10|7.0.0|19.00|

[^1]: [Autopilot](https://github.com/2uj1m28ohz/autopilot)
[^2]: [EVE Online](https://www.eveonline.com)
