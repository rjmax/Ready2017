	$MgmtRg = New-AzureRmResourceGroup -Name ryjonesmymgmtrg -Location westus -Verbose
	$WorkloadRg = New-AzureRmResourceGroup -Name ryjonesmyworkloadrg -Location westus -Verbose

	$OMSWorkspaceName = 'ryjonesWorkspace'
	$OMSWorkspaceRegion = 'East US'
	$OMSRecoveryVaultName = 'ryjonesWorkspace'
	$OMSRecoveryVaultRegion = 'West US'
	$OMSAutomationName = 'ryjonesAutomation'
	$OMSAutomationRegion = 'East US 2'
	$azureAdmin = 'yourUser@domain.com'
	$Platform = 'Windows'
	$userName = 'azureadmin'
	$vmNameSuffix = 'myvmwl'
	$instanceCount = '2'
	$DSCJobGuid = (New-Guid)
	$DSCJobGuid2 = (New-Guid)
	$DSCJobGuid3 = (New-Guid)

New-AzureRmResourceGroupDeployment -Name ryjonesDemo `
	                                   -ResourceGroupName $MgmtRg.ResourceGroupName `
	                                   -TemplateUri 'https://raw.githubusercontent.com/krnese/ExpertsLive17/master/01-keynote/1-setup/azuredeploy.json' `
	                                   -vmResourceGroup $WorkloadRg.ResourceGroupName `
	                                   -omsRecoveryVaultName $OMSRecoveryVaultName `
	                                   -omsRecoveryVaultRegion $OMSRecoveryVaultRegion `
	                                   -omsWorkspaceName $OMSWorkspaceName `
	                                   -omsWorkspaceRegion $OMSWorkspaceRegion `
	                                   -omsAutomationAccountName $OMSAutomationName `
	                                   -omsAutomationRegion $OMSAutomationRegion `
	                                   -vmNameSuffix $vmNameSuffix `
	                                   -userName $userName `
	                                   -platform $platform `
	                                   -instanceCount $instanceCount `
	                                   -azureAdmin $azureAdmin `
	                                   -DSCJobGuid $DSCJobGuid `
	                                   -DSCJobGuid2 $DSCJobGuid2 `
	                                   -DSCJobGuid3 $DSCJobGuid3 `
	                                   -verbose