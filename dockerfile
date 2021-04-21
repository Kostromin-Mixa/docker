FROM node
WORKDIR /var
RUN apt update
RUN git clone https://github.com/simplicitesoftware/nodejs-demo
RUN cd nodejs-demo && npm install
WORKDIR /var/nodejs-demo
RUN sed -i 's/localhost/0.0.0.0/g' app.js
EXPOSE 3000
CMD ["npm", "start"]