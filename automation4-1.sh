#!/bin/bash
cd /var/logs/ 
find . -type f -name '*log*' -exec cp '{}' /var/logs/Log_Backup \; 
cd /var/logs/Log_Backup 
find /var/logs/Log_Backup -type f -name '*log*' > include-file
tar -cvf $(hostname)_$(date +%Y-%m-%d).tar.gz -T include-file
exit