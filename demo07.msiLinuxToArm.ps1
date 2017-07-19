New-AzureRmResourceGroup -Name msiLinux -Location westus -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName msiLinux -TemplateUri https://raw.githubusercontent.com/rjmax/Ready2017/master/demo07.msiLinuxToArm.json