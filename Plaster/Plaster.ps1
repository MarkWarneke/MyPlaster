[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string] $NewModuleName,
    [string] $DefaultCommandPrefix = '',
    [Parameter(Mandatory = $true)]
    [string] $ModuleDesc,
    [Parameter(Mandatory = $true)]
    [string] $Path
)

$SCRIPT_DIR = Split-Path -Parent $($script:MyInvocation.MyCommand.Path)


$plaster = @{
    TemplatePath    = "$SCRIPT_DIR"
    DestinationPath = (Join-Path $Path $NewModuleName)  # Must be named exactly like ModuleName for tests
    FullName        = "PowerGit"
    CompanyName     = "load-more.com"
    ModuleName      = "$NewModuleName"
    ModuleDesc      = "$ModuleDesc"
    Version         = "0.1.0"
    FunctionName    = "New-Component"
    EMail           = "warneke.mark@gmail.com"
}


If (!(Test-Path $plaster.DestinationPath)) {
    New-Item -ItemType Directory -Path $plaster.DestinationPath
    Invoke-Plaster @plaster -Verbose
}
else {
    Write-Error ("New Module Path already exsists! {0} {1} not created" -f $plaster.ModuleName, $plaster.ModuleDesc)
}

