. "$PSScriptRoot\Common.ps1"

$ResourceGroupPrefix = "ASF-"  # Resource group everything will be created in

CheckLoggedIn

Get-AzResourceGroup | Where-Object {$_.ResourceGroupName.StartsWith($ResourceGroupPrefix)} | % {
    #$_ | fl
    Write-Host "removing $($_.ResourceGroupName)..."
    Remove-AzResourceGroup -Name $_.ResourceGroupName -Force -Verbose
}



