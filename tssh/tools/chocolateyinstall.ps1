$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.17/tssh_0.1.17_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.17/tssh_0.1.17_windows_x86_64.zip'
$checksum32 = 'cdb5b47bc36ec70cf1b147f76da10b34334e92e590d463552e39ab01c2d2e84b'
$checksum64 = 'b5c4ddf727cd92d1943da8bf2d4af9c1126a93381e4a2813caa0fb94b93a0e09'

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
