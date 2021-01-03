all: README.md

README.md:
	touch README.md
	echo "Project: Guessing Game   " >> README.md
	echo "File auto-generated on: `date`   " >> README.md
	echo "The code file has: `cat guessinggame.sh | wc -l` lines.   " >> README.md 

clean:
	rm README.md
