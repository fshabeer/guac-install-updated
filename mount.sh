sudo mkdir /mnt/queuetriggercreatesimulator-dev
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/sitcguacamoledev.cred" ]; then
    sudo bash -c 'echo "username=sitcguacamoledev" >> /etc/smbcredentials/sitcguacamoledev.cred'
    sudo bash -c 'echo "password=Pkn/akYjXQaCioZRf51XeP/H5fh8NcuOdlaoDa3WlJ9xvFtml6bQVYTiwY153OTnWIJeI0DNbCNO+AStvm7n5g==" >> /etc/smbcredentials/sitcguacamoledev.cred'
fi
