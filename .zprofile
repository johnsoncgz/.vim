#!/bin/sh

# adjust $LANG and resize terminal window size for login shell, the xterm package must be installed.

TTY=$(/usr/bin/tty)

case $TTY in
	/dev/tty[0-9]*)
		[ "$LANG" != "en_US.UTF-8" ] && export LANG=en_US.UTF-8
		;;
	/dev/ttyS[0-9]* | /dev/rfcomm[0-9]*)
		[ "$LANG" != "en_US.UTF-8" ] && export LANG=en_US.UTF-8
		if [ -e /usr/bin/resize ]; then
			if [ "$SHELL" = /usr/bin/zsh ] || [ "$SHELL" = /bin/zsh ]; then
				function precmd {
					eval `/usr/bin/resize`
				}
			elif [ "$SHELL" = /usr/bin/bash ] || [ "$SHELL" = /bin/bash ]; then
				PROMPT_COMMAND="eval `/usr/bin/resize`"
			fi
		fi
		;;
#	/dev/pts/[0-9]*)
#		[ "$LANG" != "en_US.UTF-8" ] && export LANG=en_US.UTF-8
#		;;
esac
