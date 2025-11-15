#!/bin/bash

# Get the directory where menu.sh is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$SCRIPT_DIR/.."

function option1() {
    echo ""
    bash "$BASE_DIR/scripts/actions/start.sh" "$BASE_DIR"
    echo ""
}

function option2() {
    echo ""
    bash "$BASE_DIR/scripts/actions/stop.sh" "$BASE_DIR"
    echo ""
}

function option3() {
    echo ""
    bash "$BASE_DIR/scripts/actions/view.sh" "$BASE_DIR"
    echo ""
}

function option4() {
    echo ""
    bash "$BASE_DIR/scripts/actions/core.sh" "$BASE_DIR"
    echo ""
}

function option5() {
    echo ""
    bash "$BASE_DIR/scripts/actions/modules_sample.sh" "$BASE_DIR"
    echo ""
}

function option6() {
    echo ""
    bash "$BASE_DIR/scripts/actions/compile.sh" "$BASE_DIR"
    echo ""
}

function option7() {
    echo ""
    bash "$BASE_DIR/scripts/actions/db_reset.sh" "$BASE_DIR"
    echo ""
}

function option8() {
    echo ""
    bash "$BASE_DIR/scripts/actions/db_export.sh" "$BASE_DIR"
    echo ""
}

function option9() {
    echo ""
    bash "$BASE_DIR/scripts/actions/db_import.sh" "$BASE_DIR"
    echo ""
}

function option10() {
    echo ""
    bash "$BASE_DIR/scripts/actions/conf_init.sh" "$BASE_DIR"
    bash "$BASE_DIR/scripts/actions/conf_pull.sh" "$BASE_DIR"
    echo ""
}

function option11() {
    echo ""
    bash "$BASE_DIR/scripts/actions/conf_push.sh" "$BASE_DIR"
    echo ""
}

function option12() {
    echo ""
    bash "$BASE_DIR/scripts/actions/conf_nuke.sh" "$BASE_DIR"
    echo ""
}

function option13() {
    echo ""
    bash "$BASE_DIR/scripts/actions/firewall.sh" "$BASE_DIR"
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
echo ""
echo "$(ColorBlue 'SERVERS RUNNING')"
echo "$(ColorBlue '====================================================')"
tmux list-sessions
echo "$(ColorBlue '====================================================')"
echo "^^ You should see two sessions. ^^"
echo -ne "
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
█░▄▄▀█▄▄░█░▄▄█░▄▄▀█▀▄▄▀█▄░▄█░█████░▄▄▀█▀▄▄▀█░▄▄▀█░▄▄
█░▀▀░█▀▄██░▄▄█░▀▀▄█░██░██░██░▄▄░██░████░██░█░▀▀▄█░▄▄
█░██░█▄▄▄█▄▄▄█▄█▄▄██▄▄███▄██▄██▄██░▀▀▄██▄▄██▄█▄▄█▄▄▄
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
$(ColorBlue 'by whipowill') | https://github.com/whipowill/sh-azerothcore

$(ColorGreen 'Ctrl-C to Exit')

Server
1) $(ColorGreen 'Start Server')     - launch tmux sessions (restart)
2) $(ColorGreen 'Stop Server')      - close tmux sessions
3) $(ColorGreen 'View Console')     - view worldserver session (ctrl-b-d to exit)

Core
4) $(ColorGreen 'Download Core')    - download the core
5) $(ColorGreen 'Download Modules') - download modules (vim <DIR>/scripts/actions/modules.sh to define your modules)
6) $(ColorGreen 'Compile Server')   - compile the server

Database
7) $(ColorGreen 'Reset Database')   - drop tables (but not accounts)
8) $(ColorGreen 'Export Database')  - export to <DIR>/backups/db/azerothcore.sql
9) $(ColorGreen 'Import Database')  - import from <DIR>/backups/db/azerothcore.sql

Config
10) $(ColorGreen 'Pull Configs')    - copy from <DIR>/core/env/dist/etc/ to <DIR>/backups/conf (will not overwrite existing)
11) $(ColorGreen 'Push Configs')    - copy from <DIR>/backups/conf to <DIR>/core/env/dist/etc/
12) $(ColorGreen 'Nuke Configs')    - nuke backups/conf

Misc
13) $(ColorGreen 'Open Ports')      - open ports 3724 and 8085

$(ColorBlue 'Action:') "
        read a
        case $a in
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
            13) option13 ; menu ;;
            *) menu;;
        esac
}

menu
