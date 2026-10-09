
#!/bin/bash

usage() {
    echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
}

if [ -z "$1" ]; then
    usage
    exit 1
fi

num_cpu=$(grep 'processor' /proc/cpuinfo | wc -l)

if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: Not enough CPU cores"
    exit 1
else
    echo "OK"
fi
