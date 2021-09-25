net stop VMUSBArbService
net stop "VMware NAT Service"
net stop VMnetDHCP
net stop VMAuthdService
net stop vmnetbridge
net stop "VMware Bridge Protocol"
net stop "VMware Network Application Interface"
net stop "VMware vmx86"
net stop "VMware hcmon"
net stop "VMware vmci"
net stop "Vstor2 WS60 Virtual Storage Driver"
sc config ufad-ws60 start= disabled
sc config VMAuthdService start= disabled
sc config VMnetDHCP start= disabled
sc config "VMware NAT Service" start= disabled
sc config VMUSBArbService start= disabled
devcon.exe disable *VMnetAdapter1
devcon.exe disable *VMnetAdapter8
taskkill /F /IM "vmware-tray.exe"
taskkill /F /IM "vmware.exe"
pause
