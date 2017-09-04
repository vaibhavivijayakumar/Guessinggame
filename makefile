README.md:
	touch README.md
	echo "# Code For Guessing number of files in current directory">> README.md
	echo "Date of creation of the file:">> README.md
	echo -n"* ">> README.md
	date >> README.md
	echo -e "\nNumber of lines of the guessinggame.sh script:" >> README.md
	echo -n "* ">> README.md
	wc -l guessinggame.sh | egrep -o [0-9]+ >> README.md
