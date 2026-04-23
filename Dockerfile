FROM node:22-alpine
WORKDIR /app
COPY . .
# Copy code from this repo to the $WORKDIR directory in the container.
RUN npm install
RUN touch check.txt
EXPOSE 3000 
# Above all will be executed during the build process.


# CMD command only runs when the container is started, it will not run during the build process.
CMD ["npm", "start"] 
# CMD ["node", "index.js"] directly will work here as well
