FROM nikolaik/python-nodejs:python3.8-nodejs14

RUN pip install --timeout 60 awscli

RUN mkdir /home/app

WORKDIR /app

COPY . ./

RUN npm install -g hexo-cli

RUN npm install

#ENV AWS_REGION
#ENV AWS_ACCESS_KEY_ID
#ENV AWS_SECRET_ACCESS_KEY
#ENV AWS_BUCKET

CMD auto/deploy


