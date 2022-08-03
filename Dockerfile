FROM ubuntu:22.04
MAINTAINER Santiago santiagoferrero2000@gmail.com
RUN apt-get update && apt-get upgrade 
RUN apt-get install -y bc
#RUN apt-get install -y dos2unix
ADD . /tp-entorno
WORKDIR /tp-entorno
RUN sed -i -e 's/\r//' $(ls | grep .sh)
RUN sed -i -e 's/\r//' texto_de_entrada.txt
CMD ["menu_de_aplicaciones.sh", "texto_de_entrada.txt"]
ENTRYPOINT ["bash"]

