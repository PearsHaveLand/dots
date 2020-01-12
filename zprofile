#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

if [[ -z $DISPLAY && $XDG_VTNR -le 12 ]]; then
	echo "Would you like to start X? (y/n)"
	while true; do
		read REPLY
		case $REPLY in
			[Yy]) exec startx ;;
			[Nn]) break ;;
			*) printf '%s\n' 'Please answer y or n.' ;;
		esac
	done
fi
