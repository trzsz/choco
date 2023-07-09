$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.6/tssh_0.1.6_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.6/tssh_0.1.6_windows_x86_64.zip'
$checksum32 = 'a19691950a0914fab2dcc70ced4f1a5ac5a419365fe16d56271ada58ae7edbe3'
$checksum64 = '23b96d198a5850a428fcaa47e76f761fbcacb42d80ca6a1af224472196979b38'

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
