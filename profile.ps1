if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadline
    #Get-Help about_PSReadline
    Set-PSReadlineKeyHandler -Key Ctrl+w -Function BackwardKillWord
}

Update-TypeData C:\Users\smandava\Documents\WindowsPowerShell\TypeData\System.Diagnostics.Process.ps1xml

$env:PsModulePath="$($env:PsModulePath);c:\tools\PsModule\Modules"

Set-Alias -Name git -Value C:\Users\smandava\AppData\Local\GitHub\PortableGit_054f2e797ebafd44a30203088cd3d58663c627ef\bin\git.exe
