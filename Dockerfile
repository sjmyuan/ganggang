FROM nikolaik/python-nodejs:python3.8-nodejs14

RUN pip install --timeout 60 awscli

RUN mkdir /home/app

WORKDIR /app

COPY . ./

RUN npm install -g hexo-cli

RUN npm install

CMD hexo s


