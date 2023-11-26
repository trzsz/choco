$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.14/tssh_0.1.14_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.14/tssh_0.1.14_windows_x86_64.zip'
$checksum32 = 'a0e3607de8013793b57b2303664ac2d3422927d40162eb65cf19b43b8aa9c8c1'
$checksum64 = '10cac1b0a3249d3005911dbe416ea9e18feb0e0e1a8a595f7d5ab419ca27d74f'

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
