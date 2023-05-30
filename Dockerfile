#O Comando FROM faz download da Imagem do Node na versão 18
FROM node:18
#WORKDIR é o diretório onde o projeto será instalado dentro da imagem
WORKDIR /usr/src/app
#Estamos copiando todos os arquivos package json e colando
#dirétorio de trabalho(WORKDIR) app, definido acima
COPY package*.json ./
COPY . .
#Instalando o comando npm install para instalar as dependencias
#do projeto no diretorio app
RUN npm install
#Instalando no sistema o módulo nodemon
RUN npm i -g nodemon
#Expondo a porta de comunicação definida no projeto do node
EXPOSE 5028
#Executar o comando de nodemon index.js quando o container subir
CMD ["nodemon", "index.js"]