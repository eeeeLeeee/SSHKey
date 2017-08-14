#/bin/bash
cd ~
mkdir .ssh
cd .ssh
echo 'keyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
