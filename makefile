.PHONY: start buildimage startmongo endapplication

start: buildimage startmongo
	@echo "Starting app"
	docker run -p 3210:3210 -d --name web --link mongodb:mongodb usermanager-web:1.0

buildimage:
	@echo "Building image"
	docker build -t usermanager-web:1.0 .

startmongo:
	@echo "Starting mongo db container"
	docker run -d --name mongodb mongo

endapplication:
	@echo "Stopping application"
	docker stop web mongodb
	docker rm -f web mongodb

