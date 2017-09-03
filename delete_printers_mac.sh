#!/bin/sh
end_at=300
for connection in $(seq 1 $end_at); do
	ping -i 5 -c 2 172.17.22.11 &> /dev/null)
	if [ "${?}" -eq 0 ]; then
		echo "Network connection successfull"
		for printer in `lpstat -p | awk '{print $2}'`; do
			echo `Deleting ${printer}`
			lpadmin -x $printer
			echo `${printer} has been deleted`
		done
	 exit 0
	fi
done
