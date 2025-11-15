BASE_DIR="$1"
sudo apt update
sudo apt install iptables-persistent
sudo iptables -F

sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Auth Server
sudo iptables -A INPUT -p tcp --dport 3724 -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 3724 -m state --state ESTABLISHED -j ACCEPT

# Game Server 
sudo iptables -A INPUT -p tcp --dport 8085 -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 8085 -m state --state ESTABLISHED -j ACCEPT

sudo iptables -A INPUT -j DROP

sudo iptables -L -v
sudo dpkg-reconfigure iptables-persistent
