#!/bin/bash

# mkdir TEST
addgroup docker
for username in user1 user2 user3; do
  useradd -m -g docker -p $username -s /bin/bash $username
  mkdir -p /home/$username/.ssh
  chown -R $username:docker /home/$username/.ssh
  chmod 700 /home/$username/.ssh
  touch /home/$username/.ssh/authorized_keys
  chmod 600 /home/$username/.ssh/authorized_keys
done

ls -l /home
# echo "Bonjour"