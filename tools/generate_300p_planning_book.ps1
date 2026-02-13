param(
	[string]$OutPath = "docs/planning/game_design_master_plan.md",
	[int]$TargetPages = 320,
	[string]$ProjectTitle = "KayKit Card Battle Expansion Design Plan"
)

$ErrorActionPreference = "Stop"

function Ensure-Dir {
	param([string]$Path)
	if (-not (Test-Path $Path)) {
		New-Item -ItemType Directory -Force -Path $Path | Out-Null
	}
}

function Build-Page {
	param(
		[int]$PageNo,
		[string]$Theme,
		[string]$RefA,
		[string]$RefB
	)
	return @"
## Page $PageNo - $Theme

### Reference Images
![Reference A](../ralph/reference/minion-masters/$RefA)
![Reference B](../ralph/reference/minion-masters/$RefB)

### Analysis Table
| Check | Observation | Proposal |
|---|---|---|
| Readability | Strong team color separation | Keep board ownership cues at all times |
| Tempo | Fast summon-to-impact loop | Use short animation windows (0.2-0.6s) |
| UI Density | Core info visible at a glance | Keep HP/Mana/Hand/Turn in fixed zones |
| Result Feedback | Win/Lose transition is immediate | Add clear panel + next action buttons |

### Flow
~~~mermaid
flowchart TD
	A[Reference Check] --> B[Plan Update]
	B --> C[CSV Rule Update]
	C --> D[Implementation]
	D --> E[Review + QA]
	E --> F{Pass?}
	F -- No --> A
	F -- Yes --> G[Cycle Complete]
~~~

### UI Proposal
~~~text
+----------------------------------------------------------+
| [Enemy HP][Enemy Mana]       Turn State        [Menu]   |
|----------------------------------------------------------|
|                 [Battlefield / Bridge Area]             |
| [Enemy Board Slots]                            [Log]     |
|                                                          |
| [Player Board Slots]                      [Card Detail]  |
|----------------------------------------------------------|
| [Player HP][Player Mana] [Hand Cards] [End Turn Button] |
+----------------------------------------------------------+
~~~

### CSV Data Links
- `docs/ralph/planning/card_rules.csv`
- `docs/ralph/planning/deck_rules.csv`
- `docs/ralph/planning/combat_formula.csv`
- `docs/ralph/planning/map_design.csv`
- `docs/ralph/planning/character_profiles.csv`
- `docs/ralph/planning/animation_states.csv`
- `docs/ralph/planning/victory_defeat_flow.csv`
- `docs/ralph/planning/qa_fun_checklist.csv`

---
"@
}

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $repoRoot

$outDir = Split-Path $OutPath -Parent
Ensure-Dir $outDir

$themes = @(
	"Main Page Benchmark",
	"Map and Bridge Control",
	"Turn Loop UX",
	"Deck and Card Rule Design",
	"Combat Formula",
	"Win/Lose Direction",
	"Animation Timing",
	"Card Inventory UX",
	"Character Description",
	"QA and Fun Validation"
)

$refs = Get-ChildItem "docs/ralph/reference/minion-masters" -Filter "screenshot_*.jpg" -ErrorAction SilentlyContinue | Sort-Object Name
if ($refs.Count -eq 0) {
	$refs = @(
		[pscustomobject]@{ Name = "screenshot_01_ss_ff25c94b1cc1a3731c0f51a2a31d9516d725048a.jpg" },
		[pscustomobject]@{ Name = "screenshot_02_ss_e4ae57dca3a26ce13a01d4ac2871f711679e0934.jpg" }
	)
}

$date = Get-Date -Format "yyyy-MM-dd"
$sb = New-Object System.Text.StringBuilder
[void]$sb.AppendLine("# $ProjectTitle")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("Date: $date")
[void]$sb.AppendLine("Format: Markdown (.md)")
[void]$sb.AppendLine("Images: stored in images/ and linked with relative paths")
[void]$sb.AppendLine("Data: stored in .csv files")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("---")

for ($i = 1; $i -le $TargetPages; $i++) {
	$theme = $themes[($i - 1) % $themes.Count]
	$a = $refs[($i - 1) % $refs.Count].Name
	$b = $refs[$i % $refs.Count].Name
	[void]$sb.AppendLine((Build-Page -PageNo $i -Theme $theme -RefA $a -RefB $b))
}

Set-Content -Path $OutPath -Value $sb.ToString()
Write-Output "PLANNING_BOOK_GENERATED: $OutPath (pages=$TargetPages)"
