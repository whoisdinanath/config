#! /bin/sh

chosen=$(printf "\tPower Off\n\tRestart\n\tSuspend\n\tHibernate\n󰍃\tLog Out\n\tLock" | rofi -dmenu -i -theme-str '@import "power.rasi"')


case "$chosen" in
	"	Power Off") i3exit shutdown ;;
	"	Restart")  i3exit reboot ;;
	"	Suspend") systemctl suspend ;;
	"	Hibernate") systemctl hibernate ;;
	"󰍃	Log Out") i3exit logout ;;
	"	Lock") betterlockscreen --lock dimblur ;;
	*) exit 1 ;;
esac
