FROM node:20

WORKDIR /singh_karanveer_site

COPY package*.json ./

RUN npm install

COPY . .

ENV HOST=0.0.0.0

EXPOSE 7775

CMD ["npm", "start"]

