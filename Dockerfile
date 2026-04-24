# OPTIMISED DOCKERFILE: due to caching of layers, we are copying only the files required for npm install first,
# then installing the dependencies, and then copying the rest of the code. This way, 
# if there are changes in the code but not in the dependencies, we can take advantage of the cached layer for npm install, 
# which will speed up the build process.
FROM node:22-alpine 
WORKDIR /app
COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
# --------------------------------------------------- Un-Optimised Dockerfile ---------------------------------------------------
# FROM node:22-alpine
# WORKDIR /app
# COPY . .
# # Copy code from this repo to the $WORKDIR directory in the container.
# RUN npm install
# RUN touch check.txt
# EXPOSE 3000 
# # Above all will be executed during the build process.
# # CMD command only runs when the container is started, it will not run during the build process.
# CMD ["npm", "start"] 
# CMD ["node", "index.js"] directly will work here as well