mkdir -p /home/vagrant/.ssh/
mkdir -p /root/.ssh/
echo vagrant | passwd root --stdin
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBT8ioWVWIAnRhlxmYKtRNJz6HQiZQ1y4ZkGu/k0Aw5y725EfkpRYfMZoayvVqzSK0V3+PmdRGDBne2FO+ZFTk0SjMqQHDzm3B0xwOVBB4sx6e4WeL+07PJw6eOa+CZLSvNt3YH+avQm9pLA1MN3dViwF+bN2QvN/UCSuwVbTvA84SQUzeC+vva1sUQ+AURjaZoYhLFK/8BafhCWS4ZSTH1uXoloQRK//MraLP4M0fr5LaV22FYtsEnr5XZkP1LnxSKu1WgsDGTT7uCEaagx6SsFeAYj+6D9azotaazLP7aVNodQ9cIM3cUUSTjzKDI9EocdqY5/cBRFh+aMjN1Qlb root@myansible.my.ru' >> /home/vagrant/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBT8ioWVWIAnRhlxmYKtRNJz6HQiZQ1y4ZkGu/k0Aw5y725EfkpRYfMZoayvVqzSK0V3+PmdRGDBne2FO+ZFTk0SjMqQHDzm3B0xwOVBB4sx6e4WeL+07PJw6eOa+CZLSvNt3YH+avQm9pLA1MN3dViwF+bN2QvN/UCSuwVbTvA84SQUzeC+vva1sUQ+AURjaZoYhLFK/8BafhCWS4ZSTH1uXoloQRK//MraLP4M0fr5LaV22FYtsEnr5XZkP1LnxSKu1WgsDGTT7uCEaagx6SsFeAYj+6D9azotaazLP7aVNodQ9cIM3cUUSTjzKDI9EocdqY5/cBRFh+aMjN1Qlb root@myansible.my.ru' >> /root/.ssh/authorized_keys
sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd
echo "PS1='\[\e[1;32m\]\u@\h:\[\e[36m\]\w\[\e[33m\]\$ \[\e[m\]'" >> ~/.bashrc
timedatectl set-timezone Europe/Samara
echo -e '172.0.0.10 k8smaster\n172.0.0.21 k8sworker1\n172.0.0.22 k8sworker2\n172.0.0.31 elastic1\n172.0.0.32 elastic2\n172.0.0.33 elastic3\n172.0.0.60 kibana\n172.0.0.40 prometheus\n172.0.0.70 nfs\n' >>/etc/hosts
