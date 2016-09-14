FROM php:7.0-fpm

MAINTAINER Azizur Rahman (azizur.com)

LABEL Description="PHPBack is an open source feedback system" Vendor="ProDevStudio" Version="1.0"

RUN \
  apt-get update && \
  apt-get install -y \
  git \
  && echo "Europe/London" > /etc/timezone \
  && dpkg-reconfigure --frontend noninteractive tzdata \
  && apt-get clean \
  && apt-get autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN \
  docker-php-ext-install mysqli \
  && apt-get clean \
  && apt-get autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./php.ini /usr/local/etc/php/conf.d/
COPY ./default.conf /usr/local/etc/php-fpm.d/www.conf

# ADD ./phpback /var/www/phpback

WORKDIR /var/www/phpback

EXPOSE 9000
