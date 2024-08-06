#!/bin/bash
echo "Starting clean_instance.sh" > /home/ubuntu/clean_instance.log
cd /home/ubuntu/Elearn || { echo "Failed to change directory" >> /home/ubuntu/clean_instance.log; exit 1; }
echo "Changed directory to /home/ubuntu/Elearn" >> /home/ubuntu/clean_instance.log
rm -rf * || { echo "Failed to remove files" >> /home/ubuntu/clean_instance.log; exit 1; }
echo "Removed old files" >> /home/ubuntu/clean_instance.log
echo "Instance cleaned successfully" >> /home/ubuntu/clean_instance.log
