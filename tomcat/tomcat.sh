if [ `id u` -ne 0 ]
then
	echo "Need root,try with sudo"
	exit 0
fi
echo "download tomcat package-----"
wget  http://apache.mirrors.lucidnetworks.net/tomcat/tomcat-8/v8.5.8/bin/apache-tomcat-8.5.8.tar.gz
mkdir tomcat
tar -xzvf apache-tomcat-8.5.8.tar.gz -C tomcat
mv tomcat /usr/local/
cat >/etc/init.d/tomcat <<EOF
# Tomcat server auto-start script

case $1 in
start)
sh /usr/local/tomcat/bin/startup.sh
;;
stop)
sh /usr/local/tomcat/bin/shutdown.sh
;;
restart)
sh /usr/local/tomcat/bin/shutdown.sh
sh /usr/local/tomcat/bin/startup.sh
;;
esac
exit 0
EOF

chmod 755 /etc/init.d/tomcat
ln -s /etc/init.d/tomcat /etc/rc1.d/K99tomcat
ln -s /etc/init.d/tomcat /etc/rc2.d/S99tomcat
echo "tomcat install success!"
