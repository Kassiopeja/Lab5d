sudo rm -f /dev/hello
sudo rmmod hello
make 
echo ""
sudo insmod ./hello.ko
sudo mknod /dev/hello c 280 0
sudo chmod a+r+w /dev/hello

sudo echo "delay = 2"
echo "2" > /dev/hello
echo "Wait for 11 sec"
sleep 11
dmesg | tail 

sudo echo "0" > /dev/hello
dmesg | tail
