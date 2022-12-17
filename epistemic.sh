#!/bin/zsh

set_course () {
	echo "Setting course: $1..."

	rm ~/Documents/Harvard/Classes/current 2> /dev/null
	### Temporary fix for Galois theory course note texing
	rm ~/.vim/Ultisnips/tex.snippets 2> /dev/null
	ln -s ~/Projects/Live/notes/snippets/tex.snippets ~/.vim/Ultisnips/tex.snippets
	###
	ln -s $1 ~/Documents/Harvard/Classes/current
}

rm_course () {
	echo "Clearing course..."
	rm ~/Documents/Harvard/Classes/current 2> /dev/null
}

new_hw () { # run from ~/Classes/<course>/HW
	# last_hw=$(ls -t | grep "HW" | head -n1 | grep -oE "\d+")
	# new_num=$(echo "$last_hw + 1" | bc)
	new_num=$2
	mkdir HW${new_num}
	cd HW${new_num}
	cp ../HW${last_hw}/hw${last_hw}.tex hw${new_num}.tex
}

current_hw () { # run from ~/Classes/<course>/HW
	cur_hw=$(ls -t | grep "HW" | head -n1 | grep -oE "\d+")
	cd HW${cur_hw}
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
		# ma)
		# 	set_course ~/Projects/Live/notes/snippets/Math
		# 	;;
		# st)
		# 	set_course ~/Projects/Live/notes/snippets/Stat
		# 	;;
		rm)
			rm_course
			;;
		gl)
			# set_course ~/Projects/Live/notes/snippets/Math
			rm ~/.vim/Ultisnips/tex.snippets 2> /dev/null
			rm ~/Classes/current 2> /dev/null
			ln -s ~/Projects/Live/notes/snippets/Galois/Ultisnips/tex.snippets ~/.vim/Ultisnips
			cd ~/Classes/Galois2023/lectures
			git pull
			;;
		ma)
			set_course ~/Projects/Live/notes/snippets/Math
			cd ~/Classes/18.919/Talks
			cur_tk=$(ls -t | grep "Talk" | head -n1 | grep -oE "\d+")
			cd Talk${cur_tk}
			;;
		# tf)
		# 	set_course ~/Projects/Live/notes/snippets/Stat
		# 	cd ~/Classes/Stat110TF/Section
		# 	cur_sc=$(ls -t | grep "section" | head -n1 | grep -oE "\d+")
		# 	cd section${ccd ur_sc}
		# 	;;
		st)
			set_course ~/Projects/Live/notes/snippets/Stat
			cd ~/Classes/Stat210/HW
			current_hw
			;;
		cl)
			# Run *IN* directory!
			echo "Cleaning build files..."
			rm -f *synctex*
			latexmk -c &> /dev/null
			;;
		nw)
			new_hw $2
			;;
		-h)
			help_msg
			;;
		*)
			echo "Unknown course: $1... exiting"
	esac
}