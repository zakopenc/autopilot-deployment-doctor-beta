<#
.SYNOPSIS
    Builds docs/sample-report.html by running the Kit 1 device diagnostic in -SamplePath mode on the FAKE dataset in sample-data/.
.DESCRIPTION
    Sample mode reads only the sample folder: no registry, event log, service or system value on this computer is read,
    and there are no network calls. All names in the dataset are invented placeholders.
.EXAMPLE
    pwsh ./docs/New-SampleReport.ps1
#>
[CmdletBinding()]
param()
$root = Split-Path -Path $PSScriptRoot -Parent
$out = Join-Path -Path $root -ChildPath 'docs/out'
Push-Location -LiteralPath $root
try {
    & (Join-Path -Path $root -ChildPath 'scripts/Invoke-DeviceDiagnostic.ps1') -SamplePath './sample-data/device-prep-failure' -OutputPath $out -InformationAction SilentlyContinue -WarningAction SilentlyContinue 6>$null | Out-Null
    $html = Get-ChildItem -LiteralPath $out -Filter '*.html' | Select-Object -First 1
    Copy-Item -LiteralPath $html.FullName -Destination (Join-Path -Path $PSScriptRoot -ChildPath 'sample-report.html') -Force
}
finally {
    Pop-Location
    if (Test-Path -LiteralPath $out) { Remove-Item -LiteralPath $out -Recurse -Force }
}
