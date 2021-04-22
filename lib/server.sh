#! /bin/bash
# issue    1 : how to send hugo server to background
# solved 1 : https://www.tecmint.com/run-linux-command-process-in-background-detach-process/
# 

function wrup_server_start() {
	clear;
	killall hugo &> /dev/null;
	hugo server -D --disableFastRender  < /dev/null  &> /dev/null &
}

function wrup_server_stop() {
	clear;
	killall hugo &> /dev/null ;
}
function wrup_server_restart() {
	clear;
	killall hugo &> /dev/null ;
	hugo server -D --disableFastRender  < /dev/null  &> /dev/null &
}

function wrup_server_close {
	killall hugo &> /dev/null ;
}



