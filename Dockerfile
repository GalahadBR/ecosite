FROM node:latest
WORKDIR "/bin/www"
COPY ./package.json ./
RUN npm install
COPY . .
CMD ["npm", "run", "start"]
EXPOSE 3030
