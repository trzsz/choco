$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.21/tssh_0.1.21_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.21/tssh_0.1.21_windows_x86_64.zip'
$checksum32 = 'cd7d6097f4232fb600e9ff7108ec5ef8554816fc3ff225960e70381dc8674094'
$checksum64 = '1b0b14159150e63314ad486dbade5274719f0b545799727070bbf5f59b620fef'

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
