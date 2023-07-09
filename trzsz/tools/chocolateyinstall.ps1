$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.3/trzsz_1.1.3_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.3/trzsz_1.1.3_windows_x86_64.zip'
$checksum32 = '0be8b713085100c394239804b05f4429965b2168d4674f848f3b234627c07840'
$checksum64 = '63a7ba350853b20c467c96b4c14ee16a15296f051be0737b4fef428ceeeaa397'

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
