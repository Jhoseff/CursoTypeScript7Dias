FROM node:24-alpine

WORKDIR /app

RUN npm i -g typescript

COPY . .

EXPOSE 3000 

# Deixamos o container rodando em segundore plano esperando instruções
CMD ["tail", "-f", "/dev/null"]


### COMPILANDO A IMAGEM DO NODEJS USANDO O DOCKERFILE ###
# docker build -t node:dev .

### CRIANDO O CONTAINER E EXECUTANDO mapeando o volume ${PWD} caminho onde está executando os comandos   ###
# docker run -dit --name node -v ${PWD}:/app -w /app -p 3000:3000 node:dev

#docker start node >>> Inicia o container
#docker stop node >>> Para o container
#docker rm node >>> Remove o container
#docker exec -it node sh >>> Acessa o container
#docker exec -it node sh -c "ls" >>> Executa o comando ls dentro do container