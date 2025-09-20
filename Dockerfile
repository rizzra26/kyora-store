FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npx next build

EXPOSE 3040

CMD ["npm", "run", "start"]
