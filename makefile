genREADME:guessinggame.sh
	echo "Project Title: Rui He bash final" > README.md
	echo "The makefile was run on:" >> README.md
	date +"%Y-%m-%d %T" >> README.md
	echo "Number of line in guessinggame.sh was:" >> README.md
	wc -l <guessinggame.sh >> README.md
	$(shell cat "README.md")
clean:
	rm README.md