$baseUrl = "https://bigtools.ahzastudio.web.id/"
$assets = @(
    "assets/images/favicon.ico",
    "assets/images/logo-ahza.png",
    "assets/img/logo.png",
    "assets/img/screenshot_demnas.png",
    "assets/img/icon_rbi.png",
    "assets/img/icon_demnas.png",
    "assets/img/icon_login.png",
    "assets/img/logo_qgis.svg",
    "assets/img/screenshot_rbi.png",
    "assets/img/screenshot_batnas.png",
    "assets/img/screenshot_demnas.png",
    "assets/img/screenshot_login.png",
    "assets/images/ESRI-ArcGIS-Pro-2.8.3-x64.png",
    "assets/img/screenshot_pro_login.png",
    "assets/img/screenshot_pro_demnas.png",
    "assets/img/screenshot_pro_rbi.png",
    "assets/img/screenshot_pro_batnas.png",
    "assets/images/arcmapICONfull.png",
    "assets/img/screenshot_arcmap.png",
    "assets/img/screenshot_arcmap_2.png",
    "assets/img/screenshot_arcmap_3.png"
)

$destBase = "g:\GIS\TEMP\BIG DOWNLOADER\BIGTools_Web\public"

foreach ($asset in $assets) {
    if ($asset -match "^assets/(.*)") {
        $relativePath = $matches[1]
        # Map folders to match Astro public structure better or keep original?
        # User wants same structure. The HTML uses 'assets/img' and 'assets/images'.
        # We will put them in public/assets/...
        
        $destFile = Join-Path $destBase $asset
        $destDir = Split-Path $destFile
        
        if (-not (Test-Path $destDir)) {
            New-Item -ItemType Directory -Force -Path $destDir | Out-Null
        }
        
        $url = $baseUrl + $asset
        Write-Host "Downloading $url to $destFile..."
        try {
            Invoke-WebRequest -Uri $url -OutFile $destFile
        } catch {
            Write-Error "Failed to download $url"
        }
    }
}
