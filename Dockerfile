#
# Copyright 2018 Confluent Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM confluentinc/cp-kafka-connect:5.2.1

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"

# Installing all into /usr/share/confluent-hub-components 
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-replicator:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-rabbitmq:latest
RUN confluent-hub install --no-prompt debezium/debezium-connector-sqlserver:latest
RUN confluent-hub install --no-prompt debezium/debezium-connector-postgresql:latest
RUN confluent-hub install --no-prompt debezium/debezium-connector-mysql:latest
RUN confluent-hub install --no-prompt debezium/debezium-connector-mongodb:latest
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-common:latest
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:latest
RUN confluent-hub install --no-prompt thomaskwscott/kafka-connect-shell-sink:latest
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-twitter:latest
RUN confluent-hub install --no-prompt cjmatta/kafka-connect-irc:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-cassandra:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-influxdb:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-neo4j:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-maprdb:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-s3:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-gcs:latest
RUN confluent-hub install --no-prompt thomaskwscott/kafka-connect-http:latest
RUN confluent-hub install --no-prompt hpgrahsl/kafka-connect-mongodb:latest
RUN confluent-hub install --no-prompt thomaskwscott/kafka-connect-shell-source:latest
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-redis:latest
RUN confluent-hub install --no-prompt jaredpetersen/kafka-connect-arangodb:latest
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-solr:latest
RUN confluent-hub install --no-prompt wepay/kafka-connect-bigquery:latest

RUN cd /usr/share/confluent-hub-components && mkdir kafka-connect-cassandra && cd kafka-connect-cassandra && \
 wget https://github.com/Landoop/stream-reactor/releases/download/1.2.1/kafka-connect-cassandra-1.2.1-2.1.0-all.tar.gz && \ 
 tar -xvzf kafka-connect-cassandra-1.2.1-2.1.0-all.tar.gz && \
 rm -f kafka-connect-cassandra-1.2.1-2.1.0-all.tar.gz