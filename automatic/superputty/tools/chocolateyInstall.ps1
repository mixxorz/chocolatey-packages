# generated vars
$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path $toolsDir -ChildPath "$packageName-$packageVersion" `
               | Join-Path -ChildPath "$packageName.exe"
Set-Content -Path ("$installFile.gui") `
            -Value $null