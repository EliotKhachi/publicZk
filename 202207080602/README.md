# Crontab

Crontab is a command used to schedule commands for recurring jobs you'd like to set up. This is how it works:  

1. There's a crontab file accessed using `crontab -e` (may require `sudo`)  
2. You can add as many jobs as you want in this file on any line. One job per line.  
3. Each line has 6 fields separated by white space. The first 5 specify the time and the last specifies the job command itself.  

## Template
*[minute(0-59)] [hour (0-59)] [month-day (1-31)] [month (1-12 or 3-letter-abbreviation)] [week-day (0-6)] [command]*

* Each time field can specify multiple occurences:
	* sequence - [0, 15, 20, 30]  
	* range - [0-30]  
	* sequence of ranges - [0-30, 40-50]  
	* all - *  
	* every nth time - \*/n

## Examples

\* \* \* \* \* - Every minute  
45 \* \* \* \* - 45 minutes after each hour (1:45, 2:45, ...)  
45 9 8 dec * - Every December 8th at 9:45 am  

## References
[1] *Linux Pocket Guide: Essential Commands* By Daniel J. Barrett  
[2] [Understanding Crontab in Linux With Examples](https://linuxhandbook.com/crontab/)  

## Tags
#linux
