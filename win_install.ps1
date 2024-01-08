$confirmation = Read-Host "Overwrite existing configuration files? (y/N)"

if(!($confirmation -eq "y" -or $confirmation -eq "Y")) {
    exit
}

if(!(Test-Path $Env:USERPROFILE\Documents\WindowsPowerShell)) {
	New-Item -ItemType Directory -Path $Env:USERPROFILE\Documents\WindowsPowerShell
}

$destination = "$Env:USERPROFILE\Documents\WindowsPowerShell"
$ps_profile = "$PSScriptRoot\windows\WindowsPowerShell"
New-Item -ItemType SymbolicLink -Path $destination -Value $ps_profile -Force

$nvim_config_destination = "$Env:LOCALAPPDATA\nvim"
$nvim_config = "$PSScriptRoot\windows\nvim"
New-Item -ItemType SymbolicLink -Path $nvim_config_destination -Value $nvim_config -Force

$gitconfig = "$PSScriptRoot\windows\.gitconfig"
New-Item -ItemType SymbolicLink -Path $Env:USERPROFILE -Value $gitconfig -Force

$terminal_settings = "$Env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
New-Item -ItemType SymbolicLink -Path $terminal_settings -Value "$PSScriptRoot\windows\settings.json" -Force

