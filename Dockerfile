FROM node:12-alpine
MAINTAINER Dmitry Landa <dmitry.landa@noveogroup.com>

COPY ./ /application
RUN chown -R node:node /application

USER node
WORKDIR /application
RUN yarn install
