$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.2.0/trzsz_1.2.0_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.2.0/trzsz_1.2.0_windows_x86_64.zip'
$checksum32 = '00382942b74fae8d2d4bc6facaa4815d574ca33d1535abbb90287678e267c7e0'
$checksum64 = '0b46318a0fc7e39beaf97e6f07ab257f5b36fdffc3304118b6f72412dbbb52ca'

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
