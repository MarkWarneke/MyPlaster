# Introduction

Plaster is a PowerShell scaffolding tool. It automates and standardize creation of PowerShell modules. [Plaster](https://github.com/PowerShell/Plaster)

[Blog Working With Plaster](http://overpoweredshell.com/Working-with-Plaster/)
[Youtube Working with Plaster](https://www.youtube.com/watch?v=16CYGTKH73U&t=2923s)

Will create a module with prefix ```$DefaultCommandPrefix = 'MyModule'```

## Getting Started

Execute

```PowerShell
.\Plaster.ps1 -NewModuleName MyModule -ModuleDesc 'PowerShell Module for automation' -Path 'C:\Dev\Github\'
```

Configuration File

```PowerShell
$plaster = @{
    TemplatePath    = "$SCRIPT_DIR"
    DestinationPath = (Join-Path $Path $NewModuleName)  # Must be named exactly like ModuleName for tests
    FullName        = "My Module for Automation"
    CompanyName     = "load-more.com"
    ModuleName      = "$NewModuleName"
    ModuleDesc      = "$ModuleDesc"
    Version         = "0.1.0"
    FunctionName    = "Get-Funciton"
    EMail           = "warneke.mark@gmail.com"
}
```

## Result

```PowerShell
Directory: C:\dev\MyModule


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----       99.09.2000     15:01                .vscode
d-----       99.99.2000     15:01                docs
d-----       99.99.2000     15:01                Private
d-----       99.99.2000     15:01                Public
d-----       99.99.2000     15:01                static
d-----       99.99.2000     15:01                Test
-a----       99.99.2000     14:01              0 .gitignore
-a----       99.99.2000     15:01              0 MyModule.psd1
-a----       99.99.2000     15:01              0 MyModule.psm1
-a----       99.99.2000     15:01              0 README.md
```
