$location = Get-Location
# Set child env
Set-PsEnv
$HashArguments = @{
  "schema" = "$location/$env:LOCAL_SCHEMA_FILE"
  "key" = $env:KEY
  "graph" = $env:GRAPH
  "variant" = $env:VARIANT
  "service_name" = $env:SERVICE_NAME
  "service_url" = $env:SERVICE_URL
}
# Write-Host $HashArguments["schema"]
# Write-Host $HashArguments["service_name"]
# Write-Host $HashArguments["service_url"]
Set-Location -Path $PSScriptRoot/..
# Set parent env
Set-PsEnv
. $PSScriptRoot/Apollo-Service-Push.ps1
# Write-Host $HashArguments["schema"] $env:KEY $env:GRAPH $env:VARIANT $HashArguments["service_name"] $HashArguments["service_url"]
Apollo-Service-Push $HashArguments["schema"] $env:KEY $env:GRAPH $env:VARIANT $HashArguments["service_name"] $HashArguments["service_url"]