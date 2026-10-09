
#!/bin/bash

if [ -z "$1" ]; then
    read -p "Usage: Enter the maximum number of CPU cores: " required_cpu
else
    required_cpu=$1
fi

num_cpu=$(grep 'processor' /proc/cpuinfo | wc -l)

if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "Error: Not enough CPU cores"
else
    echo "OK: Enough CPU cores"
fi

echo "The read command gets input from the user."
echo "The echo command displays messages on the screen."
echo "These commands make the script easier to use and understand."
