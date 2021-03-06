if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadline
    #Get-Help about_PSReadline
    Set-PSReadlineKeyHandler -Key Ctrl+w -Function BackwardKillWord
}

Update-TypeData "$(Split-Path $MyInvocation.MyCommand.Path -Parent)\TypeData\System.Diagnostics.Process.ps1xml"

$env:PsModulePath="$($env:PsModulePath);c:\tools\PsModule\Modules"

$gitPath = (gci -Recurse ~\AppData\Local\GitHub\PortableGit_*\bin\git.exe |select -First 1).DirectoryName
if ($gitPath) {
	$env:Path="$($env:Path);$gitPath"
}
