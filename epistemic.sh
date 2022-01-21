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
Usage: ep (ma|st|rm|clean)

Commands:

  - ma 			Set "current" to Math
  - st			Set "current" to Stat
  - rm			Remove "current"
  - clean		Clean current directory of LaTeX build files
HELP
}

ep () {
	case $1 in
		ma)
			set_course ~/Projects/Live/notes/snippets/Math
			;;
		st)
			set_course ~/Projects/Live/notes/snippets/Stat
			;;
		rm)
			rm_course
			;;
		go)
			case $2 in
				55)
					cd ~/Classes/Math55B/HW
					;;
				231)
					cd ~/Classes/Math231BR/HW
					;;
				123)
					cd ~/Classes/Stat123/HW
					;;
				171)
					cd ~/Classes/Stat171/HW
					;;
			esac
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