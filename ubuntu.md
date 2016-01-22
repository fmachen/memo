## Enter SSH passphrase once 

```
ssh-agent bash
ssh-add /home/username/.ssh/id_rsa
```

## Switch ubuntu to kubuntu

```
sudo apt-get install kubuntu-desktop
sudo dpkg --force-all -P account-plugin-google

sudo apt-get remove `apt-cache depends ubuntu-desktop | cut -d : -f 2 | grep gnome`
sudo apt-get remove `dpkg -l | grep gnome | cut -d \  -f 3`
sudo apt-get install deborphan
sudo apt-get remove $(deborphan)
```
