# KirzKit Installer for Windows (Repository Version)

$repoRoot = Split-Path -Parent $PSScriptRoot
$cliScript = Join-Path $PSScriptRoot "kirzkit.ps1"
$targetDir = Join-Path $HOME ".agent"

Write-Host "Installing KirzKit..." -ForegroundColor Cyan

if (!(Test-Path $repoRoot)) {
    Write-Host "ERROR: KirzKit repository root not found at $repoRoot" -ForegroundColor Red
    exit 1
}

if (!(Test-Path $cliScript)) {
    Write-Host "ERROR: CLI entry script not found at $cliScript" -ForegroundColor Red
    exit 1
}

& $cliScript sync
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: KirzKit sync failed." -ForegroundColor Red
    exit 1
}

Write-Host "KirzKit successfully installed at $targetDir" -ForegroundColor Green
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "  1. cd into a project folder"
Write-Host "  2. run: .\scripts\kirzkit.ps1 init"
Write-Host "  3. run: .\scripts\kirzkit.ps1 doctor"
Write-Host "  4. start the AI workflow with /plan"
