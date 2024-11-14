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

Write-Host "`nStarting countdown to open links..."

for ($i = 10; $i -gt 0; $i--) {
    Write-Host "Opening in $i seconds..." -ForegroundColor $yellow
    Start-Sleep -Seconds 2
    }

Write-Host "`nOpening Social Media Links..."
Start-Process "https://twitter.com/Sherm_R6"
Start-Process "https://www.tiktok.com/@Sherm_R6"
Start-Process "https://www.youtube.com/@Sherm_R6"
