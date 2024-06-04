################################################################################
#  Licensed to the Apache Software Foundation (ASF) under one
#  or more contributor license agreements.  See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

FROM flink:1.17.1-scala_2.12-java11

RUN mkdir /opt/flink/usrlib
ADD target/flink-sql-organ-*.jar /opt/flink/usrlib/sql-runner.jar
ADD target/sql-scripts /opt/flink/usrlib/sql-scripts
ADD https://repo1.maven.org/maven2/org/apache/flink/flink-s3-fs-hadoop/1.17.1/flink-s3-fs-hadoop-1.17.1.jar /opt/flink/plugins/s3-fs-hadoop/

RUN chmod -R 755 /opt/flink/usrlib
RUN chmod -R 755 /opt/flink/plugins/s3-fs-hadoop
