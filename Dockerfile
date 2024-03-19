#Docker file that will build the container image.

#Using alpine image as this is a very basic application and slim version would ensure the images stay lightweight.
FROM golang:alpine3.19

#The working directory with in the container.
WORKDIR /app

#Copying all contents from the current directory to the containers working directory.
COPY . .

#Installing the go dependencies.
RUN go mod download

#Building the app by compiling the packages and dependencies. "-o" flag has been used here to change executable file name to something more standard. 
RUN go build -o /main

#Environment variable to set the port number.
ENV PORT=8080

#Using a variable to expose the port in case this is changed at runtime.
EXPOSE $PORT

#Executing the executable file which was built in the earlier step on line 16.
CMD [ "/main" ]