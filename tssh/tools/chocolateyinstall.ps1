$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.18/tssh_0.1.18_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.18/tssh_0.1.18_windows_x86_64.zip'
$checksum32 = 'ae929cd6d1dacd6a5cc47a7e5e3c4d3b99477b2309dde122d5f7808d4deb7d87'
$checksum64 = '298b386c2fb944e264a0cd1694b823023bec61aaecf7a4da7c95600830b1054a'

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
