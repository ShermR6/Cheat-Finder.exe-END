function Format-Hyperlink {
  param(
    [Parameter(ValueFromPipeline = $true, Position = 0)]
    [ValidateNotNullOrEmpty()]
    [Uri] $Uri,

    [Parameter(Mandatory=$false, Position = 1)]
    [string] $Label
  )

  if (($PSVersionTable.PSVersion.Major -lt 6 -or $IsWindows) -and -not $Env:WT_SESSION) {
    # Fallback for Windows users not inside Windows Terminal
    if ($Label) {
      return "$Label ($Uri)"
    }
    return "$Uri"
  }

  if ($Label) {
    return "`e]8;;$Uri`e\$Label`e]8;;`e\"
  }

  return "$Uri"
}
Write-Output "`n`n`n $(Format-Hyperlink -Uri "https://x.com/Sherm_R6" -Label "Twitter/X | Sherm_R6")!`n`n`n"
Write-Output "`n`n`n $(Format-Hyperlink -Uri "https://youtube.com/@Sherm_R6" -Label "YouTube | Sherm_R6")!`n`n`n"
$green = "green"
$white = "white"
$space = " " * 12  # Increased the number of spaces for more right alignment

Write-Host "`n$space╭─────────────────────────────────────╮" -ForegroundColor $green
Write-Host "$space│            SCAN COMPLETE            │" -ForegroundColor $green
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $green

Write-Host "$space╭─────────────────────────────────────╮" -ForegroundColor $white
Write-Host "$space│           Discord | @Sherm_R6       │" -ForegroundColor $white
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $white

Write-Host "$space╭─────────────────────────────────────╮" -ForegroundColor $white
Write-Host "$space│           Twitter/X | Sherm_R6      │" -ForegroundColor $white
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $white

Write-Host "$space╭─────────────────────────────────────╮" -ForegroundColor $white
Write-Host "$space│           YouTube | Sherm_R6        │" -ForegroundColor $white
Write-Host "$space╰─────────────────────────────────────╯" -ForegroundColor $white
