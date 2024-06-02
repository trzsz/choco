$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.20/tssh_0.1.20_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.20/tssh_0.1.20_windows_x86_64.zip'
$checksum32 = 'de5b7130f9e50d6a0ed5e42a3d040c6233edf2a092d572623a56fe52762e008e'
$checksum64 = 'e99eadf7e923f1d467d7426ea9c4be05bb6d7814d6a7adc896d854b98087ea94'

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
