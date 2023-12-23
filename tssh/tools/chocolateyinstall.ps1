$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.16/tssh_0.1.16_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.16/tssh_0.1.16_windows_x86_64.zip'
$checksum32 = 'f8fb7667a249c9ca710b6ecacea5cbdf39b08ea2ef77e5b5d105bb0cffd60a78'
$checksum64 = 'e37990704223dc046b816e5330d9ffd95d6088b7d6fb24d6d5712aa8c2b8f554'

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
