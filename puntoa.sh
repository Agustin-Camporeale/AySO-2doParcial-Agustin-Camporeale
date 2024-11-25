sudo fdisk /dev/sdc
sudo pvdisplay /dev/sdc
sudo pvdisplay /dev/sdd
sudo fdisk /dev/sdc
sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
swapon -s
sudo fdisk /dev/sdc
sudo fdisk /dev/sdc2
free -h
swapon -s
sudo fdisk /dev/sdc
sudo fdisk -l
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgs
sudo pvs
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L 900M vgDevelopers -n lvTesters
sudo lvcreate -L .9G vgDevelopers -n lvDevops
sudo lvcreate -L 2G vgAdmin -n lvAdmin
sudo lvcreate -L 1.5G vgAdmin -n lvAdmin
sudo /dev/mapper/vgDevelopers-lvDevelopers
sudo cat /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
sudo lsblk -f
sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo mkdir /mnt/lvAdmin
sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin
df -h
lsblk -f


