New-AzureRmResourceGroup -Name msiWindows -Location westus -Force

$deployment = New-AzureRmResourceGroupDeployment -ResourceGroupName msiWindows -TemplateUri https://raw.githubusercontent.com/rjmax/Ready2017/master/demo08.msiWindowsToKeyvault.json

$deployment

$deployment.Outputs.PowerShellCommandToGetKeyVaultToken.Value

