# Linux Kill a Process 

To kill a process in Linux by PID (process identification number) simply  
`kill -<signal_number> <PID>`  
*or*  

`killall -<signal-number> <process_name>`

## Common Signal Numbers
* **SIGUP (1)** - Hangs the terminal running the process or kills the process. Relads configuration files and open/close log files.  

* **SIGKILL (9)** - Direct kill signal to the target process. Last resort method. Doesn't save data or clean up termination of the process.  

* **SIGTERM (15)** - Sends a termination signal to the target process. SIGTERM is the default signal to send and it's considered the safest method.  

## PID
You can find the PID of a process with `ps -ef | less`. You can also do `pidof <process-name>`

## Tags
#linux
