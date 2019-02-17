FROM node:alpine
WORKDIR /var/app
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
COPY . .
RUN apk add chromium && \
    apk add yarn && \
    yarn install
CMD ["npm", "start"]