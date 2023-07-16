$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.4/trzsz_1.1.4_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-go/releases/download/v1.1.4/trzsz_1.1.4_windows_x86_64.zip'
$checksum32 = '8339ff1a2e349dcb046e35c60958269ebcf29ff66f7fad36a8ce8dfadc0546e9'
$checksum64 = '06d02ffc73293990ece79cea1d332c165d122cc2b2505454bb84d28c5202c1a4'

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
