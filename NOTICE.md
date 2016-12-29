Problems 

invalid containerPort 8048


Removing all images and containers (causes long build, but needed to force loading everything form git, not from cache)

	# Delete all containers
	docker rm $(docker ps -a -q)
	# Delete all images
	docker rmi $(docker images -q)


Still installed on docker image

ubuntu, java, git


Current state

Image created with "docker build -t name" when console in directory of the dockerfile. Creates an image that that conatins the prepared glassfish version (look https://github.com/cocome-community-case-study/cocome-cloud-jee-docker/tree/master/glassfish) in usr/src/ 



