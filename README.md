# Node.js + Chromium Browser

## How to use this image

### Build the `eipdev/node-chromium` Docker image

```console
$ docker image build --tag eipdev/node-chromium .
```

### Create a `Dockerfile` in your Node.js app project

```dockerfile
FROM eipdev/node-chromium

# Create app directory
WORKDIR /home/node/app

# Install app dependencies
COPY package.json ./
RUN npm install --production

# Bundle app source
COPY . .

# EXPOSE 8080
USER node
CMD [ "node", "app.js" ]
```

You can then build and run the Docker image:

```console
$ docker build -t my-nodejs-app .
$ docker run -it --rm --name my-running-app my-nodejs-app
```
