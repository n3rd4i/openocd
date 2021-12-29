$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
. "$(Join-Path $toolsDir commonEnv.ps1)"

$url        = 'http://sysprogs.com/getfile/1748/openocd-20211118.7z'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'openocd*'
  checksum      = 'FE35FE59142E9AC209E3CD4C3CBDB0E8AD4350A121FA7E669D53AF379AF3570E'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyPath "$OPENOCD_BIN_PATH" -PathType 'Machine'
