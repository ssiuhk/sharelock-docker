# ssiu/sharelock-docker
Dockerizing sharelock(https://github.com/auth0/sharelock) for easier deployment


**Depends on: [docker-compose](https://docs.docker.com/compose/)**

Install docker-compose according to https://docs.docker.com/compose/install/

## Update docker-compose.yaml

 - Change environment settings


# Creating the image
------------------

        docker-compose build

# Running docker image
--------------------

Start your image binding the external port 3000:

        docker-compose up -d

and access the container via web browser at http://localhost:3000/

