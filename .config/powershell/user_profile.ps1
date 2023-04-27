# PowerShell profile for Windows Terminal
# Prompt
Import-Module posh-git
Import-Module -Name Terminal-Icons
$omp_config = Join-Path $PSScriptRoot ".\jesse.omp.json"
oh-my-posh init pwsh --config $omp_config | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# FuzzyFinder (FzF)
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias grep findstr
Set-Alias open start
