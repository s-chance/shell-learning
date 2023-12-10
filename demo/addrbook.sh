#!/bin/bash

file="addrbook.txt"

add() {
	echo -n "Enter name: "
	read name

	echo -n "Enter phone number: "
	read phone

	echo -n "Enter email address: "
	read email

	echo -n "Enter address: "
	read address

	echo "confifm? (y/n)"
	read confirm

	if [ "$confirm" == "y" ]; then
		echo $name:$phone:$email:$address >>$file
	else
		echo "Cancelled"
	fi
}

del() {
	echo -n "Enter the line number: "
	read line

	# print the line
	sed -n "${line}p;d" $file

	echo "confifm? (y/n)"
	read confirm

	if [ "$confirm" == "y" ]; then
		# delete the line
		sed -i "${line}d" $file
	else
		echo "Cancelled"
	fi

}

update() {
	echo -n "Enter the line number: "
	read line

	# update, delete it firstly and then add it
	sed -i "${line}d" $file
	echo -n "Enter name: "
	read name

	echo -n "Enter phone number: "
	read phone

	echo -n "Enter email address: "
	read email

	echo -n "Enter address: "
	read address

	echo "confifm? (y/n)"
	read confirm

	if [ "$confirm" == "y" ]; then
		sed -i "${line}i $name:$phone:$email:$address" $file
	else
		echo "Cancelled"
	fi
}

sel() {
	echo -n "Enter the line number: "
	read line
	# print the line
	sed -n "${line}p" $file
}

show() {
	cat $file
}

menu() {

	echo "==================== Address Book ===================="
	echo "==================== 1. Add =========================="
	echo "==================== 2. Delete ======================="
	echo "==================== 3. Update ======================="
	echo "==================== 4. Select ======================="
	echo "==================== 5. Show ========================="
	echo "==================== 6. Exit ========================="
}

main() {
	# menu
	while true; do
		menu
		read -p "Enter the number: " num
		case $num in
		1) add ;;
		2) del ;;
		3) update ;;
		4) sel ;;
		5) show ;;
		6) exit ;;
		*) echo "Wrong number" ;;
		esac
	done
}

main
