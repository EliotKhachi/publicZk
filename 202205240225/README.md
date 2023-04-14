# Docker in Action


## Sample Docker file
```yml
	FROM node:alpine # create an image from the official *node* image on hub.docker.com on top of an *alpine* linux distro
	COPY . /app # Copy all the files in the current directory into the image under the directory /app/.
	WORKDIR /app # Set your working directory as the app directory of the image from this point forward in the Dockerfile
	CMD node app.js # Execute the command `node app.js` while inside the image
```

## Tags
#docker
