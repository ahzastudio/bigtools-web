import urllib2
import re
import os
import ssl

# Setup
url = "https://bigtools.ahzastudio.web.id/"
output_dir = r"g:\GIS\TEMP\BIG DOWNLOADER\BIGTools_Web\assets_dump"

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# Fetch HTML
try:
    context = ssl._create_unverified_context()
    response = urllib2.urlopen(url, context=context)
    html_content = response.read()
    
    # Save HTML for reference
    with open(os.path.join(output_dir, "index.html"), "wb") as f:
        f.write(html_content)
    
    print("HTML saved.")

    # Find Images and Links
    # This is a simple regex, might miss some complex cases but good for scraping static assets
    # Look for src="..." or href="..." ending in image extensions
    img_pattern = re.compile(r'(?:src|href)=["\']([^"\']+\.(?:png|jpg|jpeg|gif|svg|ico|zip))["\']', re.IGNORECASE)
    matches = img_pattern.findall(html_content)
    
    unique_assets = sorted(list(set(matches)))
    
    print("\nFound Assets:")
    for asset in unique_assets:
        print(asset)
        
        # Download logic
        if not asset.startswith('http'):
            # Relative path handling. 
            # The site seems to use relative paths like 'assets/img/...'
            # We need to construct full URL
            if asset.startswith('/'):
                asset_url = url.rstrip('/') + asset
            else:
                asset_url = url + asset
        else:
            asset_url = asset
            
        filename = os.path.basename(asset_url)
        # Handle query parameters in filename if any
        if '?' in filename:
            filename = filename.split('?')[0]
            
        save_path = os.path.join(output_dir, filename)
        
        try:
            print("Downloading " + asset_url + "...")
            asset_resp = urllib2.urlopen(asset_url, context=context)
            with open(save_path, "wb") as f_asset:
                f_asset.write(asset_resp.read())
        except Exception as e:
            print("Failed to download " + asset_url + ": " + str(e))

except Exception as e:
    print("Error: " + str(e))
