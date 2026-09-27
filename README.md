# Assignment 11 - Docker File

## Student

Karanveer Singh

## Project Name

singh_karanveer_assignment11

## Description

This project is a React web application created using Create React App and deployed using a Docker container.

The application displays an h1 heading with the text:

Codin 1

The application runs on localhost port 7775.

## Create React App

The React application was created using:

npx create-react-app singh_karanveer_assignment11

The project was created inside the WSL Debian environment.

## Dockerfile

The Dockerfile creates the development environment using Node.js.

The Docker working directory is:

/singh_karanveer_site

The Dockerfile uses:

WORKDIR /singh_karanveer_site

## Docker Image

The Docker image was built using:

docker build -f dockerfile -t singh_karanveer_assignment11 .

The Docker image name is:

singh_karanveer_assignment11

## Docker Container

The required Docker container name is:

singh_karanveer_coding_assignment11

The container was created using:

docker run -d --name singh_karanveer_coding_assignment11 -p 7775:3000 singh_karanveer_assignment11

## Port Mapping

The React application runs on port 3000 inside the Docker container.

Port 7775 on the computer is mapped to port 3000 inside the container.

Port mapping:

7775:3000

The application can be accessed at:

http://localhost:7775

## Checking the Container

Use the following command to check the running container:

docker ps

The required container name is:

singh_karanveer_coding_assignment11

## Checking the WORKDIR

Enter the container using:

docker exec -it singh_karanveer_coding_assignment11 sh

Then run:

pwd

The expected result is:

/singh_karanveer_site

## Stop the Container

docker stop singh_karanveer_coding_assignment11

## Start the Container

docker start singh_karanveer_coding_assignment11

## Final Website

The application is available at:

http://localhost:7775

The webpage displays:

Codin 1

## GitHub Repository

The GitHub repository contains the React application, dockerfile, README.md, and other required project files.