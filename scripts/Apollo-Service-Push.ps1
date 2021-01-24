# apollo service:push \
#   --localSchemaFile=./schema.gql \ # (or --endpoint)
#   --key=service:docs-example-graph:NYKgCqwfCyYPIm84WVXCdw
#   --graph=docs-example-graph \
#   --variant=local-development \
#   --serviceName=products \
#   --serviceURL=http://products-graphql.svc.cluster.local:4001/

Function Apollo-Service-Push{
   [CmdletBinding()]
   param(
      [String]$localSchemaFile="./schema.gql",
      [String]$key,
      [String]$graph,
      [String]$variant="local-development",
      [String]$serviceName,
      [String]$serviceURL
   )
   Write-Host '📤 Pushing ' -NoNewLine
   $boldify = "`e[1m"
   $deboldify = "`e[0m"
   $program_name = "Apollo service"
   Write-Host "$boldify$program_name$deboldify" -ForeGroundColor Blue -NoNewLine
   Write-Host ...❕
   Write-Host "localSchemaFile: $localSchemaFile; key: $key; graph: $graph; variant: $variant; serviceName: $serviceName; serviceURL: $serviceURL"
   apollo service:push --localSchemaFile=$localSchemaFile --key=$key --graph=$graph --variant=$variant --serviceName=$serviceName --serviceURL=$serviceURL
}