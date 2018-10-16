#  <%= $PLASTER_PARAM_ModuleName %> <%= $PLASTER_PARAM_Version %>

Author: <%= $PLASTER_PARAM_FullName %>

<%= $PLASTER_PARAM_ModuleDesc %>

## Introduction

Introduction Text

## Getting Started

``` PowerShell
Import-Module .\<%= $PLASTER_PARAM_ModuleName %>\<%= $PLASTER_PARAM_ModuleName %>.psd1
Get-Command -Module <%= $PLASTER_PARAM_ModuleName %>
```


``` PowerShell
# Function Call
<%= $PLASTER_PARAM_FunctionName %>

```

## Build and Test

Run tests from folder ```.\<%= $PLASTER_PARAM_ModuleName %>\Test```

``` PowerShell
Invoke-Pester .\<%= $PLASTER_PARAM_ModuleName %>\Test
```