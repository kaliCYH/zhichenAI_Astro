FROM node:lts-alpine as runtime
WORKDIR /app

COPY . .

RUN npm install
RUN npm run build
RUN npm run dev > my.log

ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321
CMD node ./dist/server/entry.mjs