oh-my-posh init pwsh --config "C:\Users\Administrator\scoop\apps\oh-my-posh\12.37.0\themes\hul10.omp.json" | Invoke-Expression

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
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
