#! /bin/sh

# Define working directory
WU=$HOME/.local/apps/writesup/lib

# Include library
source $WU/banner.sh
source $WU/server.sh
source $WU/github.sh
source $WU/post.sh

## Main function
function wrup_app_init() {
	wrup_app_banner;
	read -p " Insert number " action 
	while :
	do
		case $action in	
			'1')
				wrup_server_start;
				wrup_app_init;;
			'2')
				wrup_server_restart;
				wrup_app_init;;
			'3')
				wrup_new_blog_content;
				read -p "Content created, press any key to continue" main;
				wrup_app_init;;
			'4')
				wrup_new_case_content;
				read -p "Content created, press any key to continue" main;
				wrup_app_init;;
			'5')
				wrup_new_tutorial_content;
				read -p "Content created, press any key to continue" main;
				wrup_app_init;;
			'6')
				wrup_push_all_github
				read -p "press any key to continue" main;
				wrup_app_init;;
			'7')
				wrup_pull_core_github;
				read -p "press any key to continue" main;
				wrup_app_init;;
			'8')
				wrup_server_close;
				exit;;
			 *)
				read -p "Invalid Argument, press any key to continue" main;
				wrup_app_init;;
		esac
	done
}

function wu() {
	wrup_app_init
}


function wu_start_bloging() {
	cd $HOME/Document/blog;
	$HOME/.local/apps/typora/Typora --no-sandbox ;
	gnome-terminal -e "wrup_app_init";
}
