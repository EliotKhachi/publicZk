# Getting Speakers to Work on LG Gram Laptop 

First of all, this zettel only applies to my speakers  

**-->** `lspci -v`  

```
00:1f.3 Multimedia audio controller: Intel Corporation Alder Lake PCH-P High Definition Audio Controller (rev 01)
	DeviceName: Onboard - Sound
	Subsystem: LG Electronics, Inc. Device 0443
	Flags: bus master, fast devsel, latency 32, IRQ 195, IOMMU group 13
	Memory at 603d190000 (64-bit, non-prefetchable) [size=16K]
	Memory at 603d000000 (64-bit, non-prefetchable) [size=1M]
	Capabilities: <access denied>
	Kernel driver in use: snd_hda_intel
	Kernel modules: snd_hda_intel, snd_sof_pci_intel_tgl
```

I got my speakers to work by doing combinations of what I found in this `askubuntu` thread: 
[Ask Ubuntu - no sound on LG Gram 2021](https://askubuntu.com/questions/1319109/ubuntu-20-04-lts-no-sound-on-lg-gram-2021-a-lot-of-troubleshooting-attempted)


Essentially, here is what I did:  

1. `sudo vim /etc/default/grub` and change  

`GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"`  

to  

`GRUB_CMDLINE_LINUX_DEFAULT="quiet splash snd_intel_dspcfg.dsp_driver=1"`  

2. Removed my old SOF drivers  
**-->** `sudo mv /lib/firmware/intel/sof* ~/Desktop/old-sof-backup`  
**-->** `sudo mv /usr/local/bin/sof-* ~/Desktop/old-sof-backup`  

3. Download and install the newer drivers from the SOF Project Github repo  
Link: [Github - thesofproject/sof-bin](https://github.com/thesofproject/sof-bin)  

a) Open the directory for your desired SOF version in terminal, let's assume v2.1.1.  
**-->** `sudo rsync -a sof*v2.1.1 /lib/firmware/intel/`  
**-->** `sudo ln -s sof-v2.1.1 /lib/firmware/intel/sof`  
**-->** `sudo ln -s sof-tplg-v2.1.1 /lib/firmware/intel/sof-tplg`  
**-->** `sudo rsync tools-v2.1.1/* /usr/local/bin`  

4. Download and install the fixes/patches from the following SOF Project Github repo:
Link: [Github - thesofproject/alsa-ucm-conf](https://github.com/thesofproject/alsa-ucm-conf/tree/sof_ucm1)   

(Remove the old "/usr/share/alsa/ucm" directory and replace it with the newly downloaded one from the repo)
a) sudo rm -r /usr/share/alsa/ucm
b) sudo mv ./ucm /usr/share/alsa

5. IMPORTANT: Reboot into BIOS   

**-->** `sudo systemctl reboot --firmware-setup`  
, don't change anything, and save and exit. Your speakers should now be working.  

## Tags
#linux #debug
