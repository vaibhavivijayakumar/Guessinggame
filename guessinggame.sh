# File: guessinggame.sh

 guessinggame()
{

n1=$(ls -1|wc -l)
guesses=1
echo -n "Guess the number of files in current directory:"
while read n2;
do
if [[$n2 -eq $n1 ]]
then
break;
else
#echo "Good"
if [[ $n2 -gt $n1 ]]
then
echo -n "Sorry, your guess is too high. New guess:"
fi
if [[ $n2 -lt $n1 ]]
then
echo -n "Sorry, your guess is too low. New guess:"
fi
fi
guesses=$((guesses+1))

done
echo "Good job! It took you $guesses guesses to get the right number."
}

echo "Script starts.."
echo "calling guessinggame function"
guessinggame
