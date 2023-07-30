$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.5/trzsz_1.1.5_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.5/trzsz_1.1.5_windows_x86_64.zip'
$checksum32 = '3c502aebc71f85f2c5d31a188f418d9a474339236d844b20ca31b336ec5f21fe'
$checksum64 = '4c89cdc1a24ab3c474638d4aecc97b8daf04803e561b35d4d6747f750811fc63'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url32
  url64bit      = $url64
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  specificFolder= 'trzsz_*'
}

Install-ChocolateyZipPackage @packageArgs
