FROM node:8-alpine

RUN npm i -g docusaurus-init
WORKDIR /opt/docusaurus
RUN docusaurus-init
WORKDIR /opt/docusaurus/website

EXPOSE 8080

CMD npm run -s start -- --port 8080
