# !/bin/bash

sh ./autostart-common.sh

/bin/bash ~/scripts/dwm-status.sh &

/bin/bash ~/scripts/wp-autochange.sh &

~/scripts/autostart_wait.sh &

export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit
wmname compiz


