#!/bin/bash

# This script implements telegram notification to zabbix
# By Aleksey Sviridkin f@lex.la
# https://github.com/lexfrei/Telezabix

# Put this file to AlertScript path (you can find this path in zabbix_server.cfg)

JerardToken="123496961:AAHn8QSg0_ZMMiBIv5ie-49jJSck7RHTWEc" #You can change this token to your own or just use my bot
JerardURL="https://api.telegram.org/bot${JerardToken}"
JerardClient=${1} #You need to set this in "to" field in media settings in your user profile
JerardSubj=${2}
JerardText=${3}

rawurlencode() {
	local string="${1}"
	local strlen=${#string}
	local encoded
	unset encoded
	
	for (( pos=0 ; pos<strlen ; pos++ ));
	do
		c=${string:$pos:1}
		case "$c" in
			[-_.~a-zA-Z0-9а-яА-Я] )
				o="${c}"
			;;
			* )
				printf -v o '%%%02x' "'$c"
			;;
		 esac
		 encoded+="${o}"
	done
	echo "${encoded}"
}

curl "${JerardURL}/sendMessage?chat_id=${JerardClient}&text=$(rawurlencode "${JerardSubj}"):%20$(rawurlencode "${JerardText}")%0a%23zabbix%20%23work" 2>/dev/null 1>/dev/null
