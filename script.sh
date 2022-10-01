# FROM Instruction
docker build -t adiansyahputra/from from 

docker image ls

# RUN Instruction 
docker build -t adiansyahputra/run run

docker build -t adiansyahputra/run run --progress=plain --no-cache

# CMD Instruction 
docker build -t adiansyahputra/command command 

docker image inspect adiansyahputra/command 

docker container create --name command adiansyahputra/command 

docker container start command 

docker container logs command 

# LABEL Instruction 
docker build -t adiansyahputra/label label 

docker image inspect adiansyahputra/label 

# ADD Instruction
docker build -t adiansyahputra/add add 

docker container create --name add adiansyahputra/add 

docker container start add 

docker container logs add 

# COPY Instruction
docker build -t adiansyahputra/copy copy 

docker container create --name copy adiansyahputra/copy 

docker container start copy 

docker container logs copy 

# IGNORE Instruction 
docker build -t adiansyahputra/ignore ignore 

docker container create --name ignore adiansyahputra/ignore 

docker container start ignore 

docker container logs ignore  

#EXPOSE Instructions 
docker build -t adiansyahputra/expose expose 

docker image inspect adiansyahputra/expose 

docker container create --name expose -p 8080:8080 adiansyahputra/expose 

docker container start expose 

docker container ls 

docker container stop expose  

# ENV Instructions 
docker build -t adiansyahputra/env env

docker image inspect adiansyahputra/env 

docker container create --name env --env APP_PORT=9090 -p 9090:9090 adiansyahputra/env 

docker container start env 

docker container ls 

docker container logs env

docker container stop env  

# VOLUME Instructions
docker build -t adiansyahputra/volume volume

docker image inspect adiansyahputra/volume 

docker container create --name volume -p 8080:8080 adiansyahputra/volume 

docker container start volume  

docker container logs volume

docker container inspect volume

#"addb760be3a6d2bd73f1356ff7de48f703d6d5d5f1fa916f71151c4edcbbb75a"

docker volume ls

# WORKDIR Instruction 
docker build -t adiansyahputra/workdir workdir

docker container create --name workdir -p 8080:8080 adiansyahputra/workdir 

docker container start workdir 

docker container exec -i -t workdir /bin/sh 

# USER Instruction 
docker build -t adiansyahputra/user user

docker container create --name user -p 8080:8080 adiansyahputra/user 

docker container start user 

docker container exec -i -t user /bin/sh 

# ARG Instruction 
docker build -t adiansyahputra/arg arg --build-arg app=pzn 

docker container create --name arg -p 8080:8080 adiansyahputra/arg 

docker container start arg 

docker container exec -i -t arg /bin/sh 

# HEALTHCHECK Instruction 
docker build -t adiansyahputra/health health

docker container create --name health -p 8080:8080 adiansyahputra/health 

docker container start health 

docker container ls 

docker container inspect health

# ENTRYPOINT Instruction 
docker build -t adiansyahputra/entrypoint entrypoint

docker image inspect adiansyahputra/entrypoint

docker container create --name entrypoint -p 8080:8080 adiansyahputra/entrypoint 

docker container start entrypoint 

docker container stop entrypoint 

# Multi Stage Instruction 
docker build -t adiansyahputra/multi multi

docker image ls 

docker container create --name multi -p 8080:8080 adiansyahputra/multi 

docker container start multi 

docker container stop multi 
