![](https://github.com/2uj1m28ohz/flysafe/blob/main/Screenshot.png)

## :pencil2: Descrição
FlySafe é um terminal app escrito em shell script e desenvolvido para executar o backup de EVE Online[^1].

> :warning: O desenvolvimento de FlySafe será encerrado em 30/04/2022.

> :warning: O suporte à FlySafe será encerrado em 30/05/2022.

> :notebook_with_decorative_cover: Leia mais em [Política de Suporte](https://github.com/2uj1m28ohz/flysafe/blob/main/SUPPORT.md).

## :sparkles: Recursos
- Criar Backup
- Restaurar Backup
- Configurações
- Suporte
- Ajuda
- Sobre

## :desktop_computer: Requisitos
- [Windows](https://www.microsoft.com/windows) 10 Build 16299
- [Terminal](https://www.github.com/microsoft/terminal) _recomendado_
- [PowerShell](https://www.github.com/powershell/powershell) 7.2.0
- [7-Zip](https://www.7-zip.org) 21.07

## :package: Pacote
|Item|Arquivo|Status|
|:---|:---|:---:|
|Software|FlySafe.ps1|:white_check_mark:|
|Licença|License.html|:white_check_mark:|
|Leia-me|Readme.html|:white_check_mark:|
> :shield: Você pode verificar a integridade do pacote comparando seu hash com a código disponível na página de download da versão.

## :arrow_down: Como Instalar
1. Descomprima o pacote .7z
2. Abra o PowerShell
3. [Habilite](https://docs.microsoft.com/powershell/module/microsoft.powershell.security/set-executionpolicy) a execução de scripts para o usuário atual
```
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```
4. [Desbloqueie](https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/unblock-file) o script
```
Get-Item FlySafe.ps1 | Unblock-File
```
5. Execute o script
```
.\FlySafe.ps1
```
> :warning: Certifique-se de informar o local correto do script.

## :notebook_with_decorative_cover: Documentação
- [Política de Suporte](https://github.com/2uj1m28ohz/flysafe/blob/main/SUPPORT.md)
- [Licença de Software](https://github.com/2uj1m28ohz/flysafe/blob/main/LICENSE)
- [Código de Conduta](https://github.com/2uj1m28ohz/flysafe/blob/main/CODE_OF_CONDUCT.md)

## :clap: Atribuição
Wallpaper por [Jacob Wall](https://unsplash.com/photos/J35x4qL0mS0)

[^1]:[EVE Online](https://www.eveonline.com)
