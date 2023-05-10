# PoolmonScript
A simple script that can be used to automate running poolmon useful in finding memory leaks in windows
The script when executed will run poolman  with the /g and -n options. -n takes a snapshot of the program and outputs it as a text file in the location designated by OUTDIR
Taking the script and scheduling it to run with windows built in task scheduler allows you to get snapshots over time useful for determining the location of slow memory leaks 
