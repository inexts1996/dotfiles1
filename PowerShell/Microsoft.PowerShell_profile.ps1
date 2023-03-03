# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\hul10.omp.json"
oh-my-posh init pwsh --config $omp_config | Invoke-Expression

Import-Module Terminal-Icons

# PSReadLine
$PSReadLineOptions = @{
	EditMode = "Emacs"
	BellStyle = "None"
	PredictionSource = "History"
}
#Set-PSReadLineOption -EditMode Emacs
#Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption @PSReadLineOptions 

#Fzf
Import-Module PSFzf 
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias -Name vi -Value nvim
Set-Alias -Name vim -Value nvim 
Set-Alias ll ls
