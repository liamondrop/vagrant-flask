#!/usr/bin/env bash

echo "$AGENT Running $0"

# # Check if fail2ban is installed
# type fail2ban >/dev/null 2>&1 && SERVER_NEEDS_LOCKDOWN=false || SERVER_NEEDS_LOCKDOWN=true

# # Lockdown server
# if $SERVER_NEEDS_LOCKDOWN; then
#     echo "$AGENT Install fail2ban"
#     apt-get -q update
#     apt-get -yq install fail2ban

#     # echo "$AGENT Disable root ssh access"
#     # sed -e 's/^PermitRootLogin.*/PermitRootLogin no/' -i.bak /etc/ssh/sshd_config
#     # service ssh restart
# fi