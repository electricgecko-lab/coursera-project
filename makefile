README.md:
	touch README.md
	echo "# Peer Graded Assignment:" > README.md
	echo "# Bash, Make, and Github" >> README.md
	echo >> README.md
	echo -n "**Guessinggaming.sh** was created on $(date)" >> README.md
	date >> README.md
	echo >> README.md
	echo -n "The number of lines of code in **guessinggame.sh** is " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	chmod a+x guessinggame.sh

clean:
	rm README.md
	chmod a-x guessinggame.sh
