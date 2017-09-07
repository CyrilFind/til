# Directly get a PID and kill a process
## Traditionnaly
We use `ps aux | grep process_name` but that returns lots of info you dont care about and an extra process for the command you just typed, and then you have to copy paste the pid to use `kill <pid>`

## Solution

`pgrep process_name` returns just the process pid and `pkill process_name` kills it direclty, use with caution of course
