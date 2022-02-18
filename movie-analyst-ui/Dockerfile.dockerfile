FROM node:carbon

#create app directory
 WORKDIR /usr/source/app
 
#Install app dependencies

COPY package*.json ./

RUN npm install 


COPY . .

EXPOSE 3000

CDM ["npm", "start"]