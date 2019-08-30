This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app), and dockerized with Dockerfile and docker-compose.
##### Obs: If you don't have permission, add sudo to execute docker

## Execution with Dockerfile - Development environment

In the project directory, build an image:

### `$ docker build -f Dockerfile.dev .`

After, tag this image:

### `$ docker tag <IMAGE_ID> frontend `

Then, run a container with this image

### `$ docker run -p 3000:3000 frontend`
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.


The page will NOT reload if you make edits because we need to expose local directory.<br>
For do this, we will add volumes in the LOCAL resources to reference volumes in CONTAINER:

### `$ docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app frontend`
<br />

## Execution with docker-compose - Development environment
### `$ docker compose up` 
<br />

## Execution with Test - Travis CI
<br />
