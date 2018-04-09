ps aux | grep mysql | grep -v root | awk '{print $3 }'
