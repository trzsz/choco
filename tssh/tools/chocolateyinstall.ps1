$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url32      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.22/tssh_0.1.22_windows_i386.zip'
$url64      = 'https://github.com/trzsz/trzsz-ssh/releases/download/v0.1.22/tssh_0.1.22_windows_x86_64.zip'
$checksum32 = '94afb65a192ff2a2b72b590e7ed1c27f261741ba4764df0dc6c29713543afc66'
$checksum64 = 'c80109640cced9bec668a32a5de79d191dd3a551e44f1173798bef220f6d7321'

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
