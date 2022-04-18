# ---------------------------------------------------------------------------------------------------| INÍCIO

# Language:			PT-BR
# Copyright:		(C) 2022 David Camargo
# Descrição:		FlySafe é um software desenvolvido para executar o backup de EVE Online.
# Licença:			FlySafe é um software livre distribuído sob a GNU General Public License v3.0. Leia License.html para mais detalhes.
# GitHub:			https://github.com/2uj1m28ohz

# ---------------------------------------------------------------------------------------------------| CARREGAR

function CarregarNucleo {
	Clear-Host
	$script:ConfirmPreference = "None"
	$script:ErrorActionPreference = "SilentlyContinue"
	$script:ErrorView = "ConciseView"
	$script:PSDefaultParameterValues['*:Encoding'] = 'UTF8'
	$script:SoftwareDiretorioLocal = $PSCommandPath
	$script:SoftwareNome = "FlySafe"
	$script:SoftwareVersao = "22.090.1"
	$script:SoftwareAlgoritmoVersao = "22.090.1"
	$script:SoftwareInterfaceVersao = "22.070.1"
	$script:SoftwareRequisitoSistemaOperacional = "15063"
	$script:SoftwareRequisitoPowerShell = "7.2.0"
	$script:SoftwareRequisito7Zip = "21.07"
	$script:SoftwareProblemas = 0
	$script:DispositivoNome = "$env:ComputerName"
	$script:UsuarioNome = "$env:UserName"
	$script:DiretorioUsuario = "$env:UserProfile"
	$script:DiretorioDownloads = "$env:UserProfile\Downloads"
	$script:ArquivoMetadados = "Metadata.json"
	$script:CorCamada1 = "Black"
	$script:CorCamada2 = "White"
	$script:CorTitulo = "DarkMagenta"
	$script:CorDescricao = "Magenta"
	$script:CorDivisor = "Cyan"
	$script:CorCategoria = "Cyan"
	$script:CorSecao = "Cyan"
	$script:CorID = "DarkGray"
	$script:CorExpansor = "DarkGray"
	$script:CorNavBit = "Cyan"
	$script:CorDestaque = "Cyan"
	$script:CorSucesso = "Green"
	$script:CorAlerta = "Yellow"
	$script:CorErro = "Red"
	$script:Terminal = (Get-Host).UI.RawUI
	$script:TerminalTitulo = $Terminal.WindowTitle
	$script:Terminal.WindowTitle = "$SoftwareNome"
	$script:Terminal.BackgroundColor = "$CorCamada1"
	$script:Terminal.ForegroundColor = "$CorCamada2"
	$script:ElementoTitulo = "  [|]"
	$script:ElementoDescricao = "  {.}"
	$script:ElementoProgresso = "  (-)"
	$script:ElementoInteracao = "  (+)"
	$script:ElementoSucesso = "  (*)"
	$script:ElementoAlerta = "  (!)"
	$script:ElementoErro = "  (~)"
	$script:ElementoAtivo = "  [ +]"
	$script:ElementoInativo = "  [- ]"
	$script:ElementoExpansor = "+"
	$script:ElementoNavBitOn = "•"
	$script:ElementoNavBitOff = " "
	$script:ElementoSeparador = "›"
	$script:ElementoDivisor = "  ------------------------------------------------------------------------------------------------+-+-"
	Write-Host ""
	Write-Host "$ElementoTitulo CARREGANDO" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoProgresso Núcleo carregado"
}

function CarregarInterface {
	Write-Host "$ElementoProgresso Carregando interface"

	$script:CriarBackupNavBit = "$ElementoNavBitOff"
	$script:RestaurarBackupNavBit = "$ElementoNavBitOff"
	$script:Configuracoes_HabilitarEventosNavBit = "$ElementoNavBitOff"
	$script:Configuracoes_DesabilitarEventosNavBit = "$ElementoNavBitOff"
	$script:Suporte_VisualizarEventosNavBit = "$ElementoNavBitOff"
	$script:Suporte_InstalarSoftwareNavBit = "$ElementoNavBitOff"
	$script:Suporte_DesinstalarSoftwareNavBit = "$ElementoNavBitOff"
	$script:Ajuda_InterfaceNavBit = "$ElementoNavBitOff"
	$script:Ajuda_RecursosNavBit = "$ElementoNavBitOff"
	$script:Ajuda_PoliticaSuporteNavBit = "$ElementoNavBitOff"
	$script:SobreNavBit = "$ElementoNavBitOff"

	$script:MenuTitulo = "MENU"
	$script:ErroTitulo = "ERRO"
	$script:CriarBackupTitulo = "MENU $ElementoSeparador CRIAR BACKUP"
	$script:RestaurarBackupTitulo = "MENU $ElementoSeparador RESTAURAR BACKUP"
	$script:ConfiguracoesTitulo = "MENU $ElementoSeparador CONFIGURAÇÕES"
	$script:Configuracoes_HabilitarEventosTitulo = "MENU $ElementoSeparador CONFIGURAÇÕES $ElementoSeparador HABILITAR EVENTOS"
	$script:Configuracoes_DesabilitarEventosTitulo = "MENU $ElementoSeparador CONFIGURAÇÕES $ElementoSeparador DESABILITAR EVENTOS"
	$script:SuporteTitulo = "MENU $ElementoSeparador SUPORTE"
	$script:Suporte_VisualizarEventosTitulo = "MENU $ElementoSeparador SUPORTE $ElementoSeparador VISUALIZAR EVENTOS"
	$script:Suporte_InstalarSoftwareTitulo = "MENU $ElementoSeparador SUPORTE $ElementoSeparador INSTALAR SOFTWARE"
	$script:Suporte_AtualizarSoftwareTitulo = "MENU $ElementoSeparador SUPORTE $ElementoSeparador ATUALIZAR SOFTWARE"
	$script:Suporte_DesinstalarSoftwareTitulo = "MENU $ElementoSeparador SUPORTE $ElementoSeparador REMOVER SOFTWARE"
	$script:AjudaTitulo = "MENU $ElementoSeparador AJUDA"
	$script:Ajuda_InterfaceTitulo = "MENU $ElementoSeparador AJUDA $ElementoSeparador INTERFACE"
	$script:Ajuda_RecursosTitulo = "MENU $ElementoSeparador AJUDA $ElementoSeparador RECURSOS"
	$script:Ajuda_PoliticaSuporteTitulo = "MENU $ElementoSeparador AJUDA $ElementoSeparador POLÍTICA DE SUPORTE"
	$script:SobreTitulo = "MENU $ElementoSeparador SOBRE"
	$script:EncerrarTitulo = "ENCERRANDO"

	$script:MenuDescricao = "$SoftwareNome é desenvolvido para executar o backup de EVE Online"
	$script:CriarBackupDescricao = "Cria uma cópia de segurança dos dados e configurações de EVE Online"
	$script:RestaurarBackupDescricao = "Restaura uma cópia de segurança dos dados e configurações de EVE Online"
	$script:ConfiguracoesDescricao = "Permite gerenciar a configuração de $SoftwareNome"
	$script:Configuracoes_HabilitarEventosDescricao = "Habilita o registro de eventos"
	$script:Configuracoes_DesabilitarEventosDescricao = "Desabilita o registro de eventos"
	$script:SuporteDescricao = "Permite gerenciar a instalação de $SoftwareNome"
	$script:Suporte_VisualizarEventosDescricao = "Exibe o registro recente de eventos"
	$script:Suporte_InstalarSoftwareDescricao = "Instala $SoftwareNome $SoftwareVersao"
	$script:Suporte_AtualizarSoftwareDescricao = "Atualiza $SoftwareNome"
	$script:Suporte_DesinstalarSoftwareDescricao = "Desinstala $SoftwareNome $SoftwareVersao"
	$script:AjudaDescricao = "Reúne informações sobre a interface, recursos de software e a política de suporte"
	$script:Ajuda_InterfaceDescricao = "Descreve os elementos da interface"
	$script:Ajuda_RecursosDescricao = "Descreve os recursos disponíveis e seus status"
	$script:Ajuda_PoliticaSuporteDescricao = "Descreve as diretrizes de suporte ao software"
	$script:SobreDescricao = "Exibe informações sobre $SoftwareNome"

	$script:SubRotinaSelecao = "Selecione um comando"
	$script:SubRotinaInicio = "Iniciando"
	$script:SubRotinaFim = "Concluído"
	$script:SubRotinaRetornar = "Retornar"
	$script:SubRotinaSair = "Pressione [Enter] para retornar"
	$script:SubRotinaEncerrar = "Pressione [Enter] para encerrar"
	$script:AlertaProblemasEncontrados = "problema(s) encontrado(s). Verifique 'Ajuda'"
	$script:AlertaDesenvolvimentoEncerrado = "O desenvolvimento de $SoftwareNome foi encerrado"
	$script:AlertaDesenvolvimentoDesconhecido = "O desenvolvimento de $SoftwareNome é desconhecido"
	$script:AlertaSuporteEncerrado = "O suporte à esta versão de $SoftwareNome foi encerrado"
	$script:AlertaSuporteDesconhecido = "O suporte à esta versão de $SoftwareNome é desconhecido"
	$script:AlertaComandoInvalido = "Comando inválido"
	$script:ErroDiretorioOrigem = "Diretório de origem não encontrado"
	$script:ErroDiretorio = "Diretório não encontrado"
	$script:ErroArquivo = "Arquivo não encontrado"
	$script:ErroEventosDesabilitado = "Eventos está desabilitado"
	$script:ErroDesconhecido = "Erro desconhecido"
}

function CarregarInterfaceCores {
	Clear-Host
	Write-Host ""
	$Terminal.BackgroundColor = "$CorCamada1"
	$Terminal.ForegroundColor = "$CorCamada2"
}

function CriarEstruturaDiretorios {
	Write-Host "$ElementoProgresso Criando estrutura de diretórios"
	$script:DiretorioRaiz = "$DiretorioUsuario\AppData\Local\Hexagon"
	$script:DiretorioInstalacao = "$DiretorioRaiz\$SoftwareNome"
	$script:DiretorioSoftware = "$DiretorioInstalacao\Software"
	$script:DiretorioEventos = "$DiretorioInstalacao\Events"
	$script:DiretorioTemporario = "$DiretorioInstalacao\Temporary"
	$script:ArquivoConfiguracoes = "Settings.json"
	if ((Test-Path "$DiretorioRaiz") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioRaiz" | Out-Null
	}
	if ((Test-Path "$DiretorioInstalacao") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioInstalacao" | Out-Null
	}
	if ((Test-Path "$DiretorioSoftware") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioSoftware" | Out-Null
	}
	if ((Test-Path "$DiretorioEventos") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioEventos" | Out-Null
	}
	if ((Test-Path "$DiretorioTemporario") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario" | Out-Null
	}
	if ((Test-Path "$DiretorioLo\$ArquivoEventos") -eq $False) {
		New-Item -ItemType "File" -Path "$DiretorioEventos\$ArquivoEventos" | Out-Null
	}
	Set-Location "$DiretorioTemporario"
}

function VerificarTempo {
	$script:TempoData = Get-Date -Format "yyyy.MM.dd"
	$script:TempoHora = Get-Date -Format "HH:mm:ss"
	$script:ArquivoEventos = ("$SoftwareNome"+"-"+"$TempoData"+".log")
	$script:ArquivoEventosLayout = "  $TempoData; $TempoHora; $DispositivoNome; $SistemaOperacionalVersao; $PowerShellVersao; $7ZipVersao; $UsuarioNome; $SoftwareNome; $SoftwareVersao;"
}

function CarregarConfiguracoes {
	Write-Host "$ElementoProgresso Carregando configurações"
	$script:SoftwareConfiguracoes = @{
		ArquivoConfiguracoesVersao = "$SoftwareVersao"
		RegistrarEventosStatus = "1"
		VerificarModulosStatus = "0"
		VerificarInstalacaoStatus = "0"
		GerenciarItensLegadosVersao = "$SoftwareVersao"
	}
	if ((Test-Path "$DiretorioSoftware\$ArquivoConfiguracoes") -eq $True) {
		$script:SoftwareConfiguracoesTemporario = (Get-Content -Path "$DiretorioSoftware\$ArquivoConfiguracoes" | ConvertFrom-Json)
		if ($SoftwareConfiguracoesTemporario.ArquivoConfiguracoesVersao -eq $SoftwareVersao) {
			$script:SoftwareConfiguracoes.RegistrarEventosStatus = $SoftwareConfiguracoesTemporario.RegistrarEventosStatus
			$script:SoftwareConfiguracoes.VerificarModulosStatus = $SoftwareConfiguracoesTemporario.VerificarModulosStatus
			$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = $SoftwareConfiguracoesTemporario.VerificarInstalacaoStatus
			$script:SoftwareConfiguracoes.GerenciarItensLegadosVersao = $SoftwareConfiguracoesTemporario.GerenciarItensLegadosVersao
		} else {
			$script:SoftwareConfiguracoes.RegistrarEventosStatus = $SoftwareConfiguracoesTemporario.RegistrarEventosStatus
			$script:SoftwareConfiguracoes.VerificarModulosStatus = $SoftwareConfiguracoesTemporario.VerificarModulosStatus
			$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = $SoftwareConfiguracoesTemporario.VerificarInstalacaoStatus
			$script:SoftwareConfiguracoes.GerenciarItensLegadosVersao = $SoftwareConfiguracoesTemporario.GerenciarItensLegadosVersao
			$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
		}
	} else {
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq $Null) {
		$script:SoftwareConfiguracoes.RegistrarEventosStatus = 1
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.VerificarModulosStatus -eq $Null) {
		$script:SoftwareConfiguracoes.VerificarModulosStatus = 0
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq $Null) {
		$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = 0
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.GerenciarItensLegadosVersao -eq $Null) {
		$script:SoftwareConfiguracoes.GerenciarItensLegadosVersao = 0
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		if ((Test-Path "$DiretorioEventos\$ArquivoEventos") -eq $True) {
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value ""
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout $SoftwareDiretorioLocal"
		} else {
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout $SoftwareDiretorioLocal"
		}
	}
}

function VerificarSistemaOperacional {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSistemaOperacional"
	}
	Write-Host "$ElementoProgresso Verificando Sistema Operacional"
	$script:SistemaOperacionalVersao = (Get-CimInstance Win32_OperatingSystem).BuildNumber
	if (($IsWindows -eq $False) -or ($SistemaOperacionalVersao -lt $SoftwareRequisitoSistemaOperacional)) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSistemaOperacional; Sistema Operacional incompatível"
		}
		Write-Host "$ElementoErro Atualize o sistema operacional para o Windows 10 Build $SoftwareRequisitoSistemaOperacional ou superior para prosseguir" -ForegroundColor "$CorErro"
		Read-Host -Prompt "$ElementoInteracao $SubRotinaEncerrar"
		Encerrar
	}
}

function VerificarPowerShell {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarPowerShell"
	}
	Write-Host "$ElementoProgresso Verificando PowerShell"
	$PowerShellMajor = ($PSVersionTable).PSVersion.Major
	$PowerShellMinor = ($PSVersionTable).PSVersion.Minor
	$PowerShellPatch = ($PSVersionTable).PSVersion.Patch
	$script:PowerShellVersao = "$PowerShellMajor.$PowerShellMinor.$PowerShellPatch"
	if ($PowerShellVersao -lt $SoftwareRequisitoPowerShell) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarPowerShell; PowerShell incompatível"
		}
		Write-Host "$ElementoErro Atualize o PowerShell para a versão $SoftwareRequisitoPowerShell ou superior para prosseguir" -ForegroundColor "$CorErro"
		Read-Host -Prompt "$ElementoInteracao $SubRotinaEncerrar"
		Encerrar
	}
}

function VerificarSoftwares {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSoftwares"
	}
	Write-Host "$ElementoProgresso Verificando softwares"
	$7ZipLocal = (Get-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\7-Zip").Path
	if ((Test-Path "$7ZipLocal\7z.exe") -eq $True) {
		$script:7Zip = "$7ZipLocal\7z.exe"
		$script:7ZipStatus = 1
	} else {
		$script:7ZipStatus = 0
	}
	if ($7ZipStatus -eq 1) {
		$7ZipVersao = (Get-Content -Path "$7ZipLocal\Readme.txt" -TotalCount 1)
		if ($7ZipVersao -Match "15.12") {
			$script:7ZipVersao = "15.12"
		} elseif ($7ZipVersao -Match "15.14") {
			$script:7ZipVersao = "15.14"
		} elseif ($7ZipVersao -Match "16.02") {
			$script:7ZipVersao = "16.02"
		} elseif ($7ZipVersao -Match "16.03") {
			$script:7ZipVersao = "16.03"
		} elseif ($7ZipVersao -Match "16.04") {
			$script:7ZipVersao = "16.04"
		} elseif ($7ZipVersao -Match "18.01") {
			$script:7ZipVersao = "18.01"
		} elseif ($7ZipVersao -Match "18.05") {
			$script:7ZipVersao = "18.05"
		} elseif ($7ZipVersao -Match "18.06") {
			$script:7ZipVersao = "18.06"
		} elseif ($7ZipVersao -Match "19.00") {
			$script:7ZipVersao = "19.00"
		} elseif ($7ZipVersao -Match "21.06") {
			$script:7ZipVersao = "21.06"
		} elseif ($7ZipVersao -Match "21.07") {
			$script:7ZipVersao = "21.07"
		} else {
			$script:7ZipVersao = "00.00"
		}
	}
	if (($script:7ZipStatus -eq 0) -or ($script:7ZipVersao -lt $script:SoftwareRequisito7Zip)) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSoftwares; 7Zip incompatível"
		}
		Write-Host "$ElementoErro Instale o 7Zip $SoftwareRequisito7Zip para prosseguir" -ForegroundColor "$CorErro"
		Read-Host -Prompt "$ElementoInteracao $SubRotinaEncerrar"
		Encerrar
	}
}

function VerificarDiretorios {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarDiretorios"
	}
	Write-Host "$ElementoProgresso Verificando diretórios"
	if (((Test-Path "$DiretorioUsuario\Documents\EVE") -eq $True) -and ((Test-Path "$DiretorioUsuario\AppData\Local\CCP") -eq $True)) {
		$script:CriarBackupOrigemStatus = 1
		$script:RestaurarBackupDestinoStatus = 1
	} else {
		$script:CriarBackupOrigemStatus = 0
		$script:RestaurarBackupDestinoStatus = 0
	}
}

function VerificarModulos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarModulos"
	}
	Write-Host "$ElementoProgresso Verificando módulos"
	if ($SoftwareConfiguracoes.VerificarModulosStatus -eq 0) {
		Write-Host "$ElementoProgresso Instalando módulo BitsTransfer"
		Import-Module BitsTransfer -Force
		$script:SoftwareConfiguracoes.VerificarModulosStatus = 1
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
}

function ExcluirArquivosTemporarios {
	Write-Host "$ElementoProgresso Excluindo arquivos temporários"
	Remove-Item "$DiretorioTemporario\*" -Recurse -Force | Out-Null
}

function VerificarMetadados {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados"
	}
	Write-Host "$ElementoProgresso Verificando metadados"
	Start-BitsTransfer -Source "https://github.com/2uj1m28ohz/$SoftwareNome/raw/main/$ArquivoMetadados" -Destination "$DiretorioTemporario\$ArquivoMetadados" -TransferType "Download" -Priority "High" -NotifyFlags "4" -DisplayName "$ElementoAlerta" -Description "Aguarde..."
	$Terminal.ForegroundColor = "$CorCamada2"
	if ((Test-Path "$DiretorioTemporario\$ArquivoMetadados") -eq $True) {
		$script:SoftwareMetadados = (Get-Content -Path "$DiretorioTemporario\$ArquivoMetadados" | ConvertFrom-Json)
		$script:SoftwareDesenvolvimento = $SoftwareMetadados.Desenvolvimento
		$script:SoftwareSuporte = ($SoftwareMetadados.Versoes | Where-Object -Property ID -eq "$SoftwareVersao").Suporte
		$script:SoftwareAtualizacao = $SoftwareMetadados.Atualizacao
		if ($SoftwareDesenvolvimento -eq 1) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Desenvolvimento ativo"
			}
		} elseif ($SoftwareDesenvolvimento -eq 0) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Desenvolvimento inativo"
			}
			$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Desenvolvimento desconhecido"
			}
			$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
		}
		if ($SoftwareSuporte -eq 1) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Suporte ativo"
			}
		} elseif ($SoftwareSuporte -eq 0) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Suporte inativo"
			}
			$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Suporte desconhecido"
			}
			$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
		}
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; $ErroArquivo"
		}
		$script:SoftwareDesenvolvimento = $Null
		$script:SoftwareSuporte = $Null
		$script:SoftwareAtualizacao = $Null
	}
}

function VerificarInstalacao {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao"
	}
	Write-Host "$ElementoProgresso Verificando instalação"
	if (($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 0) -and ($SoftwareSuporte -eq 1)) {
		Write-Host "$ElementoProgresso Baixando"
		Start-BitsTransfer -Source "https://github.com/2uj1m28ohz/$SoftwareNome/releases/download/$SoftwareVersao/$SoftwareNome-$SoftwareVersao.7z" -Destination "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z" -TransferType "Download" -Priority "High" -NotifyFlags "4" -DisplayName "$ElementoAlerta" -Description "Aguarde..."
		$Terminal.ForegroundColor = "$CorCamada2"
		if ((Test-Path "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z") -eq $True) {
			Write-Host "$ElementoProgresso Descomprimindo"
			& "$7Zip" x "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z" | Out-Null
			Write-Host ""
			Write-Host "$ElementoProgresso Instalando"
			Remove-Item "$DiretorioSoftware\*.ps1" -Recurse -Force | Out-Null
			Remove-Item "$DiretorioSoftware\*.html" -Recurse -Force | Out-Null
			Copy-Item "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao\*" -Destination "$DiretorioSoftware" -Force
			Get-Item "$DiretorioSoftware\$SoftwareNome.ps1" | Unblock-File
			Set-Content -Path "$DiretorioUsuario\Desktop\$SoftwareNome.txt" -Value "Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1"
			Write-Host "$ElementoProgresso Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1" -ForegroundColor "$CorDestaque"
			Write-Host "$ElementoSucesso Instalado" -ForegroundColor "$CorSucesso"
			Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
			Read-Host -Prompt "$ElementoInteracao $SubRotinaEncerrar"
			$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = 1
			$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
			Encerrar
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; $ErroArquivo"
			}
		}
	} elseif ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 1) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; Já instalado"
		}
	} elseif ($SoftwareSuporte -eq 0) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; Suporte inativo"
		}
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; $ErroDesconhecido"
		}
	}
}

function VerificarAtualizacoes {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes"
	}
	if ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 1) {
		Write-Host "$ElementoProgresso Verificando atualizações"
		if ($SoftwareAtualizacao -gt $SoftwareVersao) {
			Write-Host "$ElementoProgresso Baixando atualização"
			Start-BitsTransfer -Source "https://github.com/2uj1m28ohz/$SoftwareNome/releases/download/$SoftwareAtualizacao/$SoftwareNome-$SoftwareAtualizacao.7z" -Destination "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z" -TransferType "Download" -Priority "High" -NotifyFlags "4" -DisplayName "$ElementoAlerta" -Description "Aguarde..."
			$Terminal.ForegroundColor = "$CorCamada2"
			if ((Test-Path "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z") -eq $True) {
				Write-Host "$ElementoProgresso Descomprimindo atualização"
				& "$7Zip" x "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z" | Out-Null
				Write-Host ""
				Write-Host "$ElementoProgresso Instalando atualização"
				Remove-Item "$DiretorioSoftware\*.ps1" -Recurse -Force | Out-Null
				Remove-Item "$DiretorioSoftware\*.html" -Recurse -Force | Out-Null
				Copy-Item "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao\*" -Destination "$DiretorioSoftware" -Force
				Write-Host "$ElementoSucesso Atualização concluída" -ForegroundColor "$CorSucesso"
				Set-Content -Path "$DiretorioUsuario\Desktop\$SoftwareNome.txt" -Value "Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1"
				Write-Host "$ElementoProgresso Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1" -ForegroundColor "$CorDestaque"
				Read-Host -Prompt "$ElementoInteracao $SubRotinaEncerrar"
				Encerrar
			} else {
				if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
					VerificarTempo
					Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; $ErroArquivo"
				}
			}
		} elseif ($SoftwareAtualizacao -eq $SoftwareVersao) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; Atualizado"
			}
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; $ErroDesconhecido"
			}
		}
	} elseif ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 0) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; Não instalado"
		}
	}
}

# ---------------------------------------------------------------------------------------------------| PRINCIPAL

function CriarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout CriarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $CriarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $CriarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "$ElementoProgresso $SubRotinaInicio"
	VerificarDiretorios
	if ($CriarBackupOrigemStatus -eq 1) {
		Write-Host "$ElementoProgresso Criando diretório"
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\EVE Online" | Out-Null
		Write-Host "$ElementoProgresso Exportando dados"
		if ((Test-Path "$DiretorioUsuario\Documents\EVE") -eq $True) {
			Copy-Item "$DiretorioUsuario\Documents\EVE" -Destination "$DiretorioTemporario\EVE Online" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Exportando configurações"
		$DiretorioEveOnlineTranquility = (Get-ChildItem -Path "$DiretorioUsuario\AppData\Local\CCP\EVE" | Where-Object {$PSItem.Name -Match "tq_tranquility"}).Name
		if ((Test-Path "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineTranquility") -eq $True) {
			Copy-Item "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineTranquility" -Destination "$DiretorioTemporario\EVE Online" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Comprimindo arquivos"
		& "$7Zip" a -t7z -ms -mmt -mx9 -mmemuse=p50 "$DiretorioTemporario\EVE Online.7z" "$DiretorioTemporario\EVE Online"
		Write-Host ""
		Write-Host "$ElementoProgresso Testando arquivos"
		& "$7Zip" t -r "$DiretorioTemporario\EVE Online.7z"
		Write-Host ""
		Write-Host "$ElementoProgresso Transferindo backup"
		Move-Item "$DiretorioTemporario\EVE Online.7z" -Destination "$DiretorioUsuario\Downloads" -Force
		Write-Host "$ElementoProgresso Backup disponível em $DiretorioUsuario\Downloads\EVE Online.7z"
		ExcluirArquivosTemporarios
		Write-Host "$ElementoSucesso $SubRotinaFim" -ForegroundColor "$CorSucesso"
		$script:CriarBackupNavBit = "$ElementoNavBitOn"
	}
	if ($CriarBackupOrigemStatus -eq 0) {
		if ($CriarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			if ($CriarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout CriarBackup; $ErroDiretorioOrigem"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
}

function RestaurarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout RestaurarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $RestaurarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $RestaurarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "$ElementoProgresso $SubRotinaInicio"
	VerificarDiretorios
	if ($RestaurarBackupDestinoStatus -eq 1) {
		Write-Host "$ElementoProgresso Descomprimindo backup"
		& "$7Zip" x "$DiretorioDownloads\EVE Online.7z" -o"$DiretorioTemporario"
		Write-Host ""
		Write-Host "$ElementoProgresso Restaurando dados"
		if ((Test-Path "$DiretorioTemporario\EVE Online\EVE") -eq $True) {
			Remove-Item "$DiretorioUsuario\Documents\EVE\*" -Recurse -Force | Out-Null
			Start-Sleep 0.5
			Copy-Item "$DiretorioTemporario\EVE Online\EVE\*" -Destination "$DiretorioUsuario\Documents\EVE" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Restaurando configurações"
		$DiretorioEveOnlineTranquilityBackup = (Get-ChildItem -Path "$DiretorioTemporario\EVE Online" | Where-Object {$PSItem.Name -Match "tq_tranquility"}).Name
		if ((Test-Path "$DiretorioTemporario\EVE Online\$DiretorioEveOnlineTranquilityBackup") -eq $True) {
			$DiretorioEveOnlineTranquilityInstalacao = (Get-ChildItem -Path "$DiretorioUsuario\AppData\Local\CCP\EVE" | Where-Object {$PSItem.Name -Match "tq_tranquility"}).Name
			if ((Test-Path "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineTranquilityInstalacao") -eq $True) {
				Remove-Item "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineTranquilityInstalacao" -Recurse -Force | Out-Null
				Start-Sleep 0.5
				Copy-Item "$DiretorioTemporario\EVE Online\$DiretorioEveOnlineTranquilityBackup" -Destination "$DiretorioUsuario\AppData\Local\CCP\EVE" -Recurse -Force
			} else {
				Copy-Item "$DiretorioTemporario\EVE Online\$DiretorioEveOnlineTranquilityBackup" -Destination "$DiretorioUsuario\AppData\Local\CCP\EVE" -Recurse -Force
			}
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		ExcluirArquivosTemporarios
		Write-Host "$ElementoSucesso $SubRotinaFim" -ForegroundColor "$CorSucesso"
		$script:RestaurarBackupNavBit = "$ElementoNavBitOn"
	}
	if ($RestaurarBackupOrigemStatus -eq 1) {
		if ($RestaurarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			VerificarTempo
			if ($RestaurarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout RestaurarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
}

function Configuracoes {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $ConfiguracoesTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $ConfiguracoesDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$Configuracoes_HabilitarEventosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Habilitar Eventos"
		Write-Host "$Configuracoes_DesabilitarEventosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Desabilitar Eventos"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "$SubRotinaRetornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $SubRotinaSelecao"
		switch ($Comando) {
			1 {Configuracoes_HabilitarEventos}
			2 {Configuracoes_DesabilitarEventos}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Configuracoes_HabilitarEventos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes_HabilitarEventos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Configuracoes_HabilitarEventosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Configuracoes_HabilitarEventosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ((Test-Path "$DiretorioSoftware\$ArquivoConfiguracoes") -eq $True) {
		$script:SoftwareConfiguracoes.RegistrarEventosStatus = 1
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
		$script:Configuracoes_HabilitarEventosNavBit = "$ElementoNavBitOn"
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes_HabilitarEventos; $ErroArquivo"
		}
		Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoSucesso Eventos habilitados" -ForegroundColor "$CorSucesso"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
}

function Configuracoes_DesabilitarEventos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes_DesabilitarEventos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Configuracoes_DesabilitarEventosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Configuracoes_DesabilitarEventosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ((Test-Path "$DiretorioSoftware\$ArquivoConfiguracoes") -eq $True) {
		$script:SoftwareConfiguracoes.RegistrarEventosStatus = 0
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
		$script:Configuracoes_DesabilitarEventosNavBit = "$ElementoNavBitOn"
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes_DesabilitarEventos; $ErroArquivo"
		}
		Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoSucesso Eventos desabilitados" -ForegroundColor "$CorSucesso"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
}

function Suporte {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $SuporteTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $SuporteDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$Suporte_VisualizarEventosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Visualizar Eventos"
		Write-Host "$Suporte_InstalarSoftwareNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Instalar $SoftwareNome"
		Write-Host "$Suporte_DesinstalarSoftwareNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Atualizar $SoftwareNome"
		Write-Host "$Suporte_DesinstalarSoftwareNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 4 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Desinstalar $SoftwareNome"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "$SubRotinaRetornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $SubRotinaSelecao"
		switch ($Comando) {
			1 {Suporte_VisualizarEventos}
			2 {Suporte_InstalarSoftware}
			3 {Suporte_AtualizarSoftware}
			4 {Suporte_DesinstalarSoftware}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Suporte_VisualizarEventos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_VisualizarEventos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Suporte_VisualizarEventosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Suporte_VisualizarEventosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		if ((Test-Path "$DiretorioEventos\$ArquivoEventos") -eq $True) {
			Write-Host "$ElementoProgresso Visualizando o arquivo $ArquivoEventos"
			Write-Host ""
			Get-Content -Path "$DiretorioEventos\$ArquivoEventos"
			Write-Host ""
			$script:Suporte_VisualizarEventosNavBit = "$ElementoNavBitOn"
		} else {
			Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
		}
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_VisualizarEventos; $ErroEventosDesabilitado"
		}
		Write-Host "$ElementoErro $ErroEventosDesabilitado" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
}

function Suporte_InstalarSoftware {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_InstalarSoftware"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Suporte_InstalarSoftwareTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Suporte_InstalarSoftwareDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 1) {
		Write-Host "$ElementoErro $SoftwareNome $SoftwareVersao já está instalado" -ForegroundColor "$CorErro"
	} elseif ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 0) {
		Write-Host "$ElementoProgresso Baixando"
		Start-BitsTransfer -Source "https://github.com/2uj1m28ohz/$SoftwareNome/releases/download/$SoftwareVersao/$SoftwareNome-$SoftwareVersao.7z" -Destination "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z" -TransferType "Download" -Priority "High" -NotifyFlags "4" -DisplayName "$ElementoAlerta" -Description "Aguarde..."
		$Terminal.ForegroundColor = "$CorCamada2"
		if ((Test-Path "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z") -eq $True) {
			Write-Host "$ElementoProgresso Descomprimindo"
			& "$7Zip" x "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z" | Out-Null
			Write-Host ""
			Write-Host "$ElementoProgresso Instalando"
			$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = 1
			$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
			Remove-Item "$DiretorioSoftware\*.ps1" -Recurse -Force | Out-Null
			Remove-Item "$DiretorioSoftware\*.html" -Recurse -Force | Out-Null
			Copy-Item "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao\*" -Destination "$DiretorioSoftware" -Force
			Set-Content -Path "$DiretorioUsuario\Desktop\$SoftwareNome.txt" -Value "Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1"
			Write-Host "$ElementoProgresso Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1" -ForegroundColor "$CorDestaque"
			Write-Host "$ElementoSucesso Instalado" -ForegroundColor "$CorSucesso"
			Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
			Read-Host -Prompt "$ElementoInteracao $SubRotinaEncerrar"
			$script:Suporte_InstalarSoftwareNavBit = "$ElementoNavBitOn"
			Encerrar
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_InstalarSoftware; $ErroArquivo"
			}
			Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
		}
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_InstalarSoftware; $ErroDesconhecido"
			}
		Write-Host "$ElementoErro $ErroDesconhecido" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
}

function Suporte_AtualizarSoftware {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_AtualizarSoftware"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Suporte_AtualizarSoftwareTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Suporte_AtualizarSoftwareDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 1) {
		Write-Host "$ElementoProgresso Verificando atualizações"
		if ($SoftwareAtualizacao -gt $SoftwareVersao) {
			Write-Host "$ElementoProgresso Baixando atualização"
			Start-BitsTransfer -Source "https://github.com/2uj1m28ohz/$SoftwareNome/releases/download/$SoftwareAtualizacao/$SoftwareNome-$SoftwareAtualizacao.7z" -Destination "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z" -TransferType "Download" -Priority "High" -NotifyFlags "4" -DisplayName "$ElementoAlerta" -Description "Aguarde..."
			$Terminal.ForegroundColor = "$CorCamada2"
			if ((Test-Path "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z") -eq $True) {
				Write-Host "$ElementoProgresso Descomprimindo atualização"
				& "$7Zip" x "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z" | Out-Null
				Write-Host ""
				Write-Host "$ElementoProgresso Instalando atualização"
				Remove-Item "$DiretorioSoftware\*.ps1" -Recurse -Force | Out-Null
				Remove-Item "$DiretorioSoftware\*.html" -Recurse -Force | Out-Null
				Copy-Item "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao\*" -Destination "$DiretorioSoftware" -Force
				Set-Content -Path "$DiretorioUsuario\Desktop\$SoftwareNome.txt" -Value "Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1"
				Write-Host "$ElementoProgresso Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1" -ForegroundColor "$CorDestaque"
				Write-Host "$ElementoSucesso Atualização instalada" -ForegroundColor "$CorSucesso"
				Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
				Read-Host -Prompt "$ElementoInteracao $SubRotinaEncerrar"
				$script:Suporte_AtualizarSoftwareNavBit = "$ElementoNavBitOn"
				Encerrar
			} else {
				if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
					VerificarTempo
					Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_AtualizarSoftware; $ErroArquivo"
				}
				Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
			}
		} elseif ($SoftwareAtualizacao -eq $SoftwareVersao) {
			Write-Host "$ElementoSucesso $SoftwareNome está atualizado" -ForegroundColor "$CorSucesso"
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_AtualizarSoftware; $ErroDesconhecido"
			}
			Write-Host "$ElementoErro $ErroDesconhecido" -ForegroundColor "$CorErro"
		}
	} else {
		Write-Host "$ElementoErro Instale $SoftwareNome para prosseguir" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
}

function Suporte_DesinstalarSoftware {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_DesinstalarSoftware"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Suporte_DesinstalarSoftwareTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Suporte_DesinstalarSoftwareDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 1) {
		Write-Host "$ElementoProgresso Desinstalando"
		Set-Location $DiretorioUsuario
		if ((Test-Path "$DiretorioUsuario\Desktop\$SoftwareNome.txt") -eq $True) {
			Remove-Item "$DiretorioUsuario\Desktop\$SoftwareNome.txt" -Force | Out-Null
		}
		if ((Test-Path "$DiretorioInstalacao") -eq $True) {
			Remove-Item "$DiretorioInstalacao" -Recurse -Force | Out-Null
			Write-Host "$ElementoSucesso Desinstalado" -ForegroundColor "$CorSucesso"
			Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
			Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
			$script:Suporte_DesinstalarSoftwareNavBit = "$ElementoNavBitOn"
			Encerrar
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				VerificarTempo
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_DesinstalarSoftware; $ErroDiretorio"
			}
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
	} else {
		Write-Host "$ElementoErro $SoftwareNome não está instalado" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
}

function Ajuda {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Ajuda"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $AjudaTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $AjudaDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		if ($SoftwareProblemas -gt 0) {
			if ($SoftwareDesenvolvimento -eq 0) {
				Write-Host "$ElementoAlerta $AlertaDesenvolvimentoEncerrado" -ForegroundColor "$CorAlerta"
			}
			if ($SoftwareDesenvolvimento -eq $Null) {
				Write-Host "$ElementoAlerta $AlertaDesenvolvimentoDesconhecido" -ForegroundColor "$CorAlerta"
			}
			if ($SoftwareSuporte -eq 0) {
				Write-Host "$ElementoAlerta $AlertaSuporteEncerrado" -ForegroundColor "$CorAlerta"
			}
			if ($SoftwareSuporte -eq $Null) {
				Write-Host "$ElementoAlerta $AlertaSuporteDesconhecido" -ForegroundColor "$CorAlerta"
			}
		}
		Write-Host ""
		Write-Host "$Ajuda_InterfaceNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Interface"
		Write-Host "$Ajuda_RecursosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Recursos"
		Write-Host "$Ajuda_PoliticaSuporteNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Política de Suporte"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "$SubRotinaRetornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $SubRotinaSelecao"
		switch ($Comando) {
			1 {Ajuda_Interface}
			2 {Ajuda_Recursos}
			3 {Ajuda_PoliticaSuporte}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Ajuda_Interface {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Ajuda_Interface"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Ajuda_InterfaceTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Ajuda_InterfaceDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "  TAGS" -ForegroundColor "$CorSecao"
	Write-Host "  São uma forma simples de compreender o progresso da execução de $SoftwareNome, identificando"
	Write-Host "  principalmente mensagens de progresso, interação, alerta e erro. Veja todas abaixo:"
	Write-Host ""
	Write-Host "$ElementoTitulo			Título"
	Write-Host "$ElementoDescricao			Descrição"
	Write-Host "$ElementoProgresso			Progresso"
	Write-Host "$ElementoInteracao			Interação"
	Write-Host "$ElementoAlerta			Alerta"
	Write-Host "$ElementoSucesso			Sucesso"
	Write-Host "$ElementoErro			Erro"
	Write-Host "$ElementoAtivo			Ativo"
	Write-Host "$ElementoInativo			Inativo"
	Write-Host ""
	Write-Host "  NAVBIT" -ForegroundColor "$CorSecao"
	Write-Host "  Representado pelo indicador " -NoNewline; Write-Host "$ElementoNavBitOn" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host ", o NavBit é exibido ao lado de opções em menus e submenus logo após"
	Write-Host "  serem ativadas pelo usuário como uma forma de identificar facilmente funcionalidades já executadas e"
	Write-Host "  telas visualizadas."
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
	$script:Ajuda_InterfaceNavBit = "$ElementoNavBitOn"
}

function Ajuda_Recursos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Ajuda_Recursos"
	}
	$CriarBackupStatus = "$ElementoAtivo"
	$RestaurarBackupStatus = "$ElementoAtivo"
	$ConfiguracoesStatus = "$ElementoAtivo"
	$SuporteStatus = "$ElementoAtivo"
	$AjudaStatus = "$ElementoAtivo"
	$SobreStatus = "$ElementoAtivo"
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Ajuda_RecursosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Ajuda_RecursosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "  STATUS		NOME						DESCRIÇÃO" -ForegroundColor "$CorSecao"
	Write-Host "$CriarBackupStatus			Criar Backup					$CriarBackupDescricao"
	Write-Host "$RestaurarBackupStatus			Restaurar Backup				$RestaurarBackupDescricao"
	Write-Host "$ConfiguracoesStatus			Configurações					$ConfiguracoesDescricao"
	Write-Host "$SuporteStatus			Suporte						$SuporteDescricao"
	Write-Host "$AjudaStatus			Ajuda						$AjudaDescricao"
	Write-Host "$SobreStatus			Sobre						$SobreDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
	$script:Ajuda_RecursosNavBit = "$ElementoNavBitOn"
}

function Ajuda_PoliticaSuporte {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Ajuda_Interface"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Ajuda_PoliticaSuporteTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Ajuda_PoliticaSuporteDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "  1. O QUE SIGNIFICA FIM DE SUPORTE?" -ForegroundColor "$CorSecao"
	Write-Host "  Uma versão sem suporte não está sujeita à garantia de atualização de software. Estão incluídas"
	Write-Host "  atualizações de recursos, correções e otimizações que podem adicionar novas funcionalidades,"
	Write-Host "  corrigir problemas, e otimizar o desempenho e a confiabilidade geral do software."
	Write-Host ""
	Write-Host "  2. QUANDO TERMINA O SUPORTE À MINHA VERSÃO?" -ForegroundColor "$CorSecao"
	Write-Host "  Apenas as três versões recentes lançadas são cobertas pelo suporte e estão sujeitas à garantia"
	Write-Host "  de atualização de software. Se a versão instalada no seu dispositivo for compatível, instale as"
	Write-Host "  atualizações disponíveis. Por exemplo, se você estiver executando a versão 22.100.1 e a versão"
	Write-Host "  22.100.2 foi lançada, será necessário atualizar para a versão 22.100.2 para se qualificar para"
	Write-Host "  o suporte."
	Write-Host ""
	Write-Host "  3. EU AINDA PODEREI USAR O SOFTWARE APÓS O FIM DO SUPORTE?" -ForegroundColor "$CorSecao"
	Write-Host "  Sim. Se você usar uma versão sem suporte, ela ainda funcionará, mas se tornará suscetível a erros"
	Write-Host "  e incompatibilidades de software."
	Write-Host ""
	Write-Host "  4. COMO FAÇO PARA ATUALIZAR?" -ForegroundColor "$CorSecao"
	Write-Host "  Para receber atualizações basta estar conectado à internet. Ao iniciar o software buscará e"
	Write-Host "  instalará atualizações automaticamente. Se o suporte à versão instalada no seu dispositivo for"
	Write-Host "  encerrado, será necessário baixar e instalar a atualização manualmente."
	Write-Host ""
	Write-Host "  5. Como entrar em contato com o Suporte?" -ForegroundColor "$CorSecao"
	Write-Host "  Entre em contato via mensagem privada no Twitter https://twitter.com/hd53r7us3e. Sua resposta será"
	Write-Host "  direcionada o mais breve possível."
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
	$script:Ajuda_PoliticaSuporteNavBit = "$ElementoNavBitOn"
}

function Sobre {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Sobre"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $SobreTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $SobreDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "  SOFTWARE" -ForegroundColor "$CorSecao"
	Write-Host "  Versão do Software			$SoftwareVersao"
	Write-Host "  Versão do Algoritmo			$SoftwareAlgoritmoVersao"
	Write-Host "  Versão da Interface			$SoftwareInterfaceVersao"
	Write-Host "  Interface				Cosmos"
	Write-Host "  Idioma				PT-BR"
	Write-Host "  GitHub				https://www.github.com/2uj1m28ohz"
	Write-Host ""
	Write-Host "  LICENÇA" -ForegroundColor "$CorSecao"
	Write-Host "  Tipo					GNU General Public License v3.0"
	Write-Host "  Link					https://www.gnu.org/licenses/gpl-3.0.html"
	Write-Host "  Descrição				$SoftwareNome é um software desenvolvido para executar o backup de EVE Online."
	Write-Host "  Copyright				Copyright (C) 2022 David Camargo"
	Write-Host ""
	Write-Host "					Este programa é um software livre: você pode redistribuí-lo e/ou modificá-lo"
	Write-Host "					sob os termos da GNU General Public License conforme publicada pela"
	Write-Host "					Free Software Foundation, seja a versão 3 da Licença, ou"
	Write-Host "					(a seu critério) qualquer versão posterior."
	Write-Host ""
	Write-Host "					Este programa é distribuído na esperança de que seja útil,"
	Write-Host "					mas SEM QUALQUER GARANTIA; sem mesmo a garantia implícita de"
	Write-Host "					COMERCIALIZAÇÃO ou ADEQUAÇÃO A UM DETERMINADO FIM. Veja a"
	Write-Host "					GNU General Public License para mais detalhes."
	Write-Host ""
	Write-Host "					Você deve ter recebido uma cópia da GNU General Public License"
	Write-Host "					junto com este programa. Caso contrário, consulte https://www.gnu.org/licenses."
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $SubRotinaSair"
	$script:SobreNavBit = "$ElementoNavBitOn"
}

# ---------------------------------------------------------------------------------------------------| ERRO

function Erro {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Erro"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $ErroTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoAlerta $AlertaComandoInvalido"-ForegroundColor "$CorAlerta"
	Write-Host "$ElementoProgresso Retornando"
	Start-Sleep -Seconds 2
}

# ---------------------------------------------------------------------------------------------------| ENCERRAR

function Encerrar {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Encerrar"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $EncerrarTitulo" -BackgroundColor "$CorTitulo"
	GerenciarItensLegados
	ExcluirEventos
	ExcluirArquivosTemporarios
	Set-Location $DiretorioUsuario
	Write-Host "$ElementoSucesso $SubRotinaFim" -ForegroundColor "$CorSucesso"
	Start-Sleep -Seconds 0.5
	Clear-Host
	$Terminal.WindowTitle = "$TerminalTitulo"
	exit
}

function GerenciarItensLegados {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarItensLegados"
	}
	if ($SoftwareConfiguracoes.GerenciarItensLegadosVersao -ne $SoftwareVersao) {
		Write-Host "$ElementoProgresso Gerenciando itens legados"
		if ((Test-Path "$DiretorioUsuario\$SoftwareNome") -eq $True) {
			Remove-Item "$DiretorioUsuario\$SoftwareNome" -Recurse -Force | Out-Null
		}
		$script:SoftwareConfiguracoes.GerenciarItensLegadosVersao = $SoftwareVersao
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
}

function ExcluirEventos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExcluirEventos"
	}
	Write-Host "$ElementoProgresso Excluindo eventos"
	Get-ChildItem –Path "$DiretorioEventos" -Recurse -Force | Where-Object {($PSItem.LastWriteTime -lt (Get-Date).AddDays(-90))} | Remove-Item -Recurse -Force
}

# ---------------------------------------------------------------------------------------------------| MENU

CarregarNucleo
CarregarInterface
CriarEstruturaDiretorios
CarregarConfiguracoes
VerificarSistemaOperacional
VerificarPowerShell
VerificarSoftwares
VerificarModulos
ExcluirArquivosTemporarios
VerificarMetadados
VerificarInstalacao
VerificarAtualizacoes

do {if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		VerificarTempo
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Menu"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $MenuTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $MenuDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($SoftwareProblemas -gt 0) {
		Write-Host "$ElementoAlerta $SoftwareProblemas $AlertaProblemasEncontrados." -ForegroundColor "$CorAlerta"
	}
	Write-Host ""
	Write-Host "$CriarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Criar Backup"
	Write-Host "$RestaurarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Restaurar Backup"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " 3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Configurações"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " 4 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Suporte"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " 5 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Ajuda"
	Write-Host "$SobreNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 6 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Sobre"
	Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Encerrar"
	Write-Host ""
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	$Comando = Read-Host -Prompt "$ElementoInteracao $SubRotinaSelecao"
	switch ($Comando) {
		1 {CriarBackup}
		2 {RestaurarBackup}
		3 {Configuracoes}
		4 {Suporte}
		5 {Ajuda}
		6 {Sobre}
		X {Encerrar}
		default {Erro}
	}
} while ($Comando -ne "X")

# ---------------------------------------------------------------------------------------------------| FIM