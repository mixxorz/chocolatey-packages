$packageName = 'dolphin'
$url = 'http://dl.dolphin-emu.org/builds/dolphin-master-4.0-7209-x64.7z'
$checksum = '1923059e67e00e2dc7abd4c88090755d1b32aad5'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"