IMAGE_NAME=bimoyong/ubuntu-opencv

docker:
	docker build --no-cache --build-arg UBUNTU_VER=$(UBUNTU_VER) --build-arg OPENCV_VER=${OPENCV_VER} -t ${IMAGE_NAME}:$(UBUNTU_VER)_${OPENCV_VER} .
	docker tag ${IMAGE_NAME}:$(UBUNTU_VER)_${OPENCV_VER} ${IMAGE_NAME}:latest
	docker push ${IMAGE_NAME}:$(UBUNTU_VER)_${OPENCV_VER}

.PHONY: docker
