@echo off

netsh advfirewall set allprofiles state on

netsh advfirewall firewall add rule name="Block IP for Team1.1" dir=in interface=any action=block remoteip=10.2.1.10/32
netsh advfirewall firewall add rule name="Block IP for Team1.2" dir=in interface=any action=block remoteip=10.2.1.20/32
netsh advfirewall firewall add rule name="Block IP for Team1.3" dir=in interface=any action=block remoteip=10.2.1.30/32
netsh advfirewall firewall add rule name="Block IP for Team1.4" dir=in interface=any action=block remoteip=10.2.1.40/32
netsh advfirewall firewall add rule name="Block IP for Team1.5" dir=in interface=any action=block remoteip=10.2.1.50/32
netsh advfirewall firewall add rule name="Block IP for Team1.6" dir=in interface=any action=block remoteip=10.2.1.60/32
netsh advfirewall firewall add rule name="Block IP for Team1.7" dir=in interface=any action=block remoteip=10.3.1.10/32
netsh advfirewall firewall add rule name="Block IP for Team1.8" dir=in interface=any action=block remoteip=10.3.1.20/32

netsh advfirewall firewall add rule name="Block IP for Team2.1" dir=in interface=any action=block remoteip=10.2.2.10/32
netsh advfirewall firewall add rule name="Block IP for Team2.2" dir=in interface=any action=block remoteip=10.2.2.20/32
netsh advfirewall firewall add rule name="Block IP for Team2.3" dir=in interface=any action=block remoteip=10.2.2.30/32
netsh advfirewall firewall add rule name="Block IP for Team2.4" dir=in interface=any action=block remoteip=10.2.2.40/32
netsh advfirewall firewall add rule name="Block IP for Team2.5" dir=in interface=any action=block remoteip=10.2.2.50/32
netsh advfirewall firewall add rule name="Block IP for Team2.6" dir=in interface=any action=block remoteip=10.2.2.60/32
netsh advfirewall firewall add rule name="Block IP for Team2.7" dir=in interface=any action=block remoteip=10.3.2.10/32
netsh advfirewall firewall add rule name="Block IP for Team2.8" dir=in interface=any action=block remoteip=10.3.2.20/32

netsh advfirewall firewall add rule name="Block IP for Team3.1" dir=in interface=any action=block remoteip=10.2.3.10/32
netsh advfirewall firewall add rule name="Block IP for Team3.2" dir=in interface=any action=block remoteip=10.2.3.20/32
netsh advfirewall firewall add rule name="Block IP for Team3.3" dir=in interface=any action=block remoteip=10.2.3.30/32
netsh advfirewall firewall add rule name="Block IP for Team3.4" dir=in interface=any action=block remoteip=10.2.3.40/32
netsh advfirewall firewall add rule name="Block IP for Team3.5" dir=in interface=any action=block remoteip=10.2.3.50/32
netsh advfirewall firewall add rule name="Block IP for Team3.6" dir=in interface=any action=block remoteip=10.2.3.60/32
netsh advfirewall firewall add rule name="Block IP for Team3.7" dir=in interface=any action=block remoteip=10.3.3.10/32
netsh advfirewall firewall add rule name="Block IP for Team3.8" dir=in interface=any action=block remoteip=10.3.3.20/32

netsh advfirewall firewall add rule name="Block IP for Team5.1" dir=in interface=any action=block remoteip=10.2.5.10/32
netsh advfirewall firewall add rule name="Block IP for Team5.2" dir=in interface=any action=block remoteip=10.2.5.20/32
netsh advfirewall firewall add rule name="Block IP for Team5.3" dir=in interface=any action=block remoteip=10.2.5.30/32
netsh advfirewall firewall add rule name="Block IP for Team5.4" dir=in interface=any action=block remoteip=10.2.5.40/32
netsh advfirewall firewall add rule name="Block IP for Team5.5" dir=in interface=any action=block remoteip=10.2.5.50/32
netsh advfirewall firewall add rule name="Block IP for Team5.6" dir=in interface=any action=block remoteip=10.2.5.60/32
netsh advfirewall firewall add rule name="Block IP for Team5.7" dir=in interface=any action=block remoteip=10.3.5.10/32
netsh advfirewall firewall add rule name="Block IP for Team5.8" dir=in interface=any action=block remoteip=10.3.5.20/32

netsh advfirewall firewall add rule name="Block IP for Team6.1" dir=in interface=any action=block remoteip=10.2.6.10/32
netsh advfirewall firewall add rule name="Block IP for Team6.2" dir=in interface=any action=block remoteip=10.2.6.20/32
netsh advfirewall firewall add rule name="Block IP for Team6.3" dir=in interface=any action=block remoteip=10.2.6.30/32
netsh advfirewall firewall add rule name="Block IP for Team6.4" dir=in interface=any action=block remoteip=10.2.6.40/32
netsh advfirewall firewall add rule name="Block IP for Team6.5" dir=in interface=any action=block remoteip=10.2.6.50/32
netsh advfirewall firewall add rule name="Block IP for Team6.6" dir=in interface=any action=block remoteip=10.2.6.60/32
netsh advfirewall firewall add rule name="Block IP for Team6.7" dir=in interface=any action=block remoteip=10.3.6.10/32
netsh advfirewall firewall add rule name="Block IP for Team6.8" dir=in interface=any action=block remoteip=10.3.6.20/32

netsh advfirewall firewall add rule name="Block IP for Team7.1" dir=in interface=any action=block remoteip=10.2.7.10/32
netsh advfirewall firewall add rule name="Block IP for Team7.2" dir=in interface=any action=block remoteip=10.2.7.20/32
netsh advfirewall firewall add rule name="Block IP for Team7.3" dir=in interface=any action=block remoteip=10.2.7.30/32
netsh advfirewall firewall add rule name="Block IP for Team7.4" dir=in interface=any action=block remoteip=10.2.7.40/32
netsh advfirewall firewall add rule name="Block IP for Team7.5" dir=in interface=any action=block remoteip=10.2.7.50/32
netsh advfirewall firewall add rule name="Block IP for Team7.6" dir=in interface=any action=block remoteip=10.2.7.60/32
netsh advfirewall firewall add rule name="Block IP for Team7.7" dir=in interface=any action=block remoteip=10.3.7.10/32
netsh advfirewall firewall add rule name="Block IP for Team7.8" dir=in interface=any action=block remoteip=10.3.7.20/32

netsh advfirewall firewall add rule name="Block IP for Team8.1" dir=in interface=any action=block remoteip=10.2.8.10/32
netsh advfirewall firewall add rule name="Block IP for Team8.2" dir=in interface=any action=block remoteip=10.2.8.20/32
netsh advfirewall firewall add rule name="Block IP for Team8.3" dir=in interface=any action=block remoteip=10.2.8.30/32
netsh advfirewall firewall add rule name="Block IP for Team8.4" dir=in interface=any action=block remoteip=10.2.8.40/32
netsh advfirewall firewall add rule name="Block IP for Team8.5" dir=in interface=any action=block remoteip=10.2.8.50/32
netsh advfirewall firewall add rule name="Block IP for Team8.6" dir=in interface=any action=block remoteip=10.2.8.60/32
netsh advfirewall firewall add rule name="Block IP for Team8.7" dir=in interface=any action=block remoteip=10.3.8.10/32
netsh advfirewall firewall add rule name="Block IP for Team8.8" dir=in interface=any action=block remoteip=10.3.8.20/32

netsh advfirewall firewall add rule name="Block IP for Team9.1" dir=in interface=any action=block remoteip=10.2.9.10/32
netsh advfirewall firewall add rule name="Block IP for Team9.2" dir=in interface=any action=block remoteip=10.2.9.20/32
netsh advfirewall firewall add rule name="Block IP for Team9.3" dir=in interface=any action=block remoteip=10.2.9.30/32
netsh advfirewall firewall add rule name="Block IP for Team9.4" dir=in interface=any action=block remoteip=10.2.9.40/32
netsh advfirewall firewall add rule name="Block IP for Team9.5" dir=in interface=any action=block remoteip=10.2.9.50/32
netsh advfirewall firewall add rule name="Block IP for Team9.6" dir=in interface=any action=block remoteip=10.2.9.60/32
netsh advfirewall firewall add rule name="Block IP for Team9.7" dir=in interface=any action=block remoteip=10.3.9.10/32
netsh advfirewall firewall add rule name="Block IP for Team9.8" dir=in interface=any action=block remoteip=10.3.9.20/32

netsh advfirewall firewall add rule name="Block IP for Team10.1" dir=in interface=any action=block remoteip=10.2.10.10/32
netsh advfirewall firewall add rule name="Block IP for Team10.2" dir=in interface=any action=block remoteip=10.2.10.20/32
netsh advfirewall firewall add rule name="Block IP for Team10.3" dir=in interface=any action=block remoteip=10.2.10.30/32
netsh advfirewall firewall add rule name="Block IP for Team10.4" dir=in interface=any action=block remoteip=10.2.10.40/32
netsh advfirewall firewall add rule name="Block IP for Team10.5" dir=in interface=any action=block remoteip=10.2.10.50/32
netsh advfirewall firewall add rule name="Block IP for Team10.6" dir=in interface=any action=block remoteip=10.2.10.60/32
netsh advfirewall firewall add rule name="Block IP for Team10.7" dir=in interface=any action=block remoteip=10.3.10.10/32
netsh advfirewall firewall add rule name="Block IP for Team10.8" dir=in interface=any action=block remoteip=10.3.10.20/32

netsh advfirewall firewall add rule name="Block IP for Team11.1" dir=in interface=any action=block remoteip=10.2.11.10/32
netsh advfirewall firewall add rule name="Block IP for Team11.2" dir=in interface=any action=block remoteip=10.2.11.20/32
netsh advfirewall firewall add rule name="Block IP for Team11.3" dir=in interface=any action=block remoteip=10.2.11.30/32
netsh advfirewall firewall add rule name="Block IP for Team11.4" dir=in interface=any action=block remoteip=10.2.11.40/32
netsh advfirewall firewall add rule name="Block IP for Team11.5" dir=in interface=any action=block remoteip=10.2.11.50/32
netsh advfirewall firewall add rule name="Block IP for Team11.6" dir=in interface=any action=block remoteip=10.2.11.60/32
netsh advfirewall firewall add rule name="Block IP for Team11.7" dir=in interface=any action=block remoteip=10.3.11.10/32
netsh advfirewall firewall add rule name="Block IP for Team11.8" dir=in interface=any action=block remoteip=10.3.11.20/32

netsh advfirewall firewall add rule name="Block IP for Red Team" dir=in interface=any action=block remoteip=10.128.0.0/16

