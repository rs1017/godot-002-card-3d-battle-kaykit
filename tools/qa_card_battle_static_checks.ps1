param(
  [string]$ProjectRoot = "."
)

$ErrorActionPreference = "Stop"
Set-Location $ProjectRoot

$results = @()

function Add-Result($name, $ok, $detail) {
  $results += [pscustomobject]@{ Check = $name; Pass = $ok; Detail = $detail }
}

# 1) Card resource count
$cards = Get-ChildItem "resources/cards" -Filter *.tres -ErrorAction SilentlyContinue
Add-Result "Card resource count" ($cards.Count -ge 10) ("count={0}" -f $cards.Count)

# 2) Card art links
$missingArt = @()
foreach ($card in $cards) {
  $match = Select-String -Path $card.FullName -Pattern 'path="(res://assets/ui/cards/[^"]+)"' | Select-Object -First 1
  if (-not $match) {
    $missingArt += "$($card.Name): missing art path"
    continue
  }
  $res = $match.Matches[0].Groups[1].Value -replace 'res://',''
  if (-not (Test-Path $res)) {
    $missingArt += "$($card.Name): file not found ($res)"
  }
}
Add-Result "Card art mapping" ($missingArt.Count -eq 0) ($(if($missingArt.Count){$missingArt -join '; '}else{'ok'}))

# 3) QA hooks exist
$bm = Get-Content "scripts/card_battle/battle_manager.gd" -Raw
$bb = Get-Content "scripts/card_battle/battle_board.gd" -Raw
Add-Result "Keyword QA hook" ($bm.Contains("run_debug_keyword_checks") -and $bb.Contains("KEY_F8")) "F8 + manager hook"
Add-Result "AI QA hook" ($bm.Contains("run_debug_ai_turn_check") -and $bb.Contains("KEY_F9")) "F9 + manager hook"

# Output
$results | Format-Table -AutoSize
$failed = $results | Where-Object { -not $_.Pass }
if ($failed.Count -gt 0) {
  Write-Host "`nQA_STATIC_CHECK: FAIL ($($failed.Count) failed)"
  exit 1
}
Write-Host "`nQA_STATIC_CHECK: PASS"
