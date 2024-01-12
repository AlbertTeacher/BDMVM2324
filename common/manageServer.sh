#!/bin/sh

DOCKERFILE="${CURRENT_PWD}/dockerfiles/Dockerfile${TITLE}"
IMAGE=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]')
CONTAINER="${IMAGE}db"
PROGRAM="${IMAGE}.sh"
PASSWORD=$(grep "MYSQL_ROOT_PASSWORD" $DOCKERFILE | cut -d'=' -f2)

BLUE="\e[34m"
BOLDUNDERLINEBLUE="\e[1;4;34m"
BOLDWHITE="\e[1;97m"
RED="\e[31m"
GREEN="\e[32m"
HIGHLIGHT="\e[3;30;103m"
ENDCOLOR="\e[0m"

upServer() {
	echo -n "${GREEN}Starting MySQL server..."
	echo -n "0%"
	docker build -t ${IMAGE} -f ${DOCKERFILE} . 2> /dev/null
	echo -n "\b\b50%"
	sleep 0.25
	docker run --name ${CONTAINER} -d ${IMAGE} > /dev/null 
	echo "\b\b\b100%${ENDCOLOR}"
	sleep 1
	echo "${HIGHLIGHT}Password: ${PASSWORD}${ENDCOLOR}"
	docker exec -it ${CONTAINER} bash -c "while ! mysqladmin ping --silent; do sleep 0.25; done; mysql -p"
}

downServer() {
	echo -n "${RED}Down MySQL server..."
	echo -n "0%"
	docker stop ${CONTAINER} > /dev/null 
	echo -n "\b\b33%"
	sleep 0.25
	docker rm ${CONTAINER} > /dev/null 
	echo -n "\b\b\b66%"
	sleep 0.25
	docker rmi ${IMAGE} > /dev/null 
	echo "\b\b\b100%${ENDCOLOR}"
}

enterServer() {
	echo -n "${BLUE}Enter MySQL server..."
	echo "${HIGHLIGHT}Password: ${PASSWORD}${ENDCOLOR}"
	docker exec -it ${CONTAINER} mysql -p
}

while getopts :udreh flag
do
	case "${flag}" in
		u) 
			upServer
			exit 0
			;;
		d)
			downServer
			exit 0
			;;
		r)
			echo "Restarting Server...."
			downServer
			upServer
			exit 0
			;;
		e)
			enterServer
			exit 0
			;;
	esac
done

shift $((OPTIND-1))

echo "\n${BLUE}Use ${BOLDWHITE}${PROGRAM} -u${ENDCOLOR}${BLUE} to ${BOLDUNDERLINEBLUE}Start${ENDCOLOR}${BLUE} MySQL server with ${CONTAINER}"
echo "Use ${BOLDWHITE}${PROGRAM} -d${ENDCOLOR}${BLUE} to ${BOLDUNDERLINEBLUE}Stop${ENDCOLOR}${BLUE} and delete MySQL server with ${CONTAINER}"
echo "Use ${BOLDWHITE}${PROGRAM} -r${ENDCOLOR}${BLUE} to ${BOLDUNDERLINEBLUE}Restart${ENDCOLOR}${BLUE} MySQL server with ${CONTAINER}"
echo "Use ${BOLDWHITE}${PROGRAM} -e${ENDCOLOR}${BLUE} to ${BOLDUNDERLINEBLUE}Enter${ENDCOLOR}${BLUE} MySQL server with ${CONTAINER}${ENDCOLOR}\n"