
FROM ubuntu:latest
WORKDIR /app
COPY scripts/am-i-ubuntu.sh /app/am-i-ubuntu.sh
#cette partie est necessaire, je suis sur windows donc sans ca ca marche pas a cause des métas datas je crois
RUN apt-get update && apt-get install -y dos2unix && dos2unix /app/am-i-ubuntu.sh
RUN chmod +x /app/am-i-ubuntu.sh
ENTRYPOINT ["/app/am-i-ubuntu.sh"]
