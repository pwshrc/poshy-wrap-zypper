#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


if (-not (Test-Command zypper) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

#Main commands

function Invoke-Zypper {
    sudo zypper @args
}
Set-Alias -Name z -Value Invoke-Zypper
Export-ModuleMember -Function Invoke-Zypper -Alias z

function Invoke-ZypperHelp {
    zypper -h @args
}
Set-Alias -Name zh -Value Invoke-ZypperHelp
Export-ModuleMember -Function Invoke-ZypperHelp -Alias zh

function Invoke-ZypperHelpSearch {
    zypper -h se @args
}
Set-Alias -Name zhse -Value Invoke-ZypperHelpSearch
Export-ModuleMember -Function Invoke-ZypperHelpSearch -Alias zhse

function Invoke-ZypperLicenses {
    zypper licenses @args
}
Set-Alias -Name zlicenses -Value Invoke-ZypperLicenses
Export-ModuleMember -Function Invoke-ZypperLicenses -Alias zlicenses

function Invoke-ZypperListProcessesLockingPackages {
    sudo zypper ps @args
}
Set-Alias -Name zps -Value Invoke-ZypperListProcessesLockingPackages
Export-ModuleMember -Function Invoke-ZypperListProcessesLockingPackages -Alias zps

function Invoke-ZypperShell {
    sudo zypper shell @args
}
Set-Alias -Name zshell -Value Invoke-ZypperShell
Export-ModuleMember -Function Invoke-ZypperShell -Alias zshell

function Invoke-ZypperSourceDownload {
    sudo zypper source-download @args
}
Set-Alias -Name zsource-download -Value Invoke-ZypperSourceDownload
Export-ModuleMember -Function Invoke-ZypperSourceDownload -Alias zsource-download

function Invoke-ZypperTargetOS {
    zypper tos @args
}
Set-Alias -Name ztos -Value Invoke-ZypperTargetOS
Export-ModuleMember -Function Invoke-ZypperTargetOS -Alias ztos

function Invoke-ZypperVersionCompare {
    zypper vcmp @args
}
Set-Alias -Name zvcmp -Value Invoke-ZypperVersionCompare
Export-ModuleMember -Function Invoke-ZypperVersionCompare -Alias zvcmp


#Packages commands

function Invoke-ZypperIn {
    sudo zypper in @args
}
Set-Alias -Name zin -Value Invoke-ZypperIn
Export-ModuleMember -Function Invoke-ZypperIn -Alias zin

function Invoke-ZypperInstallNewRecommends {
    sudo zypper inr @args
}
Set-Alias -Name zinr -Value Invoke-ZypperInstallNewRecommends
Export-ModuleMember -Function Invoke-ZypperInstallNewRecommends -Alias zinr

function Invoke-ZypperRemove {
    sudo zypper rm @args
}
Set-Alias -Name zrm -Value Invoke-ZypperRemove
Export-ModuleMember -Function Invoke-ZypperRemove -Alias zrm

function Invoke-ZypperSourceInstall {
    sudo zypper si @args
}
Set-Alias -Name zsi -Value Invoke-ZypperSourceInstall
Export-ModuleMember -Function Invoke-ZypperSourceInstall -Alias zsi

function Invoke-ZypperVerify {
    sudo zypper ve @args
}
Set-Alias -Name zve -Value Invoke-ZypperVerify
Export-ModuleMember -Function Invoke-ZypperVerify -Alias zve


#Updates commands

function Invoke-ZypperDistUpgrade {
    sudo zypper dup @args
}
Set-Alias -Name zdup -Value Invoke-ZypperDistUpgrade
Export-ModuleMember -Function Invoke-ZypperDistUpgrade -Alias zdup

function Invoke-ZypperListPackages {
    zypper lp @args
}
Set-Alias -Name zlp -Value Invoke-ZypperListPackages
Export-ModuleMember -Function Invoke-ZypperListPackages -Alias zlp

function Invoke-ZypperListUpdates {
    zypper lu @args
}
Set-Alias -Name zlu -Value Invoke-ZypperListUpdates
Export-ModuleMember -Function Invoke-ZypperListUpdates -Alias zlu

function Invoke-ZypperPatchCheck {
    sudo zypper pchk @args
}
Set-Alias -Name zpchk -Value Invoke-ZypperPatchCheck
Export-ModuleMember -Function Invoke-ZypperPatchCheck -Alias zpchk

function Invoke-ZypperUpdate {
    sudo zypper up @args
}
Set-Alias -Name zup -Value Invoke-ZypperUpdate
Export-ModuleMember -Function Invoke-ZypperUpdate -Alias zup

function Invoke-ZypperPatch {
    sudo zypper patch @args
}
Set-Alias -Name zpatch -Value Invoke-ZypperPatch
Export-ModuleMember -Function Invoke-ZypperPatch -Alias zpatch


#Request commands

function Invoke-ZypperIf {
    zypper --no-refresh if @args
}
Set-Alias -Name zif -Value Invoke-ZypperIf
Export-ModuleMember -Function Invoke-ZypperIf -Alias zif

function Invoke-ZypperPackages {
    zypper --no-refresh pa @args
}
Set-Alias -Name zpa -Value Invoke-ZypperPackages
Export-ModuleMember -Function Invoke-ZypperPackages -Alias zpa

function Invoke-ZypperPatchInfo {
    zypper --no-refresh patch-info @args
}
Set-Alias -Name zpatch-info -Value Invoke-ZypperPatchInfo
Export-ModuleMember -Function Invoke-ZypperPatchInfo -Alias zpatch-info

function Invoke-ZypperPatternInfo {
    zypper --no-refresh pattern-info @args
}
Set-Alias -Name zpattern-info -Value Invoke-ZypperPatternInfo
Export-ModuleMember -Function Invoke-ZypperPatternInfo -Alias zpattern-info

function Invoke-ZypperProductInfo {
    zypper --no-refresh product-info @args
}
Set-Alias -Name zproduct-info -Value Invoke-ZypperProductInfo
Export-ModuleMember -Function Invoke-ZypperProductInfo -Alias zproduct-info

function Invoke-ZypperPatches {
    zypper --no-refresh pch @args
}
Set-Alias -Name zpch -Value Invoke-ZypperPatches
Export-ModuleMember -Function Invoke-ZypperPatches -Alias zpch

function Invoke-ZypperProducts {
    zypper --no-refresh pd @args
}
Set-Alias -Name zpd -Value Invoke-ZypperProducts
Export-ModuleMember -Function Invoke-ZypperProducts -Alias zpd

function Invoke-ZypperPatterns {
    zypper --no-refresh pt @args
}
Set-Alias -Name zpt -Value Invoke-ZypperPatterns
Export-ModuleMember -Function Invoke-ZypperPatterns -Alias zpt

function Invoke-ZypperSearch {
    zypper --no-refresh se @args
}
Set-Alias -Name zse -Value Invoke-ZypperSearch
Export-ModuleMember -Function Invoke-ZypperSearch -Alias zse

function Invoke-ZypperWhatProvides {
    zypper --no-refresh wp @args
}
Set-Alias -Name zwp -Value Invoke-ZypperWhatProvides
Export-ModuleMember -Function Invoke-ZypperWhatProvides -Alias zwp


#Repositories commands

function Invoke-ZypperAdRepo {
    sudo zypper ar @args
}
Set-Alias -Name zar -Value Invoke-ZypperAdRepo
Export-ModuleMember -Function Invoke-ZypperAdRepo -Alias zar

function Invoke-ZypperClean {
    sudo zypper clean @args
}
Set-Alias -Name zcl -Value Invoke-ZypperClean
Export-ModuleMember -Function Invoke-ZypperClean -Alias zcl

function Invoke-ZypperListRepos {
    zypper lr @args
}
Set-Alias -Name zlr -Value Invoke-ZypperListRepos
Export-ModuleMember -Function Invoke-ZypperListRepos -Alias zlr

function Invoke-ZypperModifyRepo {
    sudo zypper mr @args
}
Set-Alias -Name zmr -Value Invoke-ZypperModifyRepo
Export-ModuleMember -Function Invoke-ZypperModifyRepo -Alias zmr

function Invoke-ZypperRenameRepo {
    sudo zypper nr @args
}
Set-Alias -Name znr -Value Invoke-ZypperRenameRepo
Export-ModuleMember -Function Invoke-ZypperRenameRepo -Alias znr

function Invoke-ZypperRefresh {
    sudo zypper ref @args
}
Set-Alias -Name zref -Value Invoke-ZypperRefresh
Export-ModuleMember -Function Invoke-ZypperRefresh -Alias zref

function Invoke-ZypperRemoveRepo {
    sudo zypper rr @args
}
Set-Alias -Name zrr -Value Invoke-ZypperRemoveRepo
Export-ModuleMember -Function Invoke-ZypperRemoveRepo -Alias zrr


#Services commands

function Invoke-ZypperAddService {
    sudo zypper as @args
}
Set-Alias -Name zas -Value Invoke-ZypperAddService
Export-ModuleMember -Function Invoke-ZypperAddService -Alias zas

function Invoke-ZypperModifyService {
    sudo zypper ms @args
}
Set-Alias -Name zms -Value Invoke-ZypperModifyService
Export-ModuleMember -Function Invoke-ZypperModifyService -Alias zms

function Invoke-ZypperRefreshServices {
    sudo zypper refs @args
}
Set-Alias -Name zrefs -Value Invoke-ZypperRefreshServices
Export-ModuleMember -Function Invoke-ZypperRefreshServices -Alias zrefs

function Invoke-ZypperRemoveService {
    sudo zypper rs @args
}
Set-Alias -Name zrs -Value Invoke-ZypperRemoveService
Export-ModuleMember -Function Invoke-ZypperRemoveService -Alias zrs

function Invoke-ZypperListServices {
    zypper ls @args
}
Set-Alias -Name zls -Value Invoke-ZypperListServices
Export-ModuleMember -Function Invoke-ZypperListServices -Alias zls


#Package Locks Management commands

function Invoke-ZypperAddLock {
    sudo zypper al @args
}
Set-Alias -Name zal -Value Invoke-ZypperAddLock
Export-ModuleMember -Function Invoke-ZypperAddLock -Alias zal

function Invoke-ZypperCleanLocks {
    sudo zypper cl @args
}
Set-Alias -Name zcl -Value Invoke-ZypperCleanLocks
Export-ModuleMember -Function Invoke-ZypperCleanLocks -Alias zcl

function Invoke-ZypperListLocks {
    zypper ll @args
}
Set-Alias -Name zll -Value Invoke-ZypperListLocks
Export-ModuleMember -Function Invoke-ZypperListLocks -Alias zll

function Invoke-ZypperRemoveLock {
    sudo zypper rl @args
}
Set-Alias -Name zrl -Value Invoke-ZypperRemoveLock
Export-ModuleMember -Function Invoke-ZypperRemoveLock -Alias zrl
