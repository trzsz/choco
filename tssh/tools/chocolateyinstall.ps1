$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.7/tssh_0.1.7_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.7/tssh_0.1.7_windows_x86_64.zip'
$checksum32 = '4da1d771a766b6a4bea877626665ba7d529560d10e5c22c5c53ec785726f167e'
$checksum64 = '765e7d5fac2720f4b072fd0d9c22dfcdae4ced8918a189ab1c5d6e58cb500b34'

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
