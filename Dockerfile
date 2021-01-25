# Base image

FROM node:alpine
WORKDIR /usr/app

# Install Dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Defualt Command on container start up

CMD ["npm", "start"]