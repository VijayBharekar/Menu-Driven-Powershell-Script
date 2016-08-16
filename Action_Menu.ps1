function menu{
cls

"**********************************************"
echo "Select server to perform your task :"
echo ""
echo " 1.  Server1"
echo " 2.  Server2"
echo " 3.  appool1"
echo " 4.  apppool2"
echo " 5.  Exit"

$option = Read-Host "Please select number only to perform your task :"
cls

if ($option -eq 1){
    echo ""
    echo "1. Restart Service"
    echo "2. Restart Service"
    echo "3. Restart Service"
    echo "4. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Get-Service <serviceName> -ComputerName <Computername>}
    elseif ($result1 -eq 2){Get-Service <serviceName> -ComputerName <Computername>}
    elseif ($result1 -eq 3){Get-Service <serviceName> -ComputerName <Computername>}
    elseif ($result1 -eq 4){.\<scriptname>.ps1}
    }
elseif ($option -eq 2){
    echo ""
    echo "1. Restart Service"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Get-Service <serviceName> -ComputerName <Computername>}
    elseif ($result1 -eq 2){.\<scriptname>.ps1}
    }
    elseif ($option -eq 3){
    echo ""
    echo "1. Recycle App Pool"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Invoke-Command -ComputerName <ComputerName> -ScriptBlock {Restart-WebAppPool -Name "<apppoolname>"}}
    elseif ($result1 -eq 2){.\<scriptname>.ps1}
    }
    elseif ($option -eq 4){
    echo ""
    echo "1. Recycle AppPool"
    echo "2. Back to main Menu"
    $result1=Read-Host "Select number only to perform task :"
    if ($result1 -eq 1){Invoke-Command -ComputerName <ComputerName> -ScriptBlock {Restart-WebAppPool -Name "<apppoolname>"}}
    elseif ($result1 -eq 2){.\<scriptname>.ps1}
    }
    elseif ($option -eq 13){Exit}
echo ""
}
cls
menu
