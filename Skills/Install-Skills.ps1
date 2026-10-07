<# Install skills from D:\Agent-Assets\Skills to a project.
Usage:
  .\Install-Skills.ps1 -Target "D:\path\proyek"
  .\Install-Skills.ps1 -Target "D:\path\proyek" -Categories all
  .\Install-Skills.ps1 -Target "D:\path\proyek" -Categories @("workflow","quality")
  .\Install-Skills.ps1 -Target "D:\path\proyek" -Skills @("humanizer","typer","fastapi")
  .\Install-Skills.ps1 -Target "D:\path\proyek" -Mode symlink
#>
param(
  [Parameter(Mandatory=$true)][string]$Target,
  [string[]]$Categories = @("workflow","quality","spec","design"),
  [string[]]$Skills = @(),
  [ValidateSet("copy","symlink")][string]$Mode = "copy",
  [ValidateSet(".agent/skills",".agents/skills","skills")][string]$DestSub = ".agent/skills"
)
$ErrorActionPreference = "Stop"
$Library = "D:\Agent-Assets\Skills"
if (!(Test-Path -LiteralPath $Library)) { throw "Library not found: $Library" }
if (!(Test-Path -LiteralPath $Target)) { throw "Target not found: $Target" }
if ($Categories -contains "all") { $Categories = @("workflow","quality","design","spec","backend","frontend","tools","writing","eval","SystemDesign") }
$toInstall = @()
if ($Skills.Count -gt 0) {
  foreach ($s in $Skills) {
    $found = Get-ChildItem -LiteralPath $Library -Recurse -Directory -Force | Where-Object { $_.Name -eq $s } | Select-Object -First 1
    if ($found) { $toInstall += $found.FullName } else { Write-Warning "Skill not found: $s" }
  }
} else {
  foreach ($c in $Categories) {
    $p = Join-Path $Library $c
    if (Test-Path -LiteralPath $p) { $toInstall += (Get-ChildItem -LiteralPath $p -Directory | ForEach-Object { $_.FullName }) }
  }
}
$destRoot = Join-Path $Target $DestSub
New-Item -ItemType Directory -Path $destRoot -Force | Out-Null
foreach ($src in $toInstall) {
  $name = Split-Path $src -Leaf
  $dst = Join-Path $destRoot $name
  if ($Mode -eq "symlink") {
    if (Test-Path -LiteralPath $dst) { Remove-Item -LiteralPath $dst -Recurse -Force }
    New-Item -ItemType SymbolicLink -Path $dst -Target $src | Out-Null
    Write-Output "LINK $name"
  } else {
    if (Test-Path -LiteralPath $dst) { Remove-Item -LiteralPath $dst -Recurse -Force }
    Copy-Item -LiteralPath $src -Destination $dst -Recurse -Force
    Write-Output "COPY $name"
  }
}
Write-Output "Done: $($toInstall.Count) skills -> $destRoot [$Mode]"
