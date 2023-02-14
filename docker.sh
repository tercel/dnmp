#!/bin/bash

source ./.env

help() {
    echo "docker.sh ps|build|start|stop|restart|up|down|config"
}

case $1 in
    "ps")
        docker-compose ps
        ;;
    "build")
        docker-compose build
        ;;
    "up")
        docker-compose up -d
        ;;
    "down")
        docker-compose down
        ;;
    "start")
        docker-compose start
        ;;
    "restart")
        docker-compose restart
        ;;
    "stop")
        docker-compose stop
        ;;
    "config")
        docker-compose config
        ;;
    *)
        help
        ;;

esac