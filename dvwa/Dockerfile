# Forked from https://github.com/citizen-stig/dockerdvwa
# USAGE:
#       docker run \
#         --name dvwa \
#         -p 80:80 \
#         -p 3306:3306 \
#         -e MYSQL_PASS="test" \
#         -e DVWA_RECAPTCHA_PUBLIC_KEY="" \
#         -e DVWA_RECAPTCHA_PRIVATE_KEY="" \
#          benoitg/dvwa
```
FROM tutum/lamp:latest
MAINTAINER Benoit Galati <benoit.galati@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN \
  rm -fr /app/* && \
  apt-get update && apt-get install -yqq wget unzip php5-gd && \
  rm -rf /var/lib/apt/lists/* && \
  wget https://github.com/RandomStorm/DVWA/archive/v1.9.zip  && \
  unzip /v1.9.zip && \
  rm -rf app/* && \
  cp -r /DVWA-1.9/* /app && \
  rm -rf /DVWA-1.9 && \
  sed -i "s/^\$_DVWA\[ 'db_user' \] = 'root'/\$_DVWA[ 'db_user' ] = 'admin'/g" /app/config/config.inc.php && \
  echo "sed -i \"s/p@ssw0rd/\$PASS/g\" /app/config/config.inc.php" >> /create_mysql_admin_user.sh  && \
  echo 'session.save_path = "/tmp"' >> /etc/php5/apache2/php.ini && \
  chown -R www-data:www-data app/ && \
  sed -i "s/^\$_DVWA\[ 'recaptcha_public_key' \]  = ''/\$_DVWA[ 'recaptcha_public_key' ]  = getenv('DVWA_RECAPTCHA_PUBLIC_KEY')/g" /app/config/config.inc.php && \
  sed -i "s/^\$_DVWA\[ 'recaptcha_private_key' \] = ''/\$_DVWA[ 'recaptcha_private_key' ] = getenv('DVWA_RECAPTCHA_PRIVATE_KEY')/g" /app/config/config.inc.php

COPY php.ini /etc/php5/apache2/conf.d/php.ini

EXPOSE 80 3306

CMD ["/run.sh"]
