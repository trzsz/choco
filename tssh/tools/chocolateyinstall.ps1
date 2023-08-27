$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.11/tssh_0.1.11_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.11/tssh_0.1.11_windows_x86_64.zip'
$checksum32 = '5af2414d65866e5f435aa8df3fcc2b410884e97612627b6a0cba844dda81cc2d'
$checksum64 = '90d17f8dc378de4f07c69cd7431b859743fb61ba490d1702e7339084900e35b3'

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
