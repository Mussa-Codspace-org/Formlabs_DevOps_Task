build: 
	pip install --upgrade pip &&\
		bash build.sh
test: 
	bash test.sh
run: 
	bash run.sh
lint:
	pylint --disable=R,C helloapp/*.py 
format:
	black helloapp/*.py
all: build test format lint run