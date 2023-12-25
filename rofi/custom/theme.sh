#! /bin/bash
#
# Script to execute switch-theme with coproc cause Rofi freezes
if [ $# -eq 0 ]; then
	~/.scripts/switch-theme.sh
	exit 0
fi
coproc ~/.scripts/switch-theme.sh $@ & disown
