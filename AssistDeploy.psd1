# Module manifest for module AssistDeploy
#
# Generated by: Richard Lee
#
# Generated on: 15/05/2017
#
 
@{
    # Script module or binary module file associated with this manifest.
    RootModule = 'AssistDeploy.psm1'
 
    # Modules to import as nested modules of the module specified in ModuleToProcess
    NestedModules = @()
 
    # Version number of this module.
    ModuleVersion = '1.0'
 
    # ID used to uniquely identify this module
    GUID = '00049e8b-6f5f-41be-8e36-31d500ee53b9'
 
    # Author of this module
    Author = 'Richie Lee'
 
    # Company or vendor of this module
    CompanyName = 'Sabin.IO'
 
    # Copyright statement for this module
    Copyright = 'Sabin.IO 2017'
 
    # Description of the functionality provided by this module
    Description = 'Module to deploy ISPAC to Integration Services Catalog.
               Supports creation of folders/environments/environment references
               variables and linking variables to dtsx packages in projects.
               Supports project deployment-based dtsx packages only'
 
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = ''
 
    # Name of the Windows PowerShell host required by this module
    PowerShellHostName = ''
 
    # Minimum version of the Windows PowerShell host required by this module
    PowerShellHostVersion = ''
 
    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = ''
 
    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion = ''
 
    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture = ''
 
    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @()
 
    # Script files (.psm1) that are run in the caller's environment prior to importing this module
    ScriptsToProcess = @()
 
    # Format files (.psm1xml) to be loaded when importing this module
    FormatsToProcess = @()
 
    # Functions to export from this module
    FunctionsToExport = @(
        ,'Connect-SsisdbSql'
        ,'Disconnect-SsisdbSql'
	,'Get-SsisAsJson'
        ,'Get-SsisProjectLsn'
        ,'Import-Json'
        ,'Invoke-ValidateSsisProject'
        ,'New-SsisVariable'
        ,'New-IscProperties'
        ,'Publish-SsisEnvironment'
        ,'Publish-SsisEnvironmentReference'
        ,'Publish-SsisFolder'
        ,'Publish-SsisIspac'
        ,'Publish-SsisVariables'
        ,'Set-IscProperty'
        ,'Set-EnvironmentVariableProperty'
        ,'Set-EnvironmentVariableProtection'
        ,'Set-EnvironmentVariableValue'
        ,'Set-ObjectParameterValue'
    )
    # Cmdlets to export from this module
    CmdletsToExport = '*'
 
    # Variables to export from this module
    VariablesToExport = '*'
 
    # Aliases to export from this module
    AliasesToExport = '*'
 
    # List of all modules packaged with this module
    ModuleList = @()
 
    # List of all files packaged with this module
    FileList = @()
 
    # Private data to pass to the module specified in ModuleToProcess
    PrivateData = ''
 
}