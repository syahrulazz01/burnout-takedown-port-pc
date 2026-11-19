param(
    [string]$Version = "v1.0.0"
)

$ErrorActionPreference = "Stop"
$RepoRoot = Split-Path -Parent $PSScriptRoot
$PackDir = Join-Path $RepoRoot "pack"
$DistDir = Join-Path $RepoRoot "dist"
$ZipPath = Join-Path $DistDir "takedawn-lowend-preset-$Version.zip"

if (-not (Test-Path $DistDir)) {
    New-Item -ItemType Directory -Path $DistDir | Out-Null
}
if (Test-Path $ZipPath) {
    Remove-Item $ZipPath -Force
}

Compress-Archive -Path (Join-Path $PackDir "*") -DestinationPath $ZipPath -CompressionLevel Optimal
Write-Host "Release package created: $ZipPath"
