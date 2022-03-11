# Promp
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
#Set-PoshPrompt Paradox

# Load Propmt Config
$omp_config = Join-Path $PSScriptRoot ".\eroizzy.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Enable-PoshTransientPrompt

Set-PSReadLineOption -predictionSource History
Set-PSReadLineOption -predictionViewStyle ListView

Set-PSFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHisotry 'Ctrl+r'


#Alias
Set-Alias vim nvim
