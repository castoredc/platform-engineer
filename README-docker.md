- Build the container image locally:
- Pre-requisities:
    - Ensure you have Docker Desktop installed on your local machine and it is running.

    Steps:
    1. Run the following command to build the image using the tag "latest". You can substitute "latest" for a specific tag version also e.g. v0.0.1: 
    **docker build -t platform-engineer:latest**

    2. After you have built the image, you should see the image in your local docker image registry. Run the following command to see if it's been built and exists in the image registry:
    **docker image ls**

    You should see something similar to this:
    > platform-engineer             latest    53fc66fdb3fb   17 minutes ago   303MB

- Run the container using the newly built image.
    1. Run the following command to run the container image in a local docker container. Here we pass the "-p" flag to map port 8080 from the container to the port 8080 on your local machine.
    **docker run -it -p 8080:8080 --rm platform-engineer:latest**

    2. Now if we enter the following in our terminal, we should get the response that we're looking for which indicates the container is running the web application correctly. 
    **curl http://localhost:8080**

    > Dions-MacBook-Pro-2:platform-engineer dion$ curl http://localhost:8080
    > Hello Platform Engineer candidate!

- Additional Information:
    - You can access a running container by entering the following command. This is useful when you need to troubleshoot or view the files with in the container.
    **docker exec -it 53fc66fdb3fb /bin/bash**