#! bin/bash

# Globe Variable Init
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'
LIGHTCYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
count=0
sum=0
score=0
extra_chance=0

printf "${YELLOW}Please enter your name "
read name

sleep 2
clear >$(tty)

printf "${GREEN}Hello $name, Welcome to our arcade!" "😺" 

sleep 2
clear >$(tty)

printf "\n\n\n"

printf "${YELLOW}You are just 3 chances away from your fortune!! Roll it up to make it to 16 or more!!"
clear >$(tty)

while [ $count -lt 3 ] 
do 

  #echo "-"
  #sleep 1
  #clear >$(tty)
  #echo "--"
  #sleep 1
  #clear >$(tty)

  echo "-->"
  sleep 1
  #clear >$(tty)
  read -p "Roll your dice by typing Roll: --> " Roll

  #clear >$(tty)

  printf "\n\n\n"

  if [ $Roll == "Roll" ] ; then

        num=$(shuf -i 1-6 -n 1) 
        sum=$((sum+num)) 
        echo "Your dice rolled $num. Your total so far is $sum"
        if [ $num -eq 6 ] 
          then
            if [ $extra_chance -eq 0 ] 
              then
                echo "You got lucky!! Rolled a 6! And, you get another chance!!. Why are you here still? Vegas beckons you"
                extra_chance=1
              continue
            fi
        fi
            count=$((count+1))
            #clear >$(tty)
    else
      count=0
  fi
done
score=$sum
echo Your total is $sum
  if [ $sum -gt 15 ] 
    then
    clear >$(tty)
      
      echo "Your Score: $score"
      printf "${GREEN}Yay you won a Million dollars, Congratulations 🎉🎉"
    elif [ $sum -eq 15 ]
      then
      clear >$(tty)
       
         echo "Your Score: $score"
        printf "${YELLOW}You were almost close, good try"
    else
    clear >$(tty)
      
       echo "Your Score: $score"
      printf "${LIGHTRED}Sorry keep trying"
  fi
echo $end
