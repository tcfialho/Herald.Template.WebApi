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
dotnet new herald-api -n ProjectName -o OutputFolder 

Options:
  -nd|--no-database     Put database sample into generated project (Default: false).
  -nq|--no-queue        Put queue sample into generated project (Default: false).
  -ne|--no-externalapi  Put external api sample into generated project (Default: false).
```
## Credits

Author [**Thiago Fialho**](https://br.linkedin.com/in/thiago-fialho-139ab116)

## License

Herald.Template.WebApi is licensed under the [MIT License](LICENSE).