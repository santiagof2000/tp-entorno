FROM ubuntu:22.04
MAINTAINER Santiago santiagoferrero2000@gmail.com
RUN apt-get update && apt-get upgrade 
RUN apt-get install -y bc
#COPY "scripts" .  
#ADD ["blankLinesCounter.sh", "findNames.sh", "menu_de_aplicaciones.sh", "statsSentences.sh", "statsUsageWords.sh", "statsWords.sh", "texto_de_entrada"] ./
ADD . .
#EXPOSE 80
#WORKDIR app
#RUN ./menu_de_aplicaciones.sh texto_de_entrada
#RUN cat texto_de_entrada
#CMD pwd | echo 'funciona?'
ENTRYPOINT ["bash", "menu_de_aplicaciones.sh", "texto_de_entrada"]
#ENV PATH "$PATH:/home/santiago/tp-entorno/scripts"
#CMD ["menu_de_aplicaciones.sh", "texto_de_entrada"]  

