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

help_msg () {
	cat <<HELP
Usage: ep (55|110|1011|rm|clean)

Commands:

  - ma 			Set "current" to Math55
  - st			Set "current" to Stat110
  - ec			Set "current" to Econ1011
  - rm			Remove "current"
  - clean		Clean current directory of LaTeX build files
HELP
}

ep () {
	case $1 in
		ma)
			set_course ~/Projects/Live/notes/snippets/Math55
			cd ~/Classes/Math55A/HW/
			;;
		st)
			set_course ~/Projects/Live/notes/snippets/Stat110
			cd ~/Classes/Stat110/HW/
			;;
		ec)
			set_course ~/Projects/Live/notes/snippets/Econ1011
			cd ~/Classes/Econ1011A/HW/
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
		-h)
			help_msg
			;;
		*)
			echo "Unknown course: $1... exiting"
	esac
}