New-AzureRmResourceGroup -Name ifyes -Location eastus2euap -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName ifyes -TemplateUri https://raw.githubusercontent.com/rjmax/Ready2017/master/demo06.if.json 

New-AzureRmResourceGroup -Name ifno -Location eastus2euap -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName ifno -TemplateUri https://raw.githubusercontent.com/rjmax/Ready2017/master/demo06.if.json 