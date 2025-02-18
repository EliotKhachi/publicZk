# Find Your Wireless Chip Manufacturer and Model 

1. Run `lspci`  

Relevant output:  
```bash  
00.14.3 Network controller: Intel Corporation Alder Lake-P PCH CNVi WiFi (rev 01)  
```  
2. Run `lspci -vv -s 00:.14.3`  
Relevant output:  
```bash  
00.14.3 Network controller [0280]: Intel Corporation Alder Lake-P PCH CNVi WiFi [8086:51f0] (rev 01)  
```

## References
[Wireless Wifi Driver Chipset Information](https://www.cyberciti.biz/faq/linux-find-wireless-driver-chipset/)

## Tags
#linux
