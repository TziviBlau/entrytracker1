# דוגמה ל-Node.js, תתאים לפי הקוד שלך
FROM node:18-alpine

WORKDIR /app

COPY src/ ./

RUN npm install

EXPOSE 5000

CMD ["node", "index.js"]
