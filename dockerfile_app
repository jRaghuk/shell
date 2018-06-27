FROM java:8
COPY /target/pq-metrics-poc.war  pq-metrics-poc.war
RUN bash -c 'touch /pq-metrics-poc.war'
ENTRYPOINT ["java","-jar","/pq-metrics-poc.war"]
