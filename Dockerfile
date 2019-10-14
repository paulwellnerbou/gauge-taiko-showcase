FROM node:12-stretch-slim

# project dependencies and see https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md#chrome-headless-doesnt-launch-on-unix
RUN apt-get -qq update && apt-get -qq -y install --no-install-recommends \
    imagemagick ghostscript poppler-utils \
    gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget &&\
    rm -rf /var/lib/apt/lists/*

RUN apt-get -qq update && apt-get -qq -y install --no-install-recommends \
    imagemagick ghostscript poppler-utils procps &&\
    rm -rf /var/lib/apt/lists/*

RUN npm install --unsafe-perm -g taiko @getgauge/cli && gauge telemetry off
