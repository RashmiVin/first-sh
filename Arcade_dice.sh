echo Please enter your name
read name
echo Hello $name, Welcome to our arcade! "😺" 
sleep 1
echo You are just 3 chances away from your fortune!! Roll it up to make it to 16 or more!!
count=0
sum=0
extra_chance=0
while [ $count -lt 3 ] 
do 
  printf "\n\n\n"
  echo Roll your dice by typing "Roll" $Roll
  read $Roll
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

done
echo Your total is $sum
  if [ $sum -gt 15 ] 
    then
      printf "\n\n\n"
      echo "Yay you won a Million dollars, Congratulations 🎉🎉"
    elif [ $sum -eq 15 ]
      then
        printf "\n\n\n"
        echo "You were almost close, good try"
    else
      printf "\n\n\n"
      echo "Sorry keep trying"
  fi
echo $end
