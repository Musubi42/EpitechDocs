## Base ########################################################################
# Use a larger node image to do the build for native deps (e.g., gcc, python)
FROM node:lts-alpine as base

WORKDIR /home/node/docusaurus

COPY --chown=node:node . /home/node/docusaurus/

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]