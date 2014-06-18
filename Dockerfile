FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y build-essential nodejs npm python ruby-dev
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN gem install jekyll
RUN npm install -g grunt-cli

ADD . /code
WORKDIR /code

RUN npm install

CMD ["jekyll", "serve", "--watch", "--force_polling"]
