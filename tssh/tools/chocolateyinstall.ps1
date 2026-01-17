$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.24/tssh_0.1.24_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.24/tssh_0.1.24_windows_x86_64.zip'
$checksum32 = '9ca9587a254a8f10f1919fbef32dbb99c3f79742eeb32f96307f697408190768'
$checksum64 = 'ed08ed2b7cb3c643b38e413d60e13c622a2829bb3f5b48c988259a1051bc4b2d'

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

Install-ChocolateyZipPackage @packageArgs
