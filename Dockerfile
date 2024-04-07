FROM node:lts-alpine as base
WORKDIR /base
COPY ./package.json ./package.json
RUN yarn install
COPY ./ ./

FROM base AS dev
ENV NODE_ENV=development
EXPOSE 4321
CMD ["yarn","start"]