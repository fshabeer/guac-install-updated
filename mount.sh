sudo mkdir /mnt/queuetriggercreatesimulator-dev
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/sitcguacamoledev.cred" ]; then
    sudo bash -c 'echo "username=sitcguacamoledev" >> /etc/smbcredentials/sitcguacamoledev.cred'
    sudo bash -c 'echo "password=Pkn/akYjXQaCioZRf51XeP/H5fh8NcuOdlaoDa3WlJ9xvFtml6bQVYTiwY153OTnWIJeI0DNbCNO+AStvm7n5g==" >> /etc/smbcredentials/sitcguacamoledev.cred'
fi

sudo chmod 600 /etc/smbcredentials/sitcguacamoledev.cred

sudo bash -c 'echo "//sitcguacamoledev.file.core.windows.net/queuetriggercreatesimulator-dev /mnt/queuetriggercreatesimulator-dev cifs nofail,credentials=/etc/smbcredentials/sitcguacamoledev.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30" >> /etc/fstab'
sudo mount -t cifs //sitcguacamoledev.file.core.windows.net/queuetriggercreatesimulator-dev /mnt/queuetriggercreatesimulator-dev -o credentials=/etc/smbcredentials/sitcguacamoledev.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30
