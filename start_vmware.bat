sc config ufad-ws60 start= demand
sc config VMAuthdService start= demand
sc config VMnetDHCP start= demand
sc config "VMware NAT Service" start= demand
sc config VMUSBArbService start= demand
net start "VMware Bridge Protocol"
net start "VMware Network Application Interface"
net start "VMware vmx86"
net start "VMware hcmon"
net start "VMware vmci"
net start "Vstor2 WS60 Virtual Storage Driver"
net start VMUSBArbService
net start "VMware NAT Service"
net start VMnetDHCP
net start VMAuthdService
net start vmnetbridge
devcon.exe enable *VMnetAdapter1
devcon.exe enable *VMnetAdapter8
cd "C:\Program Files (x86)\VMware\VMware Workstation"
Start "" vmware.exe
pause
