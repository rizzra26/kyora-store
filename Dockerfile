FROM node:18

WORKDIR /app

RUN npm install -g pnpm

COPY package.json package-lock.json* pnpm-lock.yaml* ./ 

RUN pnpm install

COPY . .

RUN pnpm run build

EXPOSE 3040

CMD ["pnpm", "run", "start", "-p", "3040"]