FROM ubuntu:22.04
RUN apt-get update && apt-get install -y apache2 wget zip unzip
ADD https://www.tooplate.com/zip-templates/2121_wave_cafe.zip /var/www/html
WORKDIR /var/www/html
RUN unzip -o 2121_wave_cafe.zip
RUN cp -r 2121_wave_cafe/* .
RUN rm -rf 2121_wave_cafe 2121_wave_cafe.zip
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80 30000
