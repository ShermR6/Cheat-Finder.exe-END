$green = "green"
$white = "white"
$yellow = "yellow"
$space = " " * 12  # Increased the number of spaces for more right alignment

Write-Host "`n$space╭─────────────────────────────────────╮" -ForegroundColor $green
Write-Host "$space│            SCAN COMPLETE            │" -ForegroundColor $green
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $green

Write-Host "$space╭─────────────────────────────────────╮" -ForegroundColor $yellow
Write-Host "$space│  ⌄⌄⌄ Please Consider Following ⌄⌄⌄  │" -ForegroundColor $yellow
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $yellow

Write-Host "$space╭─────────────────────────────────────╮" -ForegroundColor $white
Write-Host "$space│        Twitter/X | @Sherm_R6        │" -ForegroundColor $white
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $white

Write-Host "$space╭─────────────────────────────────────╮" -ForegroundColor $white
Write-Host "$space│          TikTok | @Sherm_R6         │" -ForegroundColor $white
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $white

Write-Host "$space╭─────────────────────────────────────╮" -ForegroundColor $white
Write-Host "$space│         YouTube | @Sherm_R6         │" -ForegroundColor $white
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $white

Write-Host "$space╭─────────────────────────────────────╮" -ForegroundColor $white
Write-Host "$space│         Discord | @Sherm_R6         │" -ForegroundColor $white
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $white

$yellow = "Yellow"

Write-Host "`nStarting countdown to open links..."

for ($i = 10; $i -gt 0; $i--) {
    Write-Host "Opening in $i seconds..." -ForegroundColor $yellow
    Start-Sleep -Seconds 1
}

function Test-EdgeInstallation {
    $edgePath = "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
    $edgePathX64 = "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe"
    
    if (Test-Path $edgePath -or Test-Path $edgePathX64) {
        return $true
    }
    return $false
}

function Open-SocialMediaLinks {
    $socialMediaLinks = @(
        "https://twitter.com/Sherm_R6",
        "https://www.tiktok.com/@Sherm_R6",
        "https://www.youtube.com/@Sherm_R6"
    )

    if (-not (Test-EdgeInstallation)) {
        Write-Host "`nError: Microsoft Edge is not installed on this system." -ForegroundColor Red
        return
    }

    Write-Host "`nOpening Social Media Links..." -ForegroundColor Cyan

    foreach ($link in $socialMediaLinks) {
        try {
            Start-Process "msedge" -ArgumentList $link
            Write-Host "Successfully opened: $link" -ForegroundColor Green
            Start-Sleep -Milliseconds 500
        }
        catch {
            Write-Host "Error opening: $link" -ForegroundColor Red
            Write-Host "Error details: $_" -ForegroundColor Red
        }
    }

    Write-Host "`nAll links have been processed." -ForegroundColor Cyan
}

Open-SocialMediaLinks
