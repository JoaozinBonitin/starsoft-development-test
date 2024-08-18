FROM python:3.12-slim

# definição do diretório dentro do container
WORKDIR /app

# Instalação de Todas as dependências necessarias para rodar o projeto
RUN pip install flask
RUN pip install -U langchain-community
RUN pip install cmake
RUN apt-get update && apt-get install -y build-essential  
RUN pip install fastembed  
RUN pip install pdfplumber
RUN pip install chromadb

COPY . .

EXPOSE 8080
