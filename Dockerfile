FROM node:14

WORKDIR /app

# ensure both package and package-lock.json are copied

COPY . .

RUN npm install

EXPOSE 4000


CMD [ "npm","start" ]

