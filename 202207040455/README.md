# VirtualBox

*VirtualBox* is a free and open source software used to run any OS (operating system) on top of your OS, without restarting your computer.  

## Steps
1. `sudo apt update # update packages ` 
2. `sudo apt install virtualbox # install virtual box`
3. `virtualbox # executes the application, VirtualBox` (run in console, Alt+F2)  

4. `wget https://download.virtualbox.org/virtualbox/6.1.32/Oracle_VM_VirtualBox_Extension_Pack-6.1.32.vbox-extpack # download extension packs for VirtualBox (USB support, disk encryption, and more)`   
5. `sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.32.vbox-extpack # install the extension packs` 
---
6. Inside the *VirtualBox* application, go to File > Preferences > Extensions. Select the extension pack you just installed (Oracle...) an click OK.  
7. Click "New", and then select and name an OS.  
8. Allocate RAM  
9. Select VDI hard disk file type and dynamically allocate it. Select desired storage amount.  
10. Start
11. The VM (VirtualBox Manager) is now asking you to select a start-up disk. Download the OS's .iso file from its official website.  
12. Start --> you should now be able to start the VM. If you get this error: "VT-x is disabled in the BIOS for all CPU modes (VERR_VMX_MSR_ALL_VMX_DISABLED)", go here: [202207040818](../202207040818) - VM Error VT x is disabled in BIOS 

## Tags
#docker #VM
