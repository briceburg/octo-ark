FROM node:4
RUN echo "updating npm ...." && \
  curl -L https://npmjs.org/install.sh | sh

COPY /src /src
WORKDIR /src
RUN npm install
CMD ["npm", "start"]
