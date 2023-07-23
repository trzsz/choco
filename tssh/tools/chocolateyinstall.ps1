$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.8/tssh_0.1.8_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.8/tssh_0.1.8_windows_x86_64.zip'
$checksum32 = '9d7bb94d81d6658c99246819452a19c82e0a156b90fa35a94ff6dbf422d417cb'
$checksum64 = '72c0383ebd69cf20a26afeb7823f338d7a109b18f3a5944c79857ed1cc889148'

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
