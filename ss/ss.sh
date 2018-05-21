if [ `id -u` -ne 0]
then
	echo "Need root,try with sudo again!"
	exit 0
fi
echo "download&install shadowsocks-------"
apt-get update
apt-get -y install python-pip||{
	echo "install python-pip error"
	exit 1
}
pip install shadowsocks
cat >/etc/shadowsocks.json <<EOF
{
	"server":"vps-ip",
	"server_port":25,
	"local_address": "127.0.0.1",
	"local_port":1080,
	"password":"password",
	"timeout":300,
	"method":"aes-256-cfb",
	"fast_open": false,
	"workers":1
}
EOF

ssserver -c /etc/shadowsocks.json -d start
apt–get install python–m2crypto
echo -e 'nohup /usr/local/bin/ssserver -c /etc/shadowsocks.json >/dev/null 2>&1 &\n' >> /etc/rc.local
