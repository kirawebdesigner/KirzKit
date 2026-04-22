# KirzKit Master CLI (Repository Version)
param (
    [string]$Command = "help",
    [string]$Target = "."
)

$RepoRoot = Split-Path -Parent $PSScriptRoot
$GLOBAL_AGENT_DIR = Join-Path $HOME ".agent"
$SOURCE_KIRZKIT = $RepoRoot
$BRAIN_DIRS = @("agents", "skills", "workflows", "rules", "scripts", "references", "assets")
$PERSONA_FILES = @("GEMINI.md", "CLAUDE.md", "SKILL.md", "PROMPT.md", "README.md", ".cursorrules")

function Get-BrainCounts {
    param([string]$BaseDir)

    return [pscustomobject]@{
        Agents = (Get-ChildItem (Join-Path $BaseDir "agents") -File -Filter *.md -ErrorAction SilentlyContinue | Measure-Object).Count
        Skills = (Get-ChildItem (Join-Path $BaseDir "skills") -Directory -ErrorAction SilentlyContinue | Measure-Object).Count
        Workflows = (Get-ChildItem (Join-Path $BaseDir "workflows") -File -Filter *.md -ErrorAction SilentlyContinue | Measure-Object).Count
    }
}

function Assert-SourceExists {
    if (!(Test-Path $SOURCE_KIRZKIT)) {
        throw "KirzKit source not found at $SOURCE_KIRZKIT"
    }
}

function Show-Help {
    $counts = Get-BrainCounts -BaseDir $SOURCE_KIRZKIT
    Write-Host "--- KirzKit CLI ---" -ForegroundColor Cyan
    Write-Host "Usage: .\scripts\kirzkit.ps1 [init | sync | doctor | help] [target]"
    Write-Host "  init   - Install the full KirzKit brain into a project."
    Write-Host "  sync   - Update the global brain from this repository."
    Write-Host "  doctor - Validate the KirzKit source, global brain, and current project."
    Write-Host "  help   - Show available commands."
    Write-Host ""
    Write-Host "Current source pack: $($counts.Agents) agents, $($counts.Skills) skills, $($counts.Workflows) workflows." -ForegroundColor Gray
}

function Copy-BrainContent {
    param(
        [string]$SourceDir,
        [string]$DestinationDir
    )

    foreach ($dir in $BRAIN_DIRS) {
        $sourcePath = Join-Path $SourceDir $dir
        $destinationPath = Join-Path $DestinationDir $dir
        if (Test-Path $sourcePath) {
            New-Item -ItemType Directory -Force -Path $destinationPath | Out-Null
            Copy-Item -Path (Join-Path $sourcePath "*") -Destination $destinationPath -Recurse -Force
        }
    }

    foreach ($file in $PERSONA_FILES) {
        $sourcePath = Join-Path $SourceDir $file
        if (Test-Path $sourcePath) {
            Copy-Item -Path $sourcePath -Destination (Join-Path $DestinationDir $file) -Force
        }
    }
}

function Write-KnowledgeMap {
    param([string]$LocalAgentDir)

    $agents = Get-ChildItem (Join-Path $LocalAgentDir "agents") -File -Filter *.md -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Name
    $skills = Get-ChildItem (Join-Path $LocalAgentDir "skills") -Directory -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Name
    $workflows = Get-ChildItem (Join-Path $LocalAgentDir "workflows") -File -Filter *.md -ErrorAction SilentlyContinue | Select-Object -ExpandProperty BaseName
    $counts = Get-BrainCounts -BaseDir $LocalAgentDir

    $indexLines = @(
        "# KirzKit Master Knowledge Map",
        "This file summarizes the KirzKit brain pack deployed into this project.",
        "",
        "## Installed Counts",
        "- Agents: $($counts.Agents)",
        "- Skills: $($counts.Skills)",
        "- Workflows: $($counts.Workflows)",
        "",
        "## Available Agents",
        ($agents -join ", "),
        "",
        "## Available Skills",
        ($skills -join ", "),
        "",
        "## Available Workflows",
        (($workflows | ForEach-Object { "/$_" }) -join ", "),
        "",
        "## Default Execution Loop",
        "1. /plan -> map scope, architecture, and dependencies",
        "2. orchestrate -> assign specialist agents and skills",
        "3. execute -> build in parallel where safe",
        "4. verify -> run local validation before delivery"
    )

    $indexLines | Set-Content -Path (Join-Path $LocalAgentDir "MASTER_KNOWLEDGE_MAP.md") -Encoding ascii
}

function Write-ProjectRules {
    param([string]$ProjectDir)

    $agLines = @(
        "# KirzKit Project Rules",
        "- Start complex work with /plan.",
        "- Use MASTER_KNOWLEDGE_MAP.md in .agent to discover installed capabilities.",
        "- Prefer specialist agents for architecture, database, backend, frontend, testing, and security work.",
        "- Validate locally before declaring work complete.",
        "- Treat AI as an orchestrator, not a substitute for runtime verification."
    )

    $agLines | Set-Content -Path (Join-Path $ProjectDir ".agrules") -Encoding ascii
}

function Write-ActivationGuide {
    param(
        [string]$ProjectDir,
        [string]$LocalAgentDir
    )

    $counts = Get-BrainCounts -BaseDir $LocalAgentDir
    $guideLines = @(
        "# Activate KirzKit",
        "",
        'KirzKit is installed in this project. Treat the files in `.agent/` as the active project brain.',
        "",
        "## What Is Installed",
        "- Agents: $($counts.Agents)",
        "- Skills: $($counts.Skills)",
        "- Workflows: $($counts.Workflows)",
        "",
        "## First Files To Load",
        '1. `.agent/MASTER_KNOWLEDGE_MAP.md`',
        '2. `.agent/GEMINI.md` or `.agent/CLAUDE.md` depending on the model',
        '3. `.agent/SKILL.md`',
        '4. `.agent/references/workflows.md`',
        "",
        "## Default Operating Loop",
        "1. Start with `/plan`.",
        "2. Map the right agents and skills.",
        "3. Execute in parallel where safe.",
        "4. Validate before delivery.",
        "",
        "## Example Activation Prompt",
        '```text',
        'Load KirzKit from this project''s `.agent` folder. Use `.agent/MASTER_KNOWLEDGE_MAP.md` as the capability index. Start in `/plan` mode, identify the relevant specialist agents and skills, then proceed with implementation only after the plan is clear.',
        '```',
        "",
        "## Model-Specific Notes",
        "- Gemini: prioritize `.agent/GEMINI.md`.",
        "- Claude: prioritize `.agent/CLAUDE.md`.",
        "- Other models: use `.agent/SKILL.md` plus the knowledge map and workflow references.",
        "",
        '## If The AI Does Not Auto-Load `.agent`',
        '- explicitly point it to `.agent/MASTER_KNOWLEDGE_MAP.md`',
        "- tell it to read the relevant root persona file",
        "- tell it to begin with `/plan`",
        "",
        "## Recommended Commands",
        "- `kirzkit doctor` -> validate source, global, and local setup",
        "- `kirzkit sync` -> refresh the global brain from source",
        "- `kirzkit init` -> install KirzKit into the current project"
    )

    $guideLines | Set-Content -Path (Join-Path $ProjectDir "ACTIVATE_KIRZKIT.md") -Encoding ascii
}

function Initialize-Project {
    Assert-SourceExists

    $projectDir = Resolve-Path $Target
    $localAgentDir = Join-Path $projectDir ".agent"

    Write-Host "Initializing KirzKit in $projectDir..." -ForegroundColor Cyan

    if (!(Test-Path $GLOBAL_AGENT_DIR)) {
        Write-Host "Global brain not found. Syncing first..." -ForegroundColor Yellow
        Sync-Global-Brain
    }

    foreach ($dir in $BRAIN_DIRS) {
        New-Item -ItemType Directory -Force -Path (Join-Path $localAgentDir $dir) | Out-Null
    }

    Copy-BrainContent -SourceDir $GLOBAL_AGENT_DIR -DestinationDir $localAgentDir
    Write-KnowledgeMap -LocalAgentDir $localAgentDir
    Write-ProjectRules -ProjectDir $projectDir
    Write-ActivationGuide -ProjectDir $projectDir -LocalAgentDir $localAgentDir

    $counts = Get-BrainCounts -BaseDir $localAgentDir
    Write-Host "SUCCESS: KirzKit deployed to $projectDir" -ForegroundColor Green
    Write-Host "Installed $($counts.Agents) agents, $($counts.Skills) skills, and $($counts.Workflows) workflows." -ForegroundColor Gray
}

function Sync-Global-Brain {
    Assert-SourceExists

    Write-Host "Syncing global brain from source..." -ForegroundColor Cyan
    New-Item -ItemType Directory -Force -Path $GLOBAL_AGENT_DIR | Out-Null
    Copy-BrainContent -SourceDir $SOURCE_KIRZKIT -DestinationDir $GLOBAL_AGENT_DIR

    $counts = Get-BrainCounts -BaseDir $GLOBAL_AGENT_DIR
    Write-Host "Sync complete. Global brain now has $($counts.Agents) agents, $($counts.Skills) skills, and $($counts.Workflows) workflows." -ForegroundColor Green
}

function Run-Doctor {
    Assert-SourceExists

    $projectDir = Resolve-Path $Target
    $localAgentDir = Join-Path $projectDir ".agent"
    $sourceCounts = Get-BrainCounts -BaseDir $SOURCE_KIRZKIT
    $globalExists = Test-Path $GLOBAL_AGENT_DIR
    $localExists = Test-Path $localAgentDir

    Write-Host "--- KirzKit Doctor ---" -ForegroundColor Cyan
    Write-Host "Source: $SOURCE_KIRZKIT" -ForegroundColor Gray
    Write-Host "Global brain: $GLOBAL_AGENT_DIR" -ForegroundColor Gray
    Write-Host "Project: $projectDir" -ForegroundColor Gray
    Write-Host ""

    Write-Host "Source pack: $($sourceCounts.Agents) agents, $($sourceCounts.Skills) skills, $($sourceCounts.Workflows) workflows" -ForegroundColor Green

    if ($globalExists) {
        $globalCounts = Get-BrainCounts -BaseDir $GLOBAL_AGENT_DIR
        Write-Host "Global brain: present ($($globalCounts.Agents) agents, $($globalCounts.Skills) skills, $($globalCounts.Workflows) workflows)" -ForegroundColor Green
    } else {
        Write-Host "Global brain: missing. Run '.\scripts\kirzkit.ps1 sync'." -ForegroundColor Yellow
    }

    if ($localExists) {
        $localCounts = Get-BrainCounts -BaseDir $localAgentDir
        Write-Host "Project brain: present ($($localCounts.Agents) agents, $($localCounts.Skills) skills, $($localCounts.Workflows) workflows)" -ForegroundColor Green

        $requiredFiles = @(
            (Join-Path $localAgentDir "MASTER_KNOWLEDGE_MAP.md"),
            (Join-Path $projectDir ".agrules"),
            (Join-Path $projectDir "ACTIVATE_KIRZKIT.md")
        )

        foreach ($file in $requiredFiles) {
            if (Test-Path $file) {
                Write-Host "OK: $file" -ForegroundColor Green
            } else {
                Write-Host "Missing: $file" -ForegroundColor Yellow
            }
        }
    } else {
        Write-Host "Project brain: missing. Run '.\scripts\kirzkit.ps1 init' inside the project." -ForegroundColor Yellow
    }
}

switch ($Command.ToLowerInvariant()) {
    "init" { Initialize-Project }
    "sync" { Sync-Global-Brain }
    "doctor" { Run-Doctor }
    "help" { Show-Help }
    default { Show-Help }
}
