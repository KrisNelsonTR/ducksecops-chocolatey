$ErrorActionPreference = 'Stop';

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/cli/releases/download/v1.1174.0/snyk-win.exe'
  Checksum     = 'ffd39a54528a3fc53c4629191d9fbafa1579f64e0e0348c14a2b14df61865ed6'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs