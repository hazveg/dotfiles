Set-Alias -Name vim -Value "C:\Program Files\Neovim\bin\nvim.exe"

function Prompt {
    Write-Host "$ENV:UserName@$ENV:ComputerName" -NoNewLine -ForegroundColor Green
	Write-Host ":" -NoNewLine
	$location = Get-location
	$location = if ("$(Get-Location)" -eq "$Env:USERPROFILE") { "~" } else { $(Get-Location) }
	Write-Host "$location" -NoNewLine -ForegroundColor Blue
	"$ "
}
