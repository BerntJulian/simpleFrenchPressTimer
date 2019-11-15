#!/bin/bash
###	The hash strings is a compressed version of the ascii cup (at the bottom of the file)
###	Change the runtime for timelimit
###	coffee_init runs coffee_timer in a new terminal window.


function coffee_timer {
	runtime="210 seconds" #3.5 minutes
	endtime=$(date -ud "$runtime" +%s)
	sleep 0.1
	term_id=$(wmctrl -l | tail -1 | cut -f 1 -d " "); #finds the new terminals pid, used later to bring it in focus.
	tput reset;
	while [[ $(date -u +%s) -le $endtime ]]
	do
		(base64 -d <<<"H4sIAAAAAAAA/5WTSw7EIAiG9z2FYaNNKu7nLCZwEA8/iI+qqZMOcaHy8Sj+NebZ3LFxiJ17gogQ0flip5cDyt2KogcYk7nbBeDxGEDLbJNHeuhAC6JPHQ85wGOSLUser+WryQmAxdPxoEsu9l864qmSL3ETdb3GDce8XuMl4A+cggnxJx4G3JHw5hffaerD3eOhvUeRgjzr4NyFhXtriyg+C8EijFkZor8pdw56ijRZRE0j2v4owjHS2EV8WVwaVsQusTy7CW2dTQQlaU2wGOkIAfpIW0nQDouMSa1pWWhYipXOtOB1KTzXELuuUoi3fzfXkpChLx/Z4rIdBAAA" | gunzip)
		sleep 0.5;
		tput reset;
		(base64 -d <<<"H4sIAAAAAAAA/5WTSw7EIAiG9z2FYWObKO7nLCZwEA8/iI+qqZMOcaHy8Sj+NebZrmPjEDv3BBEh4uWLnV4OKHcrih5gTHbdLgCPxwBaZps80kMHWhB96njIAR6TbFnyeC1fTU4ALJ6OB11ysf/SEU+VfImbqOs1bjjm9RovAX/gFEyIP/Ew4CcJb37xnaY+3D0e2nsUKcizDs5dWLi3tojisxAswpiVIfqbcuegp0iTRdc0ou0PopoijV3El8WlYUXsEsuzm9DW2URQktYEi5GOEKCPtJUE7bDImNSaloWGpVjpTAs6p/BcQ8y5Uoi3fzfXkpChLydPcTQdBAAA" | gunzip)
		sleep 0.5;
		tput reset;
	done
	tput reset;
	(base64 -d <<<"H4sIAAAAAAAA/5WTSw7EIAiG9z2FYWObKO7nLCZwEA8/iI+qqZMOcaHy8Sj+NebZrmPjEDv3BBEh4uWLnV4OKHcrih5gTHbdLgCPxwBaZps80kMHWhB96njIAR6TbFnyeC1fTU4ALJ6OB11ysf/SEU+VfImbqOs1bjjm9RovAX/gFEyIP/Ew4CcJb37xnaY+3D0e2nsUKcizDs5dWLi3tojisxAswpiVIfqbcuegp0iTRdc0ou0PopoijV3El8WlYUXsEsuzm9DW2URQktYEi5GOEKCPtJUE7bDImNSaloWGpVjpTAs6p/BcQ8y5Uoi3fzfXkpChLydPcTQdBAAA" | gunzip)
	wmctrl -i -a $term_id; #brings the terminal in focus indicating that the coffee is ready.
	sleep 5;							
}
function coffee_init {
	gnome-terminal --geometry=60x23 -- bash -c 'coffee_timer;'	
}

export -f coffee_timer
coffee_init

#                         (
#                           )     (
#                    ___...(-------)-....___
#                .-""       )    (          ""-.
#          .-'``'|-._             )         _.-|
#         /  .--.|   `""---...........---""`   |
#        /  /    |                             |
#        |  |    |                             |
#         \  \   |                             |
#          `\ `\ |                             |
#            `\ `|                             |
#            _/ /\                             /
#           (__/  \                           /
#        _..---""` \                         /`""---.._
#     .-'           \                       /          '-.
#    :               `-.__             __.-'              :
#    :                  ) ""---...---"" (                 :
#     '._               `"--...___...--"`              _.'
#       \""--..__                              __..--""/
#        '._     """----.....______.....----"""     _.'
#           `""--..,,_____            _____,,..--""`
#                         `"""----"""`

#                         )
#                           (     )
#                    ___...)-------(-....___
#                .-""       (    )          ""-.
#          .-'``'|-._             (         _.-|
#         /  .--.|   `""---...........---""`   |
#        /  /    |                             |
#        |  |    |                             |
#         \  \   |                             |
#          `\ `\ |                             |
#            `\ `|                             |
#            _/ /\                             /
#           (__/  \                           /
#        _..---""` \                         /`""---.._
#     .-'           \                       /          '-.
#    :               `-.__             __.-'              :
#    :                  ) ""---...---"" (                 :
#     '._               `"--...___...--"`              _.'
#       \""--..__                              __..--""/
#        '._     """----.....______.....----"""     _.'
#           `""--..,,_____            _____,,..--""`
#                         `"""----"""`
