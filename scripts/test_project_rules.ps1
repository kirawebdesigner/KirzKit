$ErrorActionPreference = "Stop"

$cliScript = Join-Path $PSScriptRoot "kirzkit.ps1"
$installerScript = Join-Path $PSScriptRoot "install_kirzkit.ps1"

foreach ($path in @($cliScript, $installerScript)) {
    $tokens = $null
    $parseErrors = $null
    [System.Management.Automation.Language.Parser]::ParseFile(
        $path,
        [ref]$tokens,
        [ref]$parseErrors
    ) | Out-Null
    if ($parseErrors.Count -gt 0) {
        throw "PowerShell parse failed for $path`: $($parseErrors -join '; ')"
    }
}

$tempProject = Join-Path ([System.IO.Path]::GetTempPath()) "kirzkit-init-smoke-$([guid]::NewGuid().ToString('N'))"
New-Item -ItemType Directory -Path $tempProject | Out-Null

try {
    $agentsPath = Join-Path $tempProject "AGENTS.md"
    $userInstructions = "# Existing project instructions`nKeep this user-authored content.`n"
    Set-Content -Path $agentsPath -Value $userInstructions -Encoding utf8

    # Dot-source the CLI so its project-rule generator can be tested in isolation.
    . $cliScript help | Out-Null
    Write-ProjectRules -ProjectDir $tempProject
    $firstResult = Get-Content -Path $agentsPath -Raw

    Write-ProjectRules -ProjectDir $tempProject
    $secondResult = Get-Content -Path $agentsPath -Raw

    if ($firstResult -ne $secondResult) {
        throw "Repeated initialization changed the managed AGENTS.md block."
    }
    if ($secondResult -notmatch [regex]::Escape("Keep this user-authored content.")) {
        throw "Existing user-authored AGENTS.md content was not preserved."
    }

    foreach ($marker in @("<!-- BEGIN KIRZKIT MANAGED INSTRUCTIONS -->", "<!-- END KIRZKIT MANAGED INSTRUCTIONS -->")) {
        if ([regex]::Matches($secondResult, [regex]::Escape($marker)).Count -ne 1) {
            throw "Expected exactly one managed marker: $marker"
        }
    }

    if (!(Test-Path (Join-Path $tempProject ".agrules"))) {
        throw "Project rules file .agrules was not generated."
    }
    if ($secondResult -notmatch "natural-language goal") {
        throw "Generated AGENTS.md is missing natural-language routing guidance."
    }

    Write-Host "PASS: PowerShell syntax, existing-content preservation, and idempotent project-rule generation."
}
finally {
    Remove-Item -Path $tempProject -Recurse -Force
}
