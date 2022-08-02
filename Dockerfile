FROM ubuntu:22.04
MAINTAINER Santiago santiagoferrero2000@gmail.com
RUN apt-get update && apt-get upgrade 
RUN apt-get install -y bc
ADD . /tp-entorno
WORKDIR /tp-entorno
RUN sed -i -e "s/\r$//" $(ls | grep .sh)
CMD ["menu_de_aplicaciones.sh", "texto_de_entrada"]
ENTRYPOINT ["bash"]

