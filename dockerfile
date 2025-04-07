# Usar uma imagem do PHP como base
FROM php:8.2-apache

# Copiar o código PHP para o container
COPY ./app /var/www/html

# Ativar exibição de erros no PHP
RUN docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli

# Expor a porta do Apache
EXPOSE 80
