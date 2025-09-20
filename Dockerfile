FROM node:18

WORKDIR /app

RUN npm install -g yarn

COPY package.json package-lock.json* pnpm-lock.yaml* ./ 

RUN yarn add

COPY . .

RUN yarn build

EXPOSE 3040

CMD ["yarn", "start", "-p", "3040"]