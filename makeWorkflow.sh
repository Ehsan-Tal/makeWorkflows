#!/bin/bash

#########################
#	conventions     #
#########################

# for success  ✔️ :use ${passStr}
# for failure  ❌:use ${failStr}
# for datetime   :use ${datetime} : uses ISO 8601

# "String" for statements
# " -string(...)" for processes / start of them
# " --string" for sub-proceses

# ToC
# Conventions
# Variables
# Functions
# Algorithm
# Wind-up

#########################
#	variables       #
#########################

START=$SECONDS
passStr=" ✔️ "
failStr=" ❌"
PASS=" ✔️ "
FAIL=" ❌"
datetime=$(date "+%Y-%m-%dT%T%:z")
date=$(date "+%Y-%m-%d")

RED="\e[31m"
YELLOW="\e[33m"
RED="\e[31m"
GREEN="\e[32m"
LIGHTGREEN="\e[92m"
LIGHTRED="\e[91m"
NC="\e[0m"



script_name="$(basename ${0})"
clean_script_name="${script_name//".sh"/}"
SOURCEDIR="$HOME/Scripts/${clean_script_name}"
LASTPICKED="NONE"

#################################
#	errors and exits	#
#################################


function missing_error_exit(){
	echo "ERROR::MISSING:: $1 ${failStr}"
	exit_error
}


trap exit_script SIGINT


function exit_script(){

	END=$SECONDS

	logger "ran ${script_name} successfully for $((END-START))s at $(date)"

        echo -e "\n - ending ${script_name}..."
        echo -e "\nMirupafshim, $USER."

	exit 0
}


function exit_error(){
	echo " - ending ${script_name}..."
        echo "Mirupafshim, $USER."

	exit 1
}


#########################
#	functions	#
#########################


function print_status {
        message="$1"

	echo -e "${message}"

        return 0
}


function ask_consent() {
        # question is internal, response is external

	message="${1}"

	if [ -z "${message}" ]; then 
		process_error "Not all important variables exist !" 3
		return 2
	fi

	process "${message}" 2
        read -p " --- Yes/No: " consent

        consent=${consent:0:1}
        consent=${consent^^}
	
	return 0
}


function process_success {
        bulletStage="${2}"
        genre="success:"        
        tempString=$(printf "%${bulletStage}s")
        bullets=${tempString// /-} 
        
        if [ "${2}" -eq "1" ]; then
                PRIMARY="${GREEN}"
        else
                PRIMARY="${LIGHTGREEN}"
        fi

        message="${PRIMARY} ${bullets} ${genre}${NC} ${1} ${PASS}"

        print_status "${message}"

        unset message
        unset PRIMARY
        unset bulletStage
        unset genre
        unset tempString
        unset bullets

        return 0

}


function process_error {
        bulletStage="${2}"
        genre="error:"  
        tempString=$(printf "%${bulletStage}s")
        bullets=${tempString// /-} 

        if [ "${2}" -eq "1" ]; then
                PRIMARY="${RED}"
        else
                PRIMARY="${LIGHTRED}"
        fi

        message="${PRIMARY} ${bullets} ${genre}${NC} ${1} ${FAIL}"

        print_status "${message}"

        unset message
        unset PRIMARY
        unset bulletStage
        unset genre
        unset tempString
        unset bullets

        return 0

}


function process {
        bulletStage="${2}"
        tempString=$(printf "%${bulletStage}s")
        bullets=${tempString// /-} 

        if [ "${2}" -eq "1" ]; then
                echo -e "\n ${bullets} ${1}"
        else
                echo -e " ${bullets} ${1}"
        fi


        unset message
        unset tempString
        unset bullets
        unset bulletStage

        return 0
}



function say_hello {
	echo -e "\nMirë se erdhet, $USER, në ${script_name} V1.43\n"

	return 0
}


function inform_topic {
	LASTPICKED="${1}"
#	clear
	return 0
}
	

function inform_subtopic {
#	clear
	LASTPICKED="${LASTPICKED}/${1}"

	return 0
}


function prepare_source {
	# this should ideally replace the source-ing logic
        sourcefile="${SOURCEDIR}/${1}"

        if ! [ -a ${sourcefile} ]; then
                process_error "SOURCE FILE ABSENT ${failStr}" 1
                return 2
        elif ! [ -s ${sourcefile} ]; then
                process_error "SOURCE FILE EMPTY ${failStr}" 1
                return 3
        fi

        source ${sourcefile}

	return 0
}


function start_procedure_university(){

	WORKFLOWVARFILE="university_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_university

	return 0
}


function start_procedure_browse(){
	
	WORKFLOWVARFILE="browse_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_browse

	return 0
}


function start_procedure_watch(){
	
	WORKFLOWVARFILE="watch_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_watch

	return 0
}


function start_procedure_play(){

	WORKFLOWVARFILE="play_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_play

	return 0
}


function start_procedure_write(){

	WORKFLOWVARFILE="write_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_write

	return 0
}


function start_procedure_read(){

	WORKFLOWVARFILE="read_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_read

	return 0
}


function start_procedure_listen(){
	WORKFLOWVARFILE="listen_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_listen

	return 0
}


function start_procedure_work(){

	WORKFLOWVARFILE="work_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_work

	return 0
}


function start_procedure_cycler(){

	WORKFLOWVARFILE="cycler_workflows.var"
	prepare_source "${WORKFLOWVARFILE}" || echo " HALLO "
	initiate_procedure_cycler ${1}

	return 0

}


function start_procedure_WIP(){
	clear
	say_hello || echo "hi"
	echo " - Do this yourself, ya big bum"
	echo " -- returning..."
	sleep 1

	return 0
}


function start_subprocedure_WIP(){
	echo " - Do this yourself, ya big bum"
	sleep 1
	return 0
}


function start_procedure_temp(){

	clear
	say_hello || echo "A quick hai !"

	echo " - TEMPORARY PROCEDURE"
	echo " -- This task becomes a cycler as soon as we can pin procedures"
	echo " -- We will then have the temp be of something else"
	echo " - Try Obsidian"
	echo " - Continue ? ( Any Key )"
	read
	echo " -- Opening .MD..."
	vim "$HOME/Attributes/career.md"

	return 0
}

#########################
#	algorithm       #
#########################


while [ 1 ]; do
	
	clear
	say_hello

	# TODO: use this everywhere
	#gnome-terminal --wait --tab -- bash -c "command"

	declare -a menuArray
	declare -A tempArray

#       list choices
	
	READ="Read"
	WORK="Work"
	PLAY="Play"
	WATCH="Watch"	
	BROWSE="Browse"	
	WRITE="Write"
	LISTEN="Listen"

	PROJECTS="[DIR]	Projects"
	SCRIPTS="[DIR]	Scripts"
	ATTRIBUTES="[DIR]	Attributes"
	AGENDA="[DIR]	Agenda"

	BUFFET="Buffet		(WIP)"

	TEMP="Define Careers"
	EXITTEXT="Exit"
	RETURNTEXT="Return"

#	We need to dynamise the ordering, such that we only need to
#	initialise the associative array and leave the numerical ordering
#	at runtime - except for the exit clause.

#	menuArray[]="${READ}"
#	menuArray[]="${WORK}"
#	menuArray[]="${PLAY}"
#	menuArray[]="${BROWSE}"
#	menuArray[]="${WATCH}" 
#	menuArray[]="${WRITE}"
#	menuArray[]="${LISTEN}"
#	menuArray[]="${PROJECTS}"
#	menuArray[]="${SCRIPTS}"
#	menuArray[]="${ATTRIBUTES}"
#	menuArray[]="${AGENDA}"
#	menuArray[]="${BUFFET}"

	menuArray[0]="${READ}"
	menuArray[1]="${WORK}"
	menuArray[2]="${PLAY}"
	menuArray[3]="${BROWSE}"
	menuArray[4]="${WATCH}" 
	menuArray[5]="${WRITE}"
	menuArray[6]="${LISTEN}"
	menuArray[7]="${PROJECTS}"
	menuArray[8]="${SCRIPTS}"
	menuArray[9]="${ATTRIBUTES}"
	menuArray[10]="${AGENDA}"
	menuArray[11]="${BUFFET}"


# needs to be generated.

	count="${#menuArray[*]}"

	TEMPCLAUSE="${count}"
	count="$(( count + 1 ))"
	menuArray["${TEMPCLAUSE}"]="${TEMP}"

#       return-clause
	EXITCLAUSE="${count}"
	menuArray["${EXITCLAUSE}"]="${EXITTEXT}"
	count="$(( count + 1 ))"

	echo " - LAST PICKED: ${LASTPICKED}"

	echo " - OPTIONS: "

	for (( i=0; i<${count}; i++ )); do
		echo " -- ${i}. ${menuArray[${i}]}"
	done

        while [ 1 ]; do
                echo -e "\n - So, whadaya doin' ?"
                read -p " -- Choice: " choice

                if [[ -n "${choice}" ]] && [[ "${choice}" -lt "${count}" ]]; then
                        break
                fi

                echo " -- ${choice} is invalid ${failStr}"

        done

	topic="${menuArray[${choice}]}"

	case $topic in
	"${READ}")
		inform_topic "$topic"
		start_procedure_read
		;;
	"${WORK}")
		inform_topic "$topic"
		start_procedure_work
		;;
	"${PLAY}")
		inform_topic "$topic"
		start_procedure_play
		;;
	"${WATCH}")
		inform_topic "$topic"
		start_procedure_watch
		;;
	"${BROWSE}")
		inform_topic "$topic"
		start_procedure_browse
		;;
	"${WRITE}")
		inform_topic "${topic}"
		start_procedure_write
		;;
	"${LISTEN}")
		inform_topic "$topic"
		start_procedure_listen
		;;
	"${TEMP}")
		inform_topic "$topic"
		start_procedure_temp

		;;
	"${PROJECTS}"|"${SCRIPTS}"|"${ATTRIBUTES}"|"${AGENDA}")
		inform_topic "$topic"
		start_procedure_cycler "$HOME/${topic}"		

		;;

	"${BUFFET}")
#		inform_topic "$topic"
		start_procedure_WIP "${topic}"

		;;
	"${EXITTEXT}")
		exit_script

		;;
	*)
		echo "Sorry, $topic is not in my vocabulary..."
		;;
	esac

	unset menuArray	
	
done


#########################
#	wind-up		#
#########################

exit_script

exit 0 
