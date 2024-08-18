$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.8/trzsz_1.1.8_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.8/trzsz_1.1.8_windows_x86_64.zip'
$checksum32 = '3b87a6c154d367526461b0c4acd233833527d99366c63559624b5dd462267628'
$checksum64 = '1a20d36a77f1cc5957b80feef51d5e9f0dde6c305a29870ed0ef7967b82c3134'

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
