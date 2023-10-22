$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.12/tssh_0.1.12_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.12/tssh_0.1.12_windows_x86_64.zip'
$checksum32 = '51956109e30d15a69613e026bf492104f1366784fb7e6888a53e52f946707096'
$checksum64 = '1cb3f58624141b8222be68d46904eb32a2ad393d02f1f7d45eebb4e88c2b1772'

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
