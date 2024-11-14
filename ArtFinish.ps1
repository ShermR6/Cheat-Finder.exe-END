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
Write-Host "`nStarting countdown to open links..." -ForegroundColor $yellow

for ($i = 10; $i -gt 0; $i--) {
    Write-Host "Opening in $i seconds..." -ForegroundColor $yellow
    Start-Sleep -Seconds 1
}

Write-Host "`nOpening Social Media Links..." -ForegroundColor $yellow

Start-Process "msedge" -ArgumentList "https://twitter.com/Sherm_R6"
Start-Sleep -Seconds 1  
Start-Process "msedge" -ArgumentList "https://www.tiktok.com/@Sherm_R6"
Start-Sleep -Seconds 1
Start-Process "msedge" -ArgumentList "https://www.youtube.com/@Sherm_R6"

Write-Host "`nAll links have been opened!" -ForegroundColor $yellow
