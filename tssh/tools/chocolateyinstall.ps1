$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32       = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.26/tssh_0.1.26_windows_i386.zip'
$url64       = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.26/tssh_0.1.26_windows_x86_64.zip'
$urlARM      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.26/tssh_0.1.26_windows_aarch64.zip'
$checksum32  = 'd0c0e89070b4e9147f67d1fddfda2c6a6cbcff79627f177cc3afad02bd9f0da8'
$checksum64  = '15f788e31d08176028d179aa6c9ad0c89b995d6986ce280a50c66fd0c91397da'
$checksumARM = '2d32d89f41f1dc374e8ec3749c0f2a1634e0deec74bc296e38a16ca76978aabe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url32
  url64bit      = $url64
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  specificFolder= 'tssh_*'
}

# 0 = x86, 9 = x64, 12 = ARM64
$cpuArch = (Get-CimInstance Win32_Processor -ErrorAction SilentlyContinue | Select-Object -First 1).Architecture
$isArm64 = ($env:PROCESSOR_ARCHITECTURE -eq 'ARM64') -or ($env:PROCESSOR_ARCHITEW6432 -eq 'ARM64') -or ($cpuArch -eq 12)
if ($isArm64) {
  Write-Host "Detected ARM64 architecture, using ARM64 build"
  $packageArgs.url64bit = $urlARM
  $packageArgs.checksum64 = $checksumARM
}

Install-ChocolateyZipPackage @packageArgs
