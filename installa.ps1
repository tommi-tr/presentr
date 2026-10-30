# Presentr - crea i collegamenti sul Desktop e nel menu Start.
# Uso: tasto destro su questo file > "Esegui con PowerShell".
# Presentr si apre in una finestra di Microsoft Edge senza barre (modalita' app).

$dir  = Split-Path -Parent $MyInvocation.MyCommand.Path
$html = Join-Path $dir 'Presentr.html'
$ico  = Join-Path $dir 'Presentr.ico'
$url  = 'file:///' + ($html -replace '\\', '/')

$edge = @(
  "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
  "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe"
) | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $edge) { Write-Host 'Microsoft Edge non trovato.'; exit 1 }

$shell = New-Object -ComObject WScript.Shell
$targets = @(
  (Join-Path ([Environment]::GetFolderPath('Desktop')) 'Presentr.lnk'),
  (Join-Path ([Environment]::GetFolderPath('Programs')) 'Presentr.lnk')
)
foreach ($t in $targets) {
  $s = $shell.CreateShortcut($t)
  $s.TargetPath = $edge
  $s.Arguments = "--app=`"$url`" --start-maximized"
  $s.WorkingDirectory = $dir
  $s.IconLocation = "$ico,0"
  $s.Description = 'Presentr - presentazioni di foto e video'
  $s.Save()
  Write-Host "Creato: $t"
}
