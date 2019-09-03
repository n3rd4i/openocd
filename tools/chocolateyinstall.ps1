$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
. "$(Join-Path $toolsDir commonEnv.ps1)"

$url        = 'http://sysprogs.com/getfile/587/openocd-20190828.7z'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'openocd*'
  checksum      = 'B2B155B34B336805AF835729D0CBA9A3997A33F61D2FA12BE573C8A3B783363C'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyPath "$OPENOCD_BIN_PATH" -PathType 'Machine'
