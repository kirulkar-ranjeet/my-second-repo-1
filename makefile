README.md:project.sh
	echo "Project title" >> README.md
	date >> README.md
	wc -l project.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md  

