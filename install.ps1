Remove-Item "$Env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
Copy-Item "$Env:USERPROFILE\.dotfiles\windows_terminal\settings.json" -Destination "$Env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState" -Force

Remove-Item "$Env:USERPROFILE\.gitconfig"
Copy-Item "$Env:USERPROFILE\.dotfiles\gitconfig\.gitconfig" -Destination "$Env:USERPROFILE" -Force

Remove-Item "$Env:USERPROFILE\Documents\WindowsPowerShell" -Recurse
Copy-Item "$Env:USERPROFILE\.dotfiles\powershell\WindowsPowerShell" -Destination "$Env:USERPROFILE\Documents" -Recurse

Remove-Item "$Env:LOCALAPPDATA\nvim" -Recurse -Force
Copy-Item "$Env:USERPROFILE\.dotfiles\nvim\.config\nvim" -Destination "$Env:LOCALAPPDATA"
