#!/bin/sh

case $1 in
	2g|3g|4g)
		SLOT=$(/usr/bin/mmcli -L | awk '{print $1}' | awk -F [\/] '{print $NF}')
		mmcli -J -m ${SLOT} | jsonfilter -e '@["modem"]["generic"]["supported-modes"][*]' | grep $1
	;;
esac

