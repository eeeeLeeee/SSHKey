#/bin/bash
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAwZlQtFWeE8nedH/q6E/rA/SuK8mmtE8QLMdZexXdwBmQBv7MZXCXWi78RSxjoIYSOwuMHr83ByODaeyIVMKAFumq2ES6d2cRJACjsJ8EbsGNANqXQc2yqhUgSjPces+UvFBNng07yw6AFan437kubYwslJvgwUxy9o10QFiUQLJ3NTsf91yt4WuJS8mLr0OS8+5LqnsLoQNeRixla10GQdMQP91s1okGBHxJY0U8W0N25xCfmCcwelDdKCuUxi6mqTR9XuGw4Ca/WGDn133oMg9MfsgXtfcLUvVQreW8nq1Z1GDHNLEU2U/CFD0wXIkRz9jJ1emCQjqjOHMO8HbQOQ== lxq@lxq' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 700 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
