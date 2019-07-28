$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://sysprogs.com/getfile/552/openocd-20190715.7z'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'openocd*'
  checksum      = 'FF4EC70CD3A4E771003EFB59CB071E4DF130B57F64E4269085E726AB706FF3B6'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyPath "$toolsDir\OpenOCD-20190715-0.10.0\bin" -PathType 'Machine'
