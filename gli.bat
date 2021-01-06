@echo off
call :sub > "%userprofile%\Desktop\%computername%-info-out.txt"
exit /b

:sub
echo # ------------------------------------------------------------------------ #
echo # System Architecture #
echo # ------------------------------------------------------------------------ #
echo.
echo # ------------------------------------------------------------------------ #
echo # ver	Displays the Windows version.
echo # ------------------------------------------------------------------------ #
@echo on
ver
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # systeminfo
echo # ------------------------------------------------------------------------ #
@echo on
systeminfo
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # systeminfo /S ComputerName /U username /P password	
echo # This tool displays operating system configuration information for a local 
echo # or remote machine, including service pack levels.
echo # ------------------------------------------------------------------------ #
echo. 
echo # ------------------------------------------------------------------------ #
echo # wmic os list brief	Installed Operating System/s management.
echo # ------------------------------------------------------------------------ #
@echo on
wmic /node:localhost os list brief | more
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # wmic /node:localhost product get name,version,installdate
echo # ------------------------------------------------------------------------ #
@echo on
wmic /node:localhost product get name,version,installdate | more
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # w32tm Time Status
echo # ------------------------------------------------------------------------ #
@echo on
w32tm /query /status
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # tasklist
echo # ------------------------------------------------------------------------ #
@echo on
tasklist
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # tasklist /M
echo # ------------------------------------------------------------------------ #
@echo on
tasklist /M
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # tasklist /V	displays a list of currently running processes on a local 
echo # machine.
echo # ------------------------------------------------------------------------ #
@echo on
tasklist /V
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # echo wmic process list brief	Process management.
echo # ------------------------------------------------------------------------ #
@echo on
wmic process list brief	| more
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # echo Retrieve AntiVirusProduct name
echo # ------------------------------------------------------------------------ #
@echo on
WMIC /Node:localhost /Namespace:\\root\SecurityCenter2 Path AntiVirusProduct get * /value | more
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # Users and Groups
echo # ------------------------------------------------------------------------ #
echo. 
echo # ------------------------------------------------------------------------ #
echo # whoami	Lists information about the user you are currently logged in as.
echo # ------------------------------------------------------------------------ #
@echo on
whoami
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net user	displays user account information.
echo # ------------------------------------------------------------------------ #
@echo on
net user
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net user /domain	Performs the operation on the domain controller in the 
echo # computer's primary domain.
echo # ------------------------------------------------------------------------ #
@echo on
net user /domain
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net localgroup administrators	displays the local administrators group 
echo # on the computer.
echo # ------------------------------------------------------------------------ #
@echo on
net localgroup administrators
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net localgroup administrators /domain	displays the local administrators 
echo # group on current domain controller.
echo # ------------------------------------------------------------------------ #
@echo on
net localgroup administrators /domain
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net group /domain	Display groups and performs the operation on the 
echo # domain controller in the current domain.
echo # ------------------------------------------------------------------------ #
@echo on
net group /domain
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net group "Domain Admins" /domain	Query users from domain admins in 
echo # current domain.
echo # ------------------------------------------------------------------------ #
@echo on
net group "Domain Admins" /domain
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # net group "Domain Computers" /domain	Query all domain computers in current 
echo # domain.
echo # ------------------------------------------------------------------------ #
@echo on
net group "Domain Computers" /domain
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net group "Domain Controllers" /domain	Query Domain Comtrollers Computers.
echo # ------------------------------------------------------------------------ #
@echo on
net group "Domain Controllers" /domain
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net group "Domain Policy Creator Owners" /domain	Query Domain Policy 
echo # Creators.
echo # ------------------------------------------------------------------------ #
@echo on
net group "Domain Policy Creator Owners" /domain
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # net accounts /domain	Updates the user accounts database and modifies 
echo # password and logon requirements for all accounts. Performs the operation 
echo # on the primary domain controller of the current domain.
echo # ------------------------------------------------------------------------ #
@echo on
net accounts /domain
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # Services
echo # ------------------------------------------------------------------------ #
echo. 
echo # ------------------------------------------------------------------------ #
echo # wmic service get name,startname,status,started
echo # ------------------------------------------------------------------------ #
@echo on
wmic service get name,startname,status,started | more
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # WMIC /node:localhost PATH Win32_Service GET DisplayName,Name,State
echo # ------------------------------------------------------------------------ #
@echo on
wmic /node:localhost PATH Win32_Service GET DisplayName,Name,State | more
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # Security
echo # ------------------------------------------------------------------------ #
echo. 
echo # ------------------------------------------------------------------------ #
echo # wmic qfe get hotfixid	Information about patches installed on the windows
echo # ------------------------------------------------------------------------ #
@echo on
wmic /node:localhost qfe get description,hotfixid,installedon | more
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # NETSH FIREWALL show all	Show Allowed programs configuration for Domain/Standard profile.
echo # ------------------------------------------------------------------------ #
@echo on
netsh firewall show all
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # netsh firewall show state
echo # ------------------------------------------------------------------------ #
@echo on
netsh firewall show state
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # netsh advfirewall firewall show rule all - New Format if previous command
echo # has been deprecated. Direction inbound
echo # ------------------------------------------------------------------------ #
@echo on
netsh advfirewall firewall show rule name=all dir=in
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # netsh advfirewall firewall show rule all - New Format if previous command
echo # has been deprecated. Direction outbound
echo # ------------------------------------------------------------------------ #
@echo on
netsh advfirewall firewall show rule name=all dir=out
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # netsh advfirewall show global
echo # ------------------------------------------------------------------------ #
@echo on
netsh advfirewall show global
@echo off
echo # ------------------------------------------------------------------------ #
echo # Networking
echo # ------------------------------------------------------------------------ #
echo. 
echo # ------------------------------------------------------------------------ #
echo # ipconfig /all	Displays the full TCP/IP configuration for all adapters.
echo # ------------------------------------------------------------------------ #
@echo on
ipconfig /all
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # ipconfig /displaydns	Displays the contents of the DNS client resolver 
echo # cache, which includes both entries preloaded from the local Hosts file and
echo #  any recently obtained resource records for name queries resolved by the 
echo # computer. The DNS Client service uses this information to resolve 
echo # frequently queried names quickly, before querying its configured DNS servers.
echo # ------------------------------------------------------------------------ #
@echo on
ipconfig /displaydns
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # netstat -ano	Displays active TCP connections and includes the process ID 
echo # (PID) for each connection
echo # ------------------------------------------------------------------------ #
@echo on
netstat -ano
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # netstat -ano -p tcp	Show tcp connections.
echo # ------------------------------------------------------------------------ #
@echo on
netstat -ano -p tcp	
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # netstat -ano -p udp	Show udp connections
echo # ------------------------------------------------------------------------ #
@echo on
netstat -ano -p 
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # netstat -r	Displays the system's routing table.
echo # ------------------------------------------------------------------------ #
@echo on
netstat -r
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # route print	Displays the system's routing table
echo # ------------------------------------------------------------------------ #
@echo on
route print
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # File Systems
echo # ------------------------------------------------------------------------ #
echo.
echo # ------------------------------------------------------------------------ #
echo # fsutil fsinfo drives	Lists the current drives on the system.
echo # ------------------------------------------------------------------------ #
@echo on
fsutil fsinfo drives
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # wmic volume	Local storage volume management.
echo # ------------------------------------------------------------------------ #
@echo on
wmic volume | more
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # net share	displays information about all of the resources that are 
echo # shared on the local computer.
echo # ------------------------------------------------------------------------ #
@echo on
net share
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # wmic share	Shared resource management.
echo # ------------------------------------------------------------------------ #
@echo on
wmic share caption,description,name,path | more
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # Startup and Shutdown
echo # ------------------------------------------------------------------------ #
echo. 
echo # ------------------------------------------------------------------------ #
echo # wmic startup	Management of commands that run automatically when users log 
echo # onto the computer system.
echo # ------------------------------------------------------------------------ #
@echo on
wmic startup | more
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # Other unsorted
echo # ------------------------------------------------------------------------ #
echo. 
echo # ------------------------------------------------------------------------ #
echo # List the different log files the system is keeping
echo # ------------------------------------------------------------------------ #
@echo on
wevtutil el
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # Show all current environment variables
echo # ------------------------------------------------------------------------ #
@echo on
set
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # Display information about Remote Desktop Services sessions
echo # ------------------------------------------------------------------------ #
@echo on
qwinsta
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # Enables an administrator to create, delete, query, change, run and end 
echo # scheduled tasks on a local or remote system
echo # ------------------------------------------------------------------------ #
@echo on
schtasks /query /fo csv /v
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # Displays the IP-to-Physical address translation tables used by address 
echo # resolution protocol (ARP).
echo # ------------------------------------------------------------------------ #
@echo on
arp -a
@echo off
echo.
echo # ------------------------------------------------------------------------ #
echo # This command line tool displays the Resultant Set of Policy (RSoP) 
echo # information for a target user and computer
echo # ------------------------------------------------------------------------ #
@echo on
gpresult /z
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # any defined hosts
echo # ------------------------------------------------------------------------ #
@echo on
type %WINDIR%\System32\drivers\etc\hosts
@echo off
echo. 
echo # ------------------------------------------------------------------------ #
echo # tree
echo # ------------------------------------------------------------------------ #
@echo on
tree /F c:\
@echo off
echo.
echo.
echo # END
exit /b

