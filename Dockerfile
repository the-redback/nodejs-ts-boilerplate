#------------------ Builder Image -----------------
FROM node:16-slim AS builder

RUN apt-get update && apt-get install -y --no-install-recommends dumb-init

WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY tsconfig*.json ./
COPY src src

RUN yarn build

#------------------ Prod Image --------------------
FROM node:16.17.0-bullseye-slim

ENV NODE_ENV production

COPY --from=builder /usr/bin/dumb-init /usr/bin/dumb-init

USER node
WORKDIR /usr/src/app

COPY package.json yarn.lock ./
RUN yarn install --production --frozen-lockfile

COPY --chown=node:node --from=builder /usr/src/app/dist ./dist

CMD ["dumb-init", "node", "dist/index.js"]
