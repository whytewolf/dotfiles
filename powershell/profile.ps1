#setup ctrl+d as an exit like i am used to in linux
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit


#setup oh-my-posh
if (Get-Command "oh-my-posh.exe" -ErrorAction SilentlyContinue)
{
$env:POSH_GIT_ENABLED = $true
oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/jandedobbeleer.omp.json | Invoke-Expression
}