## Base ########################################################################
# Use a larger node image to do the build for native deps (e.g., gcc, python)
FROM node:lts as base

WORKDIR /home/node/app

COPY --chown=node:node . /home/node/app

RUN npm install

EXPOSE 3042 

CMD ["npm", "start"]