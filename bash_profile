
function setPS1(){
  if [[ $1 == "" ]];
  then
    echo "[ Info ] Input or Your Name is not found - setting default string!"
    echo "[ Info ] To set your name invoke as => functionName <YourName>"
  fi
  NAME=${1:-YourName}
  ## Function to set BASH PS in my Macbook Air
  ## Current Format => 
  ## [ <Name> [Current Working Dir]  <Time in 12 Hour Format> ]$
  BROWN='\e[0;33m'
  GREEN='\e[0;32m'
  RED="\e[0;31m"
  CYAN='\e[0;36m'
  END_COLOR='\e[m'
  # PS1="${RED}[${NAME}${END_COLOR}${CYAN} [\\W] \\@ ]\\$ ${END_COLOR}"
  PS1="${RED}[${NAME}$ ${CYAN} [\\W] \\@ ]\\$ ${RED}"
}
