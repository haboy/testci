d="$(docker ps -a |grep ignite|wc -l)"
echo $d
if [ $d -eq 0 ]; then
  docker run -p 10800:10800 --name ignite -d apacheignite/ignite:2.8.0
fi
apt install lsof -y
lsof -i:10800
