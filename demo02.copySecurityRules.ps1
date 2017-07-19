New-AzureRmResourceGroup -Name copySecurityRules -Location westus -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName copySecurityRules -TemplateUri https://raw.githubusercontent.com/rjmax/Ready2017/master/demo02.copySecurityRules.json