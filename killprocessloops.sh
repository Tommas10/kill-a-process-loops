#! /bin/bash

#To write a shell script (which is always running in the background) to kill a process whenever it is found to be running.
#The script always exits after an iteration of the loop under macOS.

#This shell script file created by Tommas Huang
#Created date: 2019-05-30


killProc() {
#killproc sends signals to all processes that use the specified exe-cutable. 
    while true
    do
        killall -9 $1 2>&1 >> /dev/null
        #/dev/null - standard file that discards all you write to it, but reports that the write operation succeeded. 
        #1 is stdout and 2 is stderr. 2>&1 redirects stderr to stdout. &1 indicates file descriptor(stdout), otherwise(if you use just 1) you will redirect stderr to file named 1.
        #[any command] >>/dev/null 2>&1 redirects all stderr to stdout, and writes all of that to /dev/null.
        sleep $2
        ## sleep potentially for a long time
    done
}
killProc iTunes 5 
#This will kill iTunes every 5 seconds.