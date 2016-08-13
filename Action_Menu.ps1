function menu{
cls

"**********************************************"
echo "Select server to perform your task :"
echo ""
echo " 1.  Apps-101"
echo " 2.  APPS-102"
echo " 3.  APPS-103"
echo " 4.  APPFAB-101-PRD"
echo " 5.  APPFAB-102-PRD"
echo " 6.  APPFAB-103-PRD"
echo " 7.  BS-106-PRD"
echo " 8.  BS-107-PROD"
echo " 9.  BS-108-PRD"
echo " 10. BS-109-PRD"
echo " 11. LIL-101-PRD"
echo " 12. LIL-102-PRD"

echo " 13.  Exit"

$option = Read-Host "Please select number only to perform your task :"
cls

if ($option -eq 1){
    echo ""
    echo "1. Restart CoppereggMonitorProd Service"
    echo "2. Restart Sensi.MetricsProcessorprod Service"
    echo "3. Restart Alerts.AlertProcessorProd Service"
    echo "4. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Get-Service CopperEggMonitorProd -ComputerName APPS-101}
    elseif ($result1 -eq 2){Get-Service Sensi.MetricsProcessorprod -ComputerName APPS-101}
    elseif ($result1 -eq 3){Get-Service Alerts.AlertProcessorProd -ComputerName APPS-101}
    elseif ($result1 -eq 4){.\Action_Menu.ps1}
    
    }
elseif ($option -eq 2){
    echo ""
    echo "1. Restart CoppereggMonitorStage Service"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Get-Service CopperEggMonitorStage -ComputerName APPS-102}
    elseif ($result1 -eq 2){.\Action_Menu.ps1}
    
    }

elseif ($option -eq 3){
    echo ""
    echo " 1. Alerts.AlertGeneratorProd"
    echo " 2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Get-Service Alerts.AlertGeneratorProd -ComputerName APPS-103}
    elseif ($result1 -eq 2){.\Action_Menu.ps1}
       
    }
    elseif ($option -eq 4){
    echo ""
    echo " 1. Restart AppFabricCachingService Service"
    echo " 2. Restart RemoteRegistry Service"
    echo " 3. Back to main menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Get-Service AppFabricCachingService -ComputerName APPFAB-101-PRD}
    elseif ($result1 -eq 2){Get-Service RemoteRegistry -ComputerName APPFAB-101-PRD}
    elseif ($result1 -eq 3){.\Action_Menu.ps1}
    Get-Service AppFabricCachingService,RemoteRegistry
    }
    elseif ($option -eq 5){
    echo ""
    echo " 1. Restart AppFabricCachingService Service"
    echo " 2. Restart RemoteRegistry Service"
    echo " 3. Back to main menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Get-Service AppFabricCachingService -ComputerName APPFAB-102-PRD}
    elseif ($result1 -eq 2){Get-Service RemoteRegistry -ComputerName APPFAB-102-PRD}
    elseif ($result1 -eq 3){.\Action_Menu.ps1}
    Get-Service AppFabricCachingService,RemoteRegistry
    }
    elseif ($option -eq 6){
    echo ""
    
    echo " 1. Restart AppFabricCachingService Service"
    echo " 2. Restart RemoteRegistry Service"
    echo " 3. Back to main menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Get-Service AppFabricCachingService -ComputerName APPFAB-103-PRD}
    elseif ($result1 -eq 2){Get-Service RemoteRegistry -ComputerName APPFAB-103-PRD}
    elseif ($result1 -eq 3){.\Action_Menu.ps1}
    Get-Service AppFabricCachingService,RemoteRegistry
    }
    elseif ($option -eq 7){
    echo ""
    echo "1. Recycle BusinessServices App Pool"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Invoke-Command -ComputerName BS-106-prd -ScriptBlock {Restart-WebAppPool -Name "BusinessServicesAppPool"}}
    elseif ($result1 -eq 2){.\Action_Menu.ps1}
    }
    elseif ($option -eq 8){

    echo ""
    echo "1. Recycle BusinessServicesAppPool"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Invoke-Command -ComputerName BS-107-prod -ScriptBlock {Restart-WebAppPool -Name "BusinessServices"}}
    elseif ($result1 -eq 2){.\Action_Menu.ps1}
    }
    elseif ($option -eq 9){

    echo ""
    echo "1. Recycle BusinessServicesAppPool"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Invoke-Command -ComputerName BS-108-prd -ScriptBlock {Restart-WebAppPool -Name "BusinessServicesAppPool"}}
    elseif ($result1 -eq 2){.\Action_Menu.ps1}
    }
    elseif ($option -eq 10){

    echo ""
    echo "1. Recycle BusinessServicesAppPool"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Invoke-Command -ComputerName BS-109-prd -ScriptBlock {Restart-WebAppPool -Name "BusinessServicesAppPool"}}
    elseif ($result1 -eq 2){.\Action_Menu.ps1}
    }
    elseif ($option -eq 11){

    echo ""
    echo "1. Recycle PartnerServicesAppPool"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Invoke-Command -ComputerName LIL-101-PRD -ScriptBlock {Restart-WebAppPool -Name "PartnerServicesAppPool"}}
    elseif ($result1 -eq 2){.\Action_Menu.ps1}
    }
    elseif ($option -eq 12){

    echo ""
    echo "1. Recycle PartnerServicesAppPool"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Invoke-Command -ComputerName LIL-102-PRD -ScriptBlock {Restart-WebAppPool -Name "PartnerServicesAppPool"}}
    elseif ($result1 -eq 2){.\Action_Menu.ps1}
    }
    elseif ($option -eq 13){Exit}
echo ""

}
cls
menu
