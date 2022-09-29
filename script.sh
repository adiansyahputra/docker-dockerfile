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