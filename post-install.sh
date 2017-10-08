sudo yum -y update
sudo yum -y install wget
udo yum -y install xclip
sudo yum group install "Development Tools"
sudo yum -y install epel-release
sudo yum -y install dkms
sudo yum -y install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
sudo yum -y install lsof

cd /opt
sudo wget -c http://download.virtualbox.org/virtualbox/5.1.28/VBoxGuestAdditions_5.1.28.iso \
          -O VBoxGuestAdditions_5.1.28.iso
sudo mount VBoxGuestAdditions_5.1.28.iso -o loop /mnt
cd /mnt
sudo sh VBoxLinuxAdditions.run --nox11
cd /opt
sudo rm *.iso
sudo /etc/init.d/vboxadd setup
sudo chkconfig --add vboxadd
sudo chkconfig vboxadd on
exit