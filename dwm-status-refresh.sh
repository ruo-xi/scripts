#!/bin/bash
get_time_until_charged() {
	echo $pretty_time;
}

print_date(){
	date '+%Y-%m-%d %H:%M:%S'
}

xsetroot -name " $(print_date) "

exit 0
