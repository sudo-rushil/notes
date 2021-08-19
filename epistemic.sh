#!/bin/zsh

set_course () {
	echo "Setting course: $1..."

	rm ~/Documents/Harvard/Classes/current 2> /dev/null
	ln -s $1 ~/Documents/Harvard/Classes/current
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
	clean)
		# Run *IN* directory!
		latexmk -c
		;;
	*)
		echo "Unknown course: $1... exiting"
esac
