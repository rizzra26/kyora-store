FROM node:16

WORKDIR /app

COPY package.json package-lock.json* ./ 

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3040

CMD ["npm", "run", "start", "-p", "3040"]