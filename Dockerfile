FROM node:lts-alpine as runtime
WORKDIR /app

COPY . .

RUN pnpm install
RUN pnpm run build
RUN pnpm run dev

ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321
CMD node ./dist/server/entry.mjs