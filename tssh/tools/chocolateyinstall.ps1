$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.9/tssh_0.1.9_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.9/tssh_0.1.9_windows_x86_64.zip'
$checksum32 = 'b259a201efe97521523b56849234ae9d4c6a3065b3eff67cd80385b0cf86c6e1'
$checksum64 = '55594ca11a74802acfc1b379e2ed9124af32aede96ac9a3397ad6c128ba9fa72'

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
