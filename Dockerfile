# 指定 node 版本号，满足宿主环境
FROM node:12.13.0

# 指定工作目录，将代码添加至此
WORKDIR /code
ADD . /code

# 如何将项目跑起来
ADD package.json package-lock.json /code

RUN npm install
RUN npm run build
RUN npm run serve
