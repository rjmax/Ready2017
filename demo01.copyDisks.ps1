New-AzureRmResourceGroup -Name copyDisks -Location westus -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName copyDisks -TemplateUri https://raw.githubusercontent.com/rjmax/Ready2017/master/demo01.copyDisks.json