FROM mysql:5.6

MAINTAINER minimum@cepave.com

# Install Open-Falcon Database
COPY scripts /scripts

COPY entrypoint.sh /entrypoint.sh

# Port
EXPOSE 3306

# Run MySQL
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
