# BlogNetNicaragua

```
[string] $Path = (Get-Location).Path
[string] $Name = "BlogNetNicaragua"
[string] $ModuleName = "BlogModule"
[string] $ThemeName = "Blog.Theme"
[string] $NuGetSource

Process
{
    if ([string]::IsNullOrEmpty($NuGetSource))
    {
        dotnet new install OrchardCore.ProjectTemplates::1.6.0
    }
    else
    {
        dotnet new install OrchardCore.ProjectTemplates::1.6.0 --nuget-source $NuGetSource
    }

    dotnet new occms -o "$Path/src/$Name.Web"

    dotnet new sln -o "$Path" -n "$Name"
    dotnet sln "$Path/$Name.sln" add "$Path/src/$Name.Web/$Name.Web.csproj"

    if (![string]::IsNullOrEmpty($ModuleName))
    {
        dotnet new ocmodulecms -n "$ModuleName" -o "$Path/src/Modules/$ModuleName"
        dotnet add "$Path/src/$Name.Web/$Name.Web.csproj" reference "$Path/src/Modules/$ModuleName/$ModuleName.csproj"
        dotnet sln "$Path/$Name.sln" add "$Path/src/Modules/$ModuleName/$ModuleName.csproj"
    }

    if (![string]::IsNullOrEmpty($ThemeName))
    {
        dotnet new octheme -n "$ThemeName" -o "$Path/src/Themes/$ThemeName"
        dotnet add "$Path/src/$Name.Web/$Name.Web.csproj" reference "$Path/src/Themes/$ThemeName/$ThemeName.csproj"
        dotnet sln "$Path/$Name.sln" add "$Path/src/Themes/$ThemeName/$ThemeName.csproj"
    }

    Copy-Item "$PSScriptRoot\.gitignore" -Destination "$Path\.gitignore"
}
```
