$binDir = "bin"
$binaryName = "BKC Launcher"

$null = New-Item -ItemType Directory -Path $binDir -Force -ErrorAction SilentlyContinue

Write-Host "Building ${binaryName}..."
go build -o "$binDir/${binaryName}.exe"

if ($LASTEXITCODE -eq 0) {
    Write-Host "Build successful. Executable created at /$binDir/${binaryName}.exe"
} else {
    Write-Host "Build failed with errors."
    exit $LASTEXITCODE
}