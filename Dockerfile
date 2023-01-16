# use a node base image
FROM node:16


RUN mkdir /app

WORKDIR /app

COPY buildanddeploy/package.json /app

RUN npm install

COPY buildanddeploy/ /app

EXPOSE 3000


CMD ["npm","start"]