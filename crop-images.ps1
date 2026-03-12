Add-Type -AssemblyName System.Drawing

$assetsPath = "C:\Users\LZ\.openclaw\workspace\lezao-teacher-training\assets"
$outputPath = "C:\Users\LZ\.openclaw\workspace\lezao-teacher-training\assets\cropped"

# Create output folder
if (!(Test-Path $outputPath)) {
    New-Item -ItemType Directory -Path $outputPath -Force
}

# Get all PNG files
$files = Get-ChildItem -Path $assetsPath -Filter "*.png"

foreach ($file in $files) {
    Write-Host "Processing: $($file.Name)"
    
    # Load image
    $img = [System.Drawing.Image]::FromFile($file.FullName)
    
    # Calculate crop area - keep center 70% (remove white borders)
    $width = $img.Width
    $height = $img.Height
    $cropWidth = [int]($width * 0.7)
    $cropHeight = [int]($height * 0.7)
    $x = [int](($width - $cropWidth) / 2)
    $y = [int](($height - $cropHeight) / 2)
    
    # Create bitmap
    $bitmap = New-Object System.Drawing.Bitmap($cropWidth, $cropHeight)
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $graphics.DrawImage($img, 0, 0, [System.Drawing.Rectangle]::new($x, $y, $cropWidth, $cropHeight), [System.Drawing.GraphicsUnit]::Pixel)
    
    # Save
    $outputFile = Join-Path $outputPath $file.Name
    $bitmap.Save($outputFile, [System.Drawing.Imaging.ImageFormat]::Png)
    
    Write-Host "  Saved: $outputFile (Cropped: ${cropWidth}x${cropHeight})"
    
    # Cleanup
    $graphics.Dispose()
    $bitmap.Dispose()
    $img.Dispose()
}

Write-Host "`nDone! Cropped images saved to: $outputPath"
