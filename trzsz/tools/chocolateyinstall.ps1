$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.7/trzsz_1.1.7_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.7/trzsz_1.1.7_windows_x86_64.zip'
$checksum32 = '840d854deaea74b4790f3ed32b74ee336da406de71b918cebedf23ad47c3973a'
$checksum64 = '7f7c2cc47d5c12e349e761d0694cded0323c4ae3f606d06651927bbd88e6fbcc'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url32
  url64bit      = $url64
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  specificFolder= 'trzsz_*'
}

Install-ChocolateyZipPackage @packageArgs
