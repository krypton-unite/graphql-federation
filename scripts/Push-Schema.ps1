$location = Get-Location
# Set child env
Set-PsEnv
Set-Location -Path $PSScriptRoot/..
# Set parent env
Set-PsEnv
. $PSScriptRoot/Apollo-Service-Push.ps1
Apollo-Service-Push $location/$env:LOCAL_SCHEMA_FILE $env:KEY $env:GRAPH $env:VARIANT $env:SERVICE_NAME $env:SERVICE_URL