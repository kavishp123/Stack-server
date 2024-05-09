FROM node:20.11.1

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=5000
ENV CONNECTION_URL=mongodb+srv://admin:admin@stack-overflow-clone.p1irn7q.mongodb.net/?retryWrites=true&w=majority
ENV JWT_SECRET=test

EXPOSE 5000

CMD ["npm", "start"]

