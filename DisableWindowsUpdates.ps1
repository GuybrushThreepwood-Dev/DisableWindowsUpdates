# Disable Windows Updates - 2016 and upwards

New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\ -Name WindowsUpdate
New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ -Name AU
Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU -Name AUOptions -Value 1
Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU -Name NoAutoUpdate -Value 1
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" -Name AUOptions -Value 1