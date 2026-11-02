FROM node:24-alpine

WORKDIR /app

RUN npm i -g typescript

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]


### COMPILANDO A IMAGEM DO NODEJS USANDO O DOCKERFILE ###
# docker build -t node:curso .

### CRIANDO O CONTAINER E EXECUTANDO ###
# docker run -dp 3000:3000 --name node node:curso

### CRIANDO O CONTAINER EM MODO INTERATIVO ###
# docker run -it -p 3000:3000 --name node-interativo node:curso sh

#docker start node >>> Inicia o container
#docker stop node >>> Para o container
#docker rm node >>> Remove o container

#docker images >>> Lista as imagens criadas
#docker ps >>> Lista os containers em execução
#docker ps -a >>> Lista todos os containers, inclusive os que não estão em execução
#docker logs node >>> Mostra os logs do container
#docker exec -it node sh >>> Acessa o container
#docker exec -it node sh -c "ls" >>> Executa o comando ls dentro do container


### SEM O DOCKERFILE ###
# O Docker possui instruções específicas de instalação para cada sistema operacional.
# Consulte a documentação oficial em https://docker.com/get-started/

# Baixar a imagem Docker do Node.js:
#docker pull node:24-alpine

# Criar um contêiner do Node.js e iniciar uma sessão Shell:
#docker run -it --rm --entrypoint sh node:24-alpine

# Verifique a versão do Node.js:
#node -v # Deve exibir "v24.22.1".

# Verificar a versão do npm:
#npm -v # Deve imprimir "11.19.1".