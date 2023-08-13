$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.10/tssh_0.1.10_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.10/tssh_0.1.10_windows_x86_64.zip'
$checksum32 = '23200a2b9ee8948eef100ea99c2e002f9494b26d9fabea9007e853a70ccb42bf'
$checksum64 = 'f43e18fa65eb3f1d5412d1facdbcaef44e28ad30bfdeadcaa23c3e5cbd1bf544'

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
