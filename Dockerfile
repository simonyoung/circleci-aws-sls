# Docker file to run Serverless, AWS CLI and EB CLI tools
FROM circleci/node:8.10
LABEL maintainer="Simon Young <simon180@mac.com>"

RUN sudo apt-get install python-dev
RUN sudo apt-get install python-pip
#RUN sudo python -m pip install --upgrade pip

RUN sudo pip install --upgrade pip \
        awsebcli \
        awscli

RUN yarn global add serverless
