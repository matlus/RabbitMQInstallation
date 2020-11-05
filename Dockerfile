FROM rabbitmq:3-management
WORKDIR /etc/rabbitmq
COPY ./conf/rabbitmq/definitions.json .
EXPOSE 5672:5672
EXPOSE 15672:15672

# To Build an image from this Dockerfile
# Run the follow command from a command promt
# docker build --tag rmq-matlus:youtube .

# To tag this image with the matlus prefix:
# docker tag rmq-matlus:youtube matlus/rmq-matlus:youtube

# To Run the Image
# Run the follow command from a command promt
# docker run -p 5672:5672 -p 127.0.0.1:15672:15672 --name rmq-matlus-container -d matlus/rmq-matlus:youtube

# To Stop the container
# docker stop rmq-matlus-container

# To Remove the Container
# docker rm rmq-matlus-container

# To Remove the image
# docker rmi rmq-matlus

# To Remove the base rabbitmq:3-management image
# docker rmi rabbitmq:3-management

# To List All Images
# docker images

# To List All Containers
# docker container ls -a

# To List Running Containers
# docker container ls

# To List all Processes
# docker ps -a