sudo -i
service NetworkManager stop
chkconfig NetworkManager off
service firewalld start
cat <<TEST> /etc/resolv.conf
# Generated by NetworkManager
nameserver 192.168.50.3
nameserver 10.0.2.3
options single-request-reopen
TEST