New-AzureRmResourceGroup -Name if -Location westus -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName if -TemplateUri https://raw.githubusercontent.com/rjmax/Ready2017/master/demo06.if.json