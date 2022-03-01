![](https://github.com/2uj1m28ohz/flysafe/blob/main/Screenshot-22.60.1.png)

## Descrição
FlySafe é um terminal app escrito em shell script e desenvolvido para executar o backup de EVE Online[^1].

## Recursos
- Criar Backup
- Restaurar Backup
- Configurações
- Suporte
- Ajuda
- Sobre

## Requisitos
- [Windows](https://www.microsoft.com/windows) 10 Build 10240
- [Terminal](https://www.github.com/microsoft/terminal) _recomendado_
- [PowerShell](https://www.github.com/powershell/powershell) 7.2.0
- [7-Zip](https://www.7-zip.org) 21.07

## Como Executar
1. Descomprima o pacote .7z
2. Abra o PowerShell
3. [Habilite](https://docs.microsoft.com/powershell/module/microsoft.powershell.security/set-executionpolicy) a execução de scripts para o usuário atual
```
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```
4. [Desbloqueie](https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/unblock-file) o script
```
Get-Item C:\Users\[Usuário]\Downloads\FlySafe-22.60.1.ps1 | Unblock-File
```
5. Execute o script
```
C:\Users\[Usuário]\Downloads\FlySafe-22.60.1.ps1
```
>NOTA: Certifique-se de informar o local correto do script.

## Pacote
|Item|Arquivo|Status|
|:---|:---|:---:|
|Software|FlySafe-22.60.1.ps1|:white_check_mark:|
|Licença|License.html|:white_check_mark:|
|Readme|Readme.html|:white_check_mark:|
>NOTA: Você pode verificar a integridade do pacote comparando seu hash com a código disponível na página de download da versão.

## Atribuição
:sunrise_over_mountains: Wallpaper por [Daniel Leone](https://unsplash.com/photos/g30P1zcOzXo)

[^1]:[EVE Online](https://www.eveonline.com)
