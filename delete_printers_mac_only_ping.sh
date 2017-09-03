#!/bin/sh
ping -n -o -c300 172.17.22.252 &> /dev/null)
	if [ "${?}" -eq 0 ]; then
		echo "Network connection successfull"
		for printer in `lpstat -p | awk '{print $2}'`; do
			echo `Deleting ${printer}`
			lpadmin -x $printer
			echo `${printer} has been deleted`
		done
	 exit 0
	fi
