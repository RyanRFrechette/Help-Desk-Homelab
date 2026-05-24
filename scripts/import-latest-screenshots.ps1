# import-latest-screenshots.ps1
# Copies recent ShareX screenshots into screenshots\inbox for review.
# Usage: .\scripts\import-latest-screenshots.ps1
#        .\scripts\import-latest-screenshots.ps1 -Hours 4

param(
    [int]$Hours = 2
)

$SourceDir = "$env:USERPROFILE\OneDrive\Documents\ShareX\Screenshots\2026-05"
$InboxDir  = Join-Path $PSScriptRoot "..\screenshots\inbox"

# Create inbox folder if it does not exist
if (-not (Test-Path $InboxDir)) {
    New-Item -ItemType Directory -Path $InboxDir | Out-Null
    Write-Host "Created: $InboxDir"
}

if (-not (Test-Path $SourceDir)) {
    Write-Host "Source folder not found: $SourceDir"
    Write-Host "Check that the path matches your ShareX output folder."
    exit 1
}

$Cutoff = (Get-Date).AddHours(-$Hours)

$Files = Get-ChildItem -Path $SourceDir -File |
    Where-Object { $_.LastWriteTime -ge $Cutoff }

if ($Files.Count -eq 0) {
    Write-Host "No screenshots found in the last $Hours hour(s)."
    exit 0
}

Write-Host "Copying screenshots from the last $Hours hour(s)..."

foreach ($File in $Files) {
    $Dest = Join-Path $InboxDir $File.Name

    if (Test-Path $Dest) {
        # Only overwrite if filenames match exactly (same name = same slot)
        Write-Host "  SKIP (already exists): $($File.Name)"
        continue
    }

    Copy-Item -Path $File.FullName -Destination $Dest
    Write-Host "  Copied: $($File.Name)"
}

Write-Host "Done."
