# Usar uma imagem do PHP com suporte ao Apache como base
FROM php:8.2-apache

# Copiar o arquivo index.php para o diretório padrão do Apache no container
COPY ./index.php /var/www/html/index.php

# Instalar a extensão mysqli para conexão com o banco de dados MySQL
RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli

# Expor a porta padrão do Apache (80)
EXPOSE 80
