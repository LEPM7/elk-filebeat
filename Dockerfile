FROM sebp/elk

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.4.0-amd64.deb

RUN dpkg -i filebeat-7.4.0-amd64.deb 

RUN service filebeat start
