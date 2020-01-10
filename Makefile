build: 
	docker build -t my_docker_flask:latest .

run:
	docker run -d -e PORT=5000 -p 5000:5000 my_docker_flask:latest
