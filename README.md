Student
Karanveer Singh
Project
singh_karanveer_assignment11
1. Create React App
I first created the React application using Create React App.

npx create-react-app singh_karanveer_assignment11

The React application displays:
Codin 1

2. Dockerfile
I created a Dockerfile to run the React application inside a Docker
container.
FROM node:20

WORKDIR /singh_karanveer_site

COPY package*.json ./

RUN npm install

COPY . .

ENV HOST=0.0.0.0

EXPOSE 7775

CMD ["npm", "start"]
What each part does
- FROM node:20 --- Uses Node.js 20 as the base image.
- WORKDIR --- Sets the working directory inside the container.
- **COPY package*.json** --- Copies the package files.
- RUN npm install --- Installs the required dependencies.
- COPY . . --- Copies the React project into the container.
- ENV HOST=0.0.0.0 --- Allows the app to be accessed outside the
  container.
- EXPOSE 3000 --- React uses port 3000 inside the container.
- CMD --- Starts the React application.
3. Build the Docker Image
I built the Docker image using:
docker build -f dockerfile -t singh_karanveer_assignment11 .
Image name: singh_karanveer_assignment11
4. Create the Docker Container
I created the container using:
docker run -d --name singh_karanveer_coding_assignment11 -p 7775:3000 singh_karanveer_assignment11
Container name: singh_karanveer_coding_assignment11
5. Port Mapping
The React application runs on port 3000 inside Docker.
I mapped it to port 7775 on my computer.
7775:3000
So the application is opened in the browser at:
http://localhost:7775
6. Check the Container
I use:
docker ps
This shows the running container and its port mapping.
Expected:
singh_karanveer_coding_assignment11
7775->3000
7. Check the Docker WORKDIR
I enter the container using:
docker exec -it singh_karanveer_coding_assignment11 sh
Then:
pwd
Expected result:
/singh_karanveer_site
To leave the container:
exit
8. Final Result
Open:
http://localhost:7775
The webpage displays:
Codin 1
This confirms that the React application is running through Docker.
9. GitHub
Repository:
https://github.com/karanveersingh10/singh_karanveer_assignment11
Quick Demonstration Order
1. Show the Dockerfile.
2. Run docker images to show the image.
3. Run docker ps to show the container.
4. Run docker exec -it singh_karanveer_coding_assignment11 sh.
5. Run pwd to show /singh_karanveer_site.
6. Open http://localhost:7775.
7. Show Codin 1 in the browser.
8. Show the GitHub repository.