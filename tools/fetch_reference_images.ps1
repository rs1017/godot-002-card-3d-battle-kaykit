param(
	[int]$TargetCount = 1000,
	[int]$MaxPages = 200,
	[string]$OutDir = "docs/기획서/images/reference"
)

$ErrorActionPreference = "Stop"

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

$seenImage = New-Object System.Collections.Generic.HashSet[string]
$seenShot = New-Object System.Collections.Generic.HashSet[string]
$downloaded = 0

for ($p = 1; $p -le $MaxPages; $p++) {
	if ($downloaded -ge $TargetCount) { break }
	$pageUrl = "https://steamcommunity.com/app/489520/screenshots/?p=$p&browsefilter=mostrecent"
	Write-Host "PAGE:$p $pageUrl"
	try {
		$html = (Invoke-WebRequest -UseBasicParsing -Uri $pageUrl -TimeoutSec 30).Content
	} catch {
		Write-Host "WARN: failed page $p - $($_.Exception.Message)"
		continue
	}

	$shotMatches = [regex]::Matches($html, 'https://steamcommunity\.com/sharedfiles/filedetails/\?id=\d+')
	$shotUrls = $shotMatches | ForEach-Object { $_.Value } | Select-Object -Unique

	foreach ($shotUrl in $shotUrls) {
		if ($downloaded -ge $TargetCount) { break }
		if (-not $seenShot.Add($shotUrl)) { continue }

		$detailHtml = $null
		try {
			$detailHtml = (Invoke-WebRequest -UseBasicParsing -Uri $shotUrl -TimeoutSec 30).Content
		} catch {
			continue
		}

		$imageUrl = ""
		$og = [regex]::Match($detailHtml, '<meta property=""og:image"" content=""([^""]+)""')
		if ($og.Success) {
			$imageUrl = $og.Groups[1].Value
		}
		if ([string]::IsNullOrWhiteSpace($imageUrl)) {
			$img = [regex]::Match($detailHtml, 'https:[^"\s]*(steamstatic|akamaihd)[^"\s]*\.(jpg|jpeg|png)(\?[^"\s]*)?')
			if ($img.Success) {
				$imageUrl = $img.Value
			}
		}
		if ([string]::IsNullOrWhiteSpace($imageUrl)) { continue }
		if (-not $seenImage.Add($imageUrl)) { continue }

		$ext = ".jpg"
		if ($imageUrl -match '\.png(\?|$)') { $ext = ".png" }
		$fileName = ("ref_{0:D5}{1}" -f ($downloaded + 1), $ext)
		$dest = Join-Path $OutDir $fileName
		try {
			Invoke-WebRequest -UseBasicParsing -Uri $imageUrl -OutFile $dest -TimeoutSec 60
			$size = (Get-Item $dest).Length
			if ($size -lt 4096) {
				Remove-Item $dest -Force -ErrorAction SilentlyContinue
				continue
			}
			$downloaded++
			Write-Host ("DOWNLOADED:{0} {1}" -f $downloaded, $fileName)
		} catch {
			Remove-Item $dest -Force -ErrorAction SilentlyContinue
		}
	}
}

Write-Host ("TOTAL_DOWNLOADED:{0}" -f $downloaded)
