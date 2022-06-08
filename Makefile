build: 
	pip install --upgrade pip &&\
		bash build.sh
test: 
	bash test.sh
run: 
	bash run.sh
all: build test run