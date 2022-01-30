# Herald.Template.WebApi

![Status](https://github.com/tcfialho/Herald.Template.WebApi/workflows/Herald.Template.WebApi/badge.svg) ![Coverage](https://codecov.io/gh/tcfialho/Herald.Template.WebApi/branch/master/graph/badge.svg) ![NuGet](https://buildstats.info/nuget/Herald.Template.WebApi)

## Overview
 - Herald Scaffold for create WebAPI projects.

## Installation
 - .NET CLI
    ```
    dotnet new -i Herald.Template.WebAPI::*
    ```

See more information in [Nuget](https://www.nuget.org/packages/Herald.Template.WebApi/).

## Usage
```
dotnet new herald-api -n ProjectName -o OutputFolder -f net5.0
```
## Options
```
  -n|--name             The project and solution name for the output being created (Default: current folder name).
  -o|--output           Location to place the generated output (Default: current folder name).
  -f|--framework        The target framework for the project, eq: net6.0/net5.0/netcoreapp3.1 (Required).
                            net6.0           - .NET 6.0
                            net5.0           - .NET 5.0
                            netcoreapp3.1    - .NET Core 3.1                        
  -nd|--no-database     Removes database sample into generated project (Default: false).
  -nq|--no-queue        Removes queue sample into generated project (Default: false).
  -ne|--no-externalapi  Removes external api sample into generated project (Default: false).
```

## Credits

Author [**Thiago Fialho**](https://br.linkedin.com/in/thiago-fialho-139ab116)

## License

Herald.Template.WebApi is licensed under the [MIT License](LICENSE).