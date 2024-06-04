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

CREATE TABLE `BORG_JGXX_SHAREHOLDER` (
`TS` TIMESTAMP(3) METADATA FROM 'timestamp',
`ID` VARCHAR(2147483647) NOT NULL,
`BORGID` VARCHAR(2147483647),
`SHARTYPE` VARCHAR(2147483647),
`SHARID` VARCHAR(2147483647),
`SHARNAME` VARCHAR(2147483647),
`CREDENTIALS` VARCHAR(2147483647),
`CONTRIBUTIVEMANNER` VARCHAR(2147483647),
`CONTRIBUTIVEMONEY` VARCHAR(2147483647),
`SHAREHOLDING` VARCHAR(2147483647),
`SHARREPRESENTATIVE` VARCHAR(2147483647),
`DUTY` VARCHAR(2147483647),
`REMARK` VARCHAR(2147483647),
`BORGCODE` VARCHAR(2147483647),
`BORGNAME` VARCHAR(2147483647),
`SHARSTRUCTURE` VARCHAR(2147483647),
`SHAREHOLDINGMANNER` VARCHAR(2147483647),
`SERIALNUMBER` VARCHAR(2147483647),
`SHAREHOLDINGRATIO` VARCHAR(2147483647),
`NATURE` VARCHAR(2147483647),
`CAREA` VARCHAR(2147483647),
`BJSSJJE` VARCHAR(2147483647),
`BJSRJJE` VARCHAR(2147483647),
`BJSCZQX` VARCHAR(2147483647),
PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka.confluent:9092',
  'properties.group.id' = 'BORG_JGXX_SHAREHOLDER',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.BORG_JGXX_SHAREHOLDER'
);

