$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.23/tssh_0.1.23_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.23/tssh_0.1.23_windows_x86_64.zip'
$checksum32 = '18dcd010f2b19b57d071233beb19de5176a58da5c699ce061fb63002d92ea3fd'
$checksum64 = '027254b08e62e21e109b99c003d8a75cd096f4c052d36f09fe29180f90f07c5a'

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
