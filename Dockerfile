FROM node:9.4.0-alpine
COPY receive_sms.js .
COPY package.json .
COPY w3otp.html .
COPY allmsg.html .
RUN npm install
RUN touch demo.txt
RUN chmod -R 777 w3otp.html
RUN chmod -R 777 allmsg.html
EXPOSE  3000
CMD node receive_sms.js
