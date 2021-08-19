#!/bin/zsh

set_course () {
	echo "Setting course: $1..."

	rm ~/Documents/Harvard/Classes/current 2> /dev/null
	ln -s $1 ~/Documents/Harvard/Classes/current
}

rm_course () {
	echo "Clearing course..."
	rm ~/Documents/Harvard/Classes/current 2> /dev/null
}

case $1 in
	55)
		set_course ~/Projects/Live/notes/snippets/Math55
		;;
	110)
		set_course ~/Projects/Live/notes/snippets/Stat110
		;;
	1011)
		set_course ~/Projects/Live/notes/snippets/Econ1011
		;;
	rm)
		rm_course
		;;
	clean)
		# Run *IN* directory!
		echo "Cleaning build files..."
		rm -f *synctex*
		latexmk -c &> /dev/null
		;;
	*)
		echo "Unknown course: $1... exiting"
esac
