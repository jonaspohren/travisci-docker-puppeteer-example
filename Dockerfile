FROM node:alpine
WORKDIR /var/app
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser
COPY . .
RUN apk add chromium && \
    apk add yarn && \
    yarn install
CMD ["npm", "start"]