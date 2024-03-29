FROM node:16

#Create working directory
WORKDIR /usr/src/app

#RUN npm i -g serve

COPY . . /usr/src/app/

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "build"]

EXPOSE 3000
