#!/bin/bash
echo "Please, insert a network address (IP or URL)"
read internet_address
echo "Checking connection with remote host"
ping -c 5 $internet_address > /dev/null
if [ $? == 0 ]
then
		echo "THE CONNECTION WITH REMOTE HOST WAS SUCCESSFULL"
	else
		echo "THE REMOTE HOST IS NOT reachable"
		echo ""
		echo "Please, check your network settings and try again to be sure if remote host is not reachable"
		echo ""
	echo "If this test still fail, please, check the network settings in remote host"
fi