#!/bin/bash

function option0() {
    echo ""
    bash ~/scripts/actions/firewall.sh
    echo ""
}

function option1() {
    echo ""
    bash ~/scripts/actions/start.sh
    echo ""
}

function option2() {
    echo ""
    bash ~/scripts/actions/stop.sh
    echo ""
}

function option3() {
    echo ""
    bash ~/scripts/actions/view.sh
    echo ""
}

function option4() {
    echo ""
    bash ~/scripts/actions/core.sh
    echo ""
}

function option5() {
    echo ""
    bash ~/scripts/actions/modules.sh
    echo ""
}

function option6() {
    echo ""
    bash ~/scripts/actions/compile.sh
    echo ""
}

function option7() {
    echo ""
    bash ~/scripts/actions/db_reset.sh
    echo ""
}

function option8() {
    echo ""
    bash ~/scripts/actions/db_export.sh
    echo ""
}

function option9() {
    echo ""
    bash ~/scripts/actions/db_import.sh
    echo ""
}

function option10() {
    echo ""
    bash ~/scripts/actions/conf_init.sh
    echo ""
}

function option11() {
    echo ""
    bash ~/scripts/actions/conf_pull.sh
    echo ""
}

function option12() {
    echo ""
    bash ~/scripts/actions/conf_push.sh
    echo ""
}

##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color Functions
##

ColorGreen(){
    echo -ne $green$1$clear
}
ColorBlue(){
    echo -ne $blue$1$clear
}

menu(){
echo -ne "
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
█░▄▄▀█▄▄░█░▄▄█░▄▄▀█▀▄▄▀█▄░▄█░█████░▄▄▀█▀▄▄▀█░▄▄▀█░▄▄
█░▀▀░█▀▄██░▄▄█░▀▀▄█░██░██░██░▄▄░██░████░██░█░▀▀▄█░▄▄
█░██░█▄▄▄█▄▄▄█▄█▄▄██▄▄███▄██▄██▄██░▀▀▄██▄▄██▄█▄▄█▄▄▄
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
https://github.com/whipowill/sh-azerothcore | by whipowill

$(ColorGreen 'Ctrl-C to Exit')

Server
0) $(ColorGreen 'Open Ports')       - open ports 3724 and 8085
1) $(ColorGreen 'Start Server')     - launch tmux sessions (relaunch)
2) $(ColorGreen 'Stop Server')      - close tmux sessions
3) $(ColorGreen 'View Console')     - view worldserver session (ctrl-b-d to exit)

Core
4) $(ColorGreen 'Download Core')    - download to ~/core
5) $(ColorGreen 'Download Modules') - download to ~/core/modules (vim ~/scripts/actions/modules.sh to choose your modules)
6) $(ColorGreen 'Compile Server')   - compile the server

Database
7) $(ColorGreen 'Reset Database')   - drop tables (but not accounts)
8) $(ColorGreen 'Export Database')  - export to ~/backups/db/azerothcore.sql
9) $(ColorGreen 'Import Database')  - import from ~/backups/db/azerothcore.sql

Config
10) $(ColorGreen 'Init Configs')    - copy ~/core/env/dist/etc/*.conf.dist to .conf (converts to editable versions)
11) $(ColorGreen 'Pull Configs')    - copy from ~/core/env/dist/etc/ to ~/backups/conf
12) $(ColorGreen 'Push Configs')    - copy from ~/backups/conf to ~/core/env/dist/etc/

$(ColorBlue 'Action:') "
        read a
        case $a in
            0) option0 ; menu ;;
            1) option1 ; menu ;;
            2) option2 ; menu ;;
            3) option3 ; menu ;;
            4) option4 ; menu ;;
            5) option5 ; menu ;;
            6) option6 ; menu ;;
            7) option7 ; menu ;;
            8) option8 ; menu ;;
            9) option9 ; menu ;;
            10) option10 ; menu ;;
            11) option11 ; menu ;;
            12) option12 ; menu ;;
            *) echo -e $red"Invalid option."$clear; WrongCommand;;
        esac
}

menu