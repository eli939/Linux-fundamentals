#!/bin/bash

# 1. Identify the system's public IP.
	echo "[1] My public IP address is:"
	curl ifconfig.co
	echo
# 2. Identify the private IP address assigned to the system's network interface.
	echo "[2] My private IP address is:" 
	ifconfig | grep 'broadcast' | awk '{print $2}'
	echo
# 3. Display the MAC address (masking sensitive portions for security).
	echo "[3] My MAC address is:"
	ifconfig | grep ether | awk '{print $2}'
	echo
# 4. Display the percentage of CPU usage for the top 5 processes.
	echo "[4] The percentage of top 5 CPU are:"
	ps -eo pid,%cpu,comm --sort=%cpu | tail -n 5
	echo
# 5. Display memory usage statistics: total and available memory.
	echo "[5] Memory usage statistics, including total and avalible memory:"
	free -h | head -n 2
	echo
# 6. List active system services with their status.
	echo "[6] List of active system services - and their status:"
	service --status-all | grep -F '[ + ]'
	echo
# 7. Locate the Top 10 Largest Files in /home.
	echo "[7] Top 10 largerst files in /home:"
	du -ah | sort -n | tail -n 10

#tal cohen S21
