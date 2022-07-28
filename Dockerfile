FROM ubuntu:latest
MAINTAINER Santiago santiagoferrero2000@gmail.com
RUN apt-get update && apt-get install -y bc
COPY "scripts" .  
#EXPOSE 80
#WORKDIR app
#RUN ./menu_de_aplicaciones.sh texto_de_entrada
#RUN cat texto_de_entrada
#CMD pwd | echo 'funciona?'
ENTRYPOINT ["bash", "menu_de_aplicaciones.sh", "texto_de_entrada"]
#ENV PATH "$PATH:/home/santiago/tp-entorno/scripts"
#CMD ["menu_de_aplicaciones.sh", "texto_de_entrada"]  

