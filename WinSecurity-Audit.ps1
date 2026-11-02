# Windows Security Audit - Simple & Clean Script
# Run PowerShell as Administrator and execute this file

Write-Host "--- 1. BitLocker Drive Encryption Status ---"
Get-BitLockerVolume

Write-Host "`n--- 2. Windows Firewall Profiles Status ---"
Get-NetFirewallProfile | Select-Object Name, Enabled, DefaultInboundAction

Write-Host "`n--- 3. Windows Defender Status ---"
Get-MpComputerStatus | Select-Object RealTimeProtectionEnabled, AntivirusEnabled, AntivirusSignatureAge
