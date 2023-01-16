# use a node base image
 
FROM node:16-alpine as build-step

RUN mkdir /app

WORKDIR /app

COPY buildanddeploy/package.json /app

RUN npm install

COPY buildanddeploy/ /app

EXPOSE 3000


CMD ["npm","start"]
# FROM node:7-onbuild

# # set maintainer
# LABEL maintainer "crudsinfotechng@gmail.com"

# # set a health check
# HEALTHCHECK --interval=5s \
#             --timeout=5s \
#             CMD curl -f http://127.0.0.1:8000 || exit 1

# # tell docker what port to expose
# EXPOSE 8000