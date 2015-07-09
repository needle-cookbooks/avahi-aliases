#!/bin/bash
message(){

  MESSAGE=$1
  LEVEL=$2
  START='\033['
  FINISH='\033[0m'

  BOLD='1;'

  RED="31"
  GREEN="32"
  YELLOW="33"
  BLUE="34"
  MAGENTA="35"
  CYAN="36"
  GREY="37"

  case $LEVEL in
    "header" )
      COLOURS="$BOLD;${GREY}m"
      ;;
    "error" )
      COLOURS="${RED}m"
      ;;
    "warning" )
      COLOURS="${MAGENTA}m"
      ;;
    "debug" )
      COLOURS="${YELLOW}m"
      ;;
    "result" )
      COLOURS="${CYAN}m"
      ;;
    "success" )
      COLOURS="${GREEN}m"
      ;;
    "choice" )
      COLOURS="${BLUE}m"
      ;;
    * )
      COLOURS="${GREY}m"
      ;;
  esac

  echo -e "${START}${COLOURS} ${MESSAGE} ${FINISH}"
  tput sgr0
}
