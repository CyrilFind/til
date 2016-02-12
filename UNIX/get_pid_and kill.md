# Directly get a PID and kill a process
Usually we use `ps aux | grep process_name` but that returns lots of info I dont care about and an extra process for the command I just typed

## Solution

`pgrep process_name` returns just the pid and `kill \`pgrep process_name\`` kills it direclty
