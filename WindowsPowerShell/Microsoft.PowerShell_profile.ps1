Set-Alias -Name vim -Value "C:\Program Files\Neovim\bin\nvim.exe"

function Prompt {
    Write-Host "$ENV:UserName@$ENV:ComputerName" -NoNewLine -ForegroundColor Green
	Write-Host ":" -NoNewLine
	Write-Host "$(Get-Location)" -NoNewLine -ForegroundColor Blue
	"$ "
}
