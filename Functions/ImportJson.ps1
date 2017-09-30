function Import-Json {
    <#
.Synopsis
Import the integration services catalog publish json file
.Description
Internal function used to import the json file that stores the integration services catalog properties and variables.
.Parameter jsonPath
File path of json file.
.Parameter ispacPath
File path of ispac file.
.Parameter localVariables
Switch to determine whether we need to validate that variables with the name of the variableName exists or not in current session.
.Example
$ssisJson = Import-Json -jsonPath "C:\Users\SQLTraining\Documents\iscPublish.json" -ispacPath "C:\Users\SQLTraining\Documents\iscPublish.ispac"
#>
    param
    (
        [Parameter(Position = 0, mandatory = $true)]
        [String] $jsonPath,
        [Parameter(Position = 1, mandatory = $true)]
        [String] $ispacPath,
        [Parameter(Position = 2, mandatory = $false)]
        [Switch] $localVariables
    )
    try {
        $json = Get-Content -Raw -Path $jsonPath -Encoding UTF8 | ConvertFrom-Json
        $jsonTested = Test-Json -jsonToTest $json
        if (!$localVariables)
        {
            Test-VariablesForPublishProfile -jsonPsCustomObject $jsonTested
        }
        Test-ProjectParamsMatch -jsonObject $jsonTested -ispacPath $ispacPath
        return $jsonTested
    }
    catch {
        throw $_.Exception
    }
}