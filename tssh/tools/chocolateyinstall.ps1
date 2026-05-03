$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.25/tssh_0.1.25_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.25/tssh_0.1.25_windows_x86_64.zip'
$checksum32 = '083f2cc660ae17ed3d44b72b6cdecfd9e73f9bbe5557ae4c6c3af1edbb825997'
$checksum64 = 'a1ac7631ed567c3fb8edd4c66114aa0620aaca525980a689d341ec78060f5a29'

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
