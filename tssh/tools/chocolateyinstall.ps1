$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.15/tssh_0.1.15_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.15/tssh_0.1.15_windows_x86_64.zip'
$checksum32 = '519c1ae5e0f39d9184a1e7a6c445bf318cd4fdf819d570943e20ef389e4ce693'
$checksum64 = 'a8ce579c699084af18cc2d3ca467790d5ee81a897bcb64b97f7a1bd82c4ddccb'

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
