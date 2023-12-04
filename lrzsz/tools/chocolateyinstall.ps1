$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://github.com/trzsz/lrzsz-win32/releases/download/v0.12.21rc/lrzsz_0.12.21rc_windows_x86_64.zip'
$checksum64 = 'dace2db172b1b5a1e5998692760a75355b254e1826718d88bae7fa3a6de3c325'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
  specificFolder= 'lrzsz_*'
}

Install-ChocolateyZipPackage @packageArgs
