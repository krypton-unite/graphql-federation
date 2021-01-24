if (Get-Module -ListAvailable -Name Set-PsEnv) {
    Write-Host "Module exists!"
} 
else {
    Write-Host "Set-PsEnv module does not exist, installing!"
    Install-Module -Name Set-PsEnv
}