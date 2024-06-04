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


CREATE TABLE `WAF_AC_ORGAN2BIZ` (
    `TS` TIMESTAMP(3) METADATA FROM 'timestamp',
    `O2BID` VARCHAR(2147483647) NOT NULL,
    `BIZTYPE` VARCHAR(2147483647),
    `OID` VARCHAR(2147483647),
    `POID` VARCHAR(2147483647),
    `GPOID` VARCHAR(2147483647),
    `GOID` VARCHAR(2147483647),
    `COID` VARCHAR(2147483647),
    `ORULE` VARCHAR(2147483647),
    `SNO` BIGINT,
    `TYPE` VARCHAR(2147483647),
    `MRUT` VARCHAR(2147483647),
    `OPER` VARCHAR(2147483647),
    `NOTE` VARCHAR(2147483647),
    `STARTDATE` VARCHAR(2147483647),
    `TYPEEXT` VARCHAR(2147483647),
    `GRULE` VARCHAR(2147483647),
    `STATE` VARCHAR(2147483647),
    `GLOBAL_SNO` VARCHAR(2147483647),
    `BIZATTR1` VARCHAR(2147483647),
    `BIZATTR2` VARCHAR(2147483647),
    `BIZATTR3` VARCHAR(2147483647),
    `BIZATTR4` VARCHAR(2147483647),
    PRIMARY KEY (`O2BID`) NOT ENFORCED
)
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka.confluent:9092',
  'properties.group.id' = 'WAF_AC_ORGAN2BIZ',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.WAF_AC_ORGAN2BIZ'
);




