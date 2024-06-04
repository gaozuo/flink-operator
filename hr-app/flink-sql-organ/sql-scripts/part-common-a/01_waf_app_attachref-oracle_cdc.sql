/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

CREATE TABLE `V1202_WAF_APP_ATTACHREF` (
   `TS` TIMESTAMP(3) METADATA FROM 'timestamp',
   `UUID` VARCHAR(2147483647) NOT NULL,
   `BIZID` VARCHAR(2147483647),
   `EIID` VARCHAR(2147483647),
   `ATTACHID` VARCHAR(2147483647),
   `SNO` BIGINT,
   `EID` VARCHAR(2147483647),
   PRIMARY KEY (`UUID`) NOT ENFORCED
)
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka.confluent:9092',
  'properties.group.id' = 'WAF_APP_ATTACHREF',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.WAF_APP_ATTACHREF'
);

