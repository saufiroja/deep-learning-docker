# FROM INSTRUCTION
docker build -t saufiroja/from from

docker image ls

# RUN INSTRUCTION
docker build -t saufiroja/run run

docker imgae rm saufiroja/run

docker build -t saufiroja/run run --progress=plain --no-cache


# CMD INSTRUCTION
docker build -t saufiroja/cmd cmd

docker image inspect saufiroja/cmd

docker container create --name cmd saufiroja/cmd

docker container start cmd

docker container logs cmd

docker container ls -a

docker run saufiroja/cmd

# LABEL INSTRUCTION
docker build -t saufiroja/label label

docker image inspect saufiroja/label

# ADD INSTRUCTION
docker build -t saufiroja/add add

docker container create --name add saufiroja/add

docker container start add

docker container logs add

docker container ls -a

# COPY INSTRUCTION
docker build -t saufiroja/copy copy

docker container create --name copy saufiroja/copy

docker container start copy

docker container logs copy

# IGNORED INSTRUCTION
docker build -t saufiroja/ignored ignored

docker container create --name ignored saufiroja/ignored

docker container start ignored

docker container logs ignored

# EXPOSE INSTRUCTION
docker build -t saufiroja/expose expose

docker image inspect saufiroja/expose

docker container create --name expose -p 8000:8080 saufiroja/expose

docker container start expose

docker container ls -a

docker container logs expose

# ENV INSTRUCTION
docker build -t saufiroja/env env

docker image inspect saufiroja/env

docker container create --name env --env APP_PORT=8080 -p 8000:8080 saufiroja/env

docker container start env

docker container logs env

# VOLUME INSTRUCTION
docker build -t saufiroja/volume volume

docker image inspect saufiroja/volume

docker container create --name volume --env APP_PORT=8080 -p 8000:8080 saufiroja/volume

docker container start volume

docker container logs volume

docker container inspect volume

docker volume ls

# WORKDIR INSTRUCTION
docker build -t saufiroja/workdir workdir

docker image inspect saufiroja/workdir

docker container create --name workdir -p 8000:8080 saufiroja/workdir

docker container start workdir

docker container exec -it workdir /bin/sh

docker container logs workdir

# USER INSTRUCTION
docker build -t saufiroja/user user

docker image inspect saufiroja/user

docker container create --name user -p 8000:8080 saufiroja/user

docker container start user

docker container exec -it user /bin/sh

docker container logs user

# ARG INSTRUCTION
docker build -t saufiroja/arg arg --build-arg app=pzn

docker image inspect saufiroja/arg

docker container create --name arg -p 8000:8080 saufiroja/arg

docker container start arg

docker container exec -it arg /bin/sh

# HEALTHCHECK INSTRUCTION
docker build -t saufiroja/health health

docker image inspect saufiroja/health

docker container create --name health -p 8000:8080 saufiroja/health

docker container start health

docker container exec -it health /bin/sh

# ENTRYPOINT INSTRUCTION
docker build -t saufiroja/entrypoint entrypoint

docker image inspect saufiroja/entrypoint

docker container create --name entrypoint -p 8000:8080 saufiroja/entrypoint

docker container start entrypoint

docker container exec -it entrypoint /bin/sh

# MULTISTAGE INSTRUCTION
docker build -t saufiroja/multi multi

docker image inspect saufiroja/multi

docker container create --name multi -p 8000:8080 saufiroja/multi

docker container start multi

docker container exec -it multi /bin/sh