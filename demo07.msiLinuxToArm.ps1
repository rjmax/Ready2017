New-AzureRmResourceGroup -Name msiLinux -Location westus -Force

$deployment = New-AzureRmResourceGroupDeployment -ResourceGroupName msiLinux -TemplateUri https://raw.githubusercontent.com/rjmax/Ready2017/master/demo07.msiLinuxToArm.json

$deployment

$deployment.Outputs.commandToGetAToken.Value

