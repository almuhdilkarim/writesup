

function wrup_app_credit() {
	echo	"========================================================="
	echo	" __   __     ______     ______   ______   __     ______  "
	echo	"/\  -.\ \   /\  ___\   /\__  _\ /\  == \ /\ \   /\__  _\  "
	echo	"\ \ \-.  \  \ \  __\   \/_/\ \/ \ \  _-/ \ \ \  \/_/\ \/ " 
	echo	" \ \_\\ \_ \  \ \_____\    \ \_\  \ \_\    \ \_\    \ \_\ "
	echo	"  \/_/ \/_/   \/_____/     \/_/   \/_/     \/_/     \/_/ "
    echo	"                                                         "
    echo	" Author    : Al Muhdil Karim "; 
    echo	" Version   : Alpha 1.0 ";
    echo	" Program   : WritesUp - Hugo Management Tools  ";
    echo	"========================================================="                                                    
}

function wrup_app_status() {
	pidnum=$(pidof hugo);
	if [[ $pidnum  > 1 ]];then
		pidcount=$pidnum;
		stat=" Server  :  Active  | "
	else 
		pidcount="Not Available"
		stat=" Server  :  Down  | "
	fi
 	echo $stat" PID: "$pidcount
	echo "---------------------------------------------------------"
	echo ""
}

function wrup_app_options() {
	echo " Start action by number bellow";
	echo ""
	echo "   [1] Start Local Server" ;
	echo "   [2] Restart Local Server" ;
	echo "   [3] Create blog post";
	echo "   [4] Create case post";
	echo "   [5] Create tutorial post";
	echo "   [6] Push to Github" ;
	echo "   [7] Pull to Github"
	echo "   [8] Exit"
	echo ""
	echo "---------------------------------------------------------"
}

function wrup_app_banner {
	clear
	wrup_app_credit ;
	wrup_app_status ;
	wrup_app_options;
}
