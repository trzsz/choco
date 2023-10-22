$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.6/trzsz_1.1.6_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.6/trzsz_1.1.6_windows_x86_64.zip'
$checksum32 = '69ce3b286ed3ff6e2aebd8939c88125f0d7de9bb5ec321b8cbdd9158d3328a43'
$checksum64 = '5fe14520f4d5914c59b1368d38ba875e314abacae229b489555b1045dd4bdea9'

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
