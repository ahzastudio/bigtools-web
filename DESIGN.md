# DESIGN.md - BIG Downloader Toolbox

## Identity & Direction
- **Product:** BIG Downloader Toolbox (`v4.0.8`) by Ahza Studio. Desktop GIS toolbox & plugin for QGIS (3.22-4.x), ArcGIS Pro, and ArcMap 10.x to batch download official Indonesian geospatial data (RBI, DEMNAS, BATNAS, Batas Wilayah, Peta Cetak RBI, ISO 19115-3 Metadata) from Badan Informasi Geospasial (BIG).
- **Audience:** Indonesian GIS engineers, cartographers, urban/regional planners, hydrographers, and spatial researchers.
- **Visual Language:** Cartographic Editorial (inspired by Indonesian topographic map sheets, contour hairlines, clean technical catalog grids, and hydrographic dark mode).
- **Dial:** `ENERGY 2 / RHYTHM 3 / MOTION 1`
  - **ENERGY 2:** Crisp editorial authority with clear hierarchy and restrained topographic green accent.
  - **RHYTHM 3:** Deliberate structural variation across sections (asymmetric split hero, sticky-intro 2-column numbered tool catalog, horizontal 4-step workflow band, interactive tabbed screenshot inspector, grouped download center).
  - **MOTION 1:** Subtle hover, press, tab switch, and modal transitions only. Zero endless loops, bounces, or pulses.

## Color System (WCAG AA Verified)
### Light Mode (Default - Cartographic Paper)
- Canvas: `#F6F4EE` (warm topographic sheet stock, harmonizes with light native GIS desktop screenshots)
- Surface: `#FFFFFF`
- Subtle surface: `#ECE9DF`
- Primary ink: `#13222A` (14.80:1 on canvas)
- Secondary ink: `#42535D` (7.27:1 on canvas, 7.99:1 on surface)
- Muted ink: `#5B6D78` (4.89:1 on canvas)
- Primary accent (Topographic Green): `#0B6E5C` (5.62:1 on canvas; white text on accent = 6.18:1)
- Secondary accent (Hydrographic Blue): `#10557A` (7.34:1 on canvas)
- Structural border: `#D6D1C4` | Interactive control border: `#6A7D85` (3.91:1 on canvas)

### Dark Mode (Hydrographic Obsidian)
- Canvas: `#0D161A`
- Surface: `#132026`
- Subtle surface: `#1B2B33`
- Primary ink: `#F1F5F4` (16.66:1 on canvas)
- Secondary ink: `#A8BAC2` (9.13:1 on canvas, 8.29:1 on surface)
- Muted ink: `#7D929D` (5.13:1 on surface)
- Primary accent: `#45C7A8` (8.71:1 on canvas; `#0A1417` text on accent = 8.88:1)
- Secondary accent: `#5BB7E0` (8.10:1 on canvas)
- Structural border: `#243842` | Interactive control border: `#5E7883` (3.56:1 on surface)

## Typography
- **Display / Headings:** `Plus Jakarta Sans` (600, 700, 800) - crisp geometric character with strong legibility for Indonesian technical headlines.
- **Body / UI:** `IBM Plex Sans` (400, 500, 600) - engineered for technical tools, documentation, and dense GIS workflows.
- **Technical Metadata / Code:** `IBM Plex Mono` (400, 500) - reserved strictly for real technical literals (`v4.0.8`, `EPSG:4326`, `1:25.000`, `NAMOBJ`, `WADMPR`, REST endpoints), never large decorative headings.

## Identity Motif & Component Rules
- Subtle vector topographic contour lines in the hero visual canvas (low-contrast architectural motif, not a full-page blueprint grid or glow orb).
- Consistent 1.75px stroke geometric SVG cartographic icons across the catalog and guides.
- Radius system: `rounded-md` (6px) for technical tags/inputs/buttons, `rounded-xl` (12px) for showcase frames and main containers. No universal pill shapes.
- Elevation shadow reserved selectively for the hero product showcase frame and active dialog/dropdown panels (dose cap <= 2 on-page focal surfaces).
