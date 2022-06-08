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
docker-build:
	docker build -t flask_image:latest .
docker-run:
	docker run -p 8080:8080 flask_image
invoke:
	curl http://127.0.0.1:8080
	
all: build test format lint run