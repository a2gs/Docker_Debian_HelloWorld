docker_image=chw
docker_tag=0.1
docker_fullname=$(docker_image):$(docker_tag)

all: clean image list

list:
	@echo ===[DOCKER IMAGES]===================================
	docker images

image:
	@echo ===[DOCKER BUILD]====================================
	docker build . -t $(docker_fullname)

clean:
	@echo ===[DOCKER DELETE IMAGE]=============================
	-docker rmi $(docker_fullname)
