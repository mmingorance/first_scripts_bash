#!/bin/bash
echo "Let's test if remote host is reachable"
test_network_connection ()
{
	echo "Please, insert a network address (IP or URL)"
	read internet_address
	ping $internet_address &> /dev/null
}
connection_status ()
{
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
}
try_again ()
{
	echo "Do you want to run the test again? (y/n)"
	read yes_or_not
		if [ $yes_or_not == "y" ]
		then
			test_network_connection
			connection_status
		elif [ $yes_or_not == "n" ]
			exit
		else
			echo "Please, insert a valid argument (y/n)"
			try_again
		fi
}
test_network_connection
connection_status
try_again