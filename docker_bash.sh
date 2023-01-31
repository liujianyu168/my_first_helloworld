#!/bin/bash

mkdir docker_bash ~/

cd ~/docker_bash

touch hello_world.sh

echo "#!/bin/bash

echo 'Hello World!'" > hello_world.sh
    
touch Dockerfile

echo 'FROM bash
MAINTAINER 1335756271@qq.com
COPY . ~/docker_bash/ljy-bash-helloworld
WORKDIR ~/docker_bash/ljy-bash-helloworld
CMD ["sh","hello_world.sh"]' > Dockerfile

docker build -t bash_world:latest .

docker run -t bash_world:latest
