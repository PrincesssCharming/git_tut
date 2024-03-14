#!/bin/bash

function show_menu() {
	echo "Please select an option."
	echo "1) Create a new file"
	echo "2) Delete a file"
	echo "3) List files"
	echo "4) Exit"
	echo -n "Enter your choice(1-4):"
]

while true; do
	show_menu
	read choice
	case $choice in
		1)
			echo "You selected option 1: Create a new file."
			echo -n "Enter the filenaeme(s), separated by space."
			read -ra names
			for filename in "${names[@]}"; do
				touch "$filename"
				echo "File '$filename' created successfully"
			done
			;;
		2)
		
			echo "You selected option 2: Delete file(s)"
			echo -n "Enter the filenaeme(s), separated by space."
			read -ra filenames
			for filename in "${filenames[@]}"; do
				if [ -f "$filename" ]; then
					rm "$filename"
					echo "File '$filename' deleted successfully"
				else
					echo "File '$filename' does not exist"
				fi
			done
			;;
		3)				
			echo "You selected option 3: List files."
			echo "Listing files"
			ls -l
			;;
		4)
			echo "Exiting..."
			exit
			;;
		*)
			echo "Invalid choice. Please select anumber between 1 and 4."
			;;
	esac
done
