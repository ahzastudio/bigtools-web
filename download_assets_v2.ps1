$baseUrl = "https://bigtools.ahzastudio.web.id/"
$assets = @(
    "assets/images/favicon.ico",
    "assets/images/logo-ahza.png",
    "assets/images/ESRI-ArcGIS-Pro-2.8.3-x64.png",
    "assets/images/arcmapICONfull.png",
    "assets/img/logo.png",
    "assets/img/icon_rbi.png",
    "assets/img/icon_demnas.png",
    "assets/img/icon_login.png",
    "assets/img/logo_qgis.svg",
    "assets/img/screenshot_rbi.png",
    "assets/img/screenshot_batnas.png",
    "assets/img/screenshot_demnas.png",
    "assets/img/screenshot_login.png",
    "assets/img/screenshot_pro_login.png",
    "assets/img/screenshot_pro_demnas.png",
    "assets/img/screenshot_pro_rbi.png",
    "assets/img/screenshot_pro_batnas.png",
    "assets/img/screenshot_arcmap.png",
    "assets/img/screenshot_arcmap_2.png",
    "assets/img/screenshot_arcmap_3.png"
)

$destBase = "g:\GIS\TEMP\BIG DOWNLOADER\BIGTools_Web\public"

# Ensure directories exist
$dirs = @("assets/images", "assets/img", "assets/data")
foreach ($dir in $dirs) {
    $path = Join-Path $destBase $dir
    if (-not (Test-Path $path)) {
        New-Item -ItemType Directory -Force -Path $path | Out-Null
        Write-Host "Created directory: $path"
    }
}

foreach ($asset in $assets) {
    $url = $baseUrl + $asset
    # Correct backslashes for local path
    $localPath = $asset -replace "/", "\"
    $destFile = Join-Path $destBase $localPath
    
    Write-Host "Downloading $url to $destFile..."
    try {
        # Check if file exists, if so skip or overwrite? Let's overwrite to be sure
        Invoke-WebRequest -Uri $url -OutFile $destFile
    } catch {
        Write-Error "Failed to download $url : $_"
    }
}
