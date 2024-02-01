FROM mysql:5.6

LABEL maintainer="delano@ufscar.br"

ENV MYSQL_ROOT_PASSWORD secret
ENV MYSQL_DATABASE loja_schema
ENV MYSQL_USER loja
ENV MYSQL_PASSWORD=lojasecret

COPY schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306
