mkdir -p /home/vagrant/.ssh/
mkdir -p /root/.ssh/
echo vagrant | passwd root --stdin
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBT8ioWVWIAnRhlxmYKtRNJz6HQiZQ1y4ZkGu/k0Aw5y725EfkpRYfMZoayvVqzSK0V3+PmdRGDBne2FO+ZFTk0SjMqQHDzm3B0xwOVBB4sx6e4WeL+07PJw6eOa+CZLSvNt3YH+avQm9pLA1MN3dViwF+bN2QvN/UCSuwVbTvA84SQUzeC+vva1sUQ+AURjaZoYhLFK/8BafhCWS4ZSTH1uXoloQRK//MraLP4M0fr5LaV22FYtsEnr5XZkP1LnxSKu1WgsDGTT7uCEaagx6SsFeAYj+6D9azotaazLP7aVNodQ9cIM3cUUSTjzKDI9EocdqY5/cBRFh+aMjN1Qlb root@myansible.my.ru' >> /home/vagrant/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBT8ioWVWIAnRhlxmYKtRNJz6HQiZQ1y4ZkGu/k0Aw5y725EfkpRYfMZoayvVqzSK0V3+PmdRGDBne2FO+ZFTk0SjMqQHDzm3B0xwOVBB4sx6e4WeL+07PJw6eOa+CZLSvNt3YH+avQm9pLA1MN3dViwF+bN2QvN/UCSuwVbTvA84SQUzeC+vva1sUQ+AURjaZoYhLFK/8BafhCWS4ZSTH1uXoloQRK//MraLP4M0fr5LaV22FYtsEnr5XZkP1LnxSKu1WgsDGTT7uCEaagx6SsFeAYj+6D9azotaazLP7aVNodQ9cIM3cUUSTjzKDI9EocdqY5/cBRFh+aMjN1Qlb root@myansible.my.ru' >> /root/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrKdP2oy41laB4o/JURkwG1byQIK24N/j792c5ZmA5SNpHEMrgym1J17rR9K+CQ29X7DrK1gzcjq8+RkTnH1J+N86SV9zzyzVSkyz2GyVUDDy0EudrhRzPSc1bVf4xIr5vBb10aXiBC40cY2jXewFJypkKbhRK32ZTf2nFfslZHObAhpe4jCJOEDIZIKy6l9RkMxMEKLy7N4X0cf7ggm6gnxYlfwsN4FL4u73bZ5H4N6/i+lQp8a55sYzu+ESPcezcJpMAM5CYnDUQIOF4YpakJpCqezEacNPFXGTcRYqyQvGDu0jNAqcStjmN3C6ToWabtxdVFjDS3/M+HJrm2X/z root@myVM' >> /home/vagrant/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrKdP2oy41laB4o/JURkwG1byQIK24N/j792c5ZmA5SNpHEMrgym1J17rR9K+CQ29X7DrK1gzcjq8+RkTnH1J+N86SV9zzyzVSkyz2GyVUDDy0EudrhRzPSc1bVf4xIr5vBb10aXiBC40cY2jXewFJypkKbhRK32ZTf2nFfslZHObAhpe4jCJOEDIZIKy6l9RkMxMEKLy7N4X0cf7ggm6gnxYlfwsN4FL4u73bZ5H4N6/i+lQp8a55sYzu+ESPcezcJpMAM5CYnDUQIOF4YpakJpCqezEacNPFXGTcRYqyQvGDu0jNAqcStjmN3C6ToWabtxdVFjDS3/M+HJrm2X/z root@myVM' >> /root/.ssh/authorized_keys
sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd
echo "PS1='\[\e[1;32m\]\u@\h:\[\e[36m\]\w\[\e[33m\]\$ \[\e[m\]'" >> ~/.bashrc
timedatectl set-timezone Europe/Samara
echo -e '172.0.0.10 k8smaster\n172.0.0.15 k8sworker1\n172.0.0.16 k8sworker2\n172.0.0.20 elastic1\n172.0.0.21 elastic2\n172.0.0.22 elastic3\n172.0.0.30 kibana\n172.0.0.25 prometheus\n172.0.0.35 nfs\n172.0.0.40 consul1\n172.0.0.41 consul2\n172.0.0.42 consul3\n172.0.0.45 grafana\n' >>/etc/hosts
sed -i '/^127.0.0.1/d' /etc/hosts
