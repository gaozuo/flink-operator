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
CREATE TABLE `V1202_WAF_AC_USER` (
 `TS` TIMESTAMP(3) METADATA FROM 'timestamp',
 `USERID` VARCHAR(2146473647) NOT NULL,
 `ACCOUNT` VARCHAR(2146473647),
 `NAME` VARCHAR(2146473647),
 `PASSWORD` VARCHAR(2146473647),
 `STATUS` VARCHAR(2146473647),
 `PHONE` VARCHAR(2146473647),
 `MOBILE` VARCHAR(2146473647),
 `EMAIL` VARCHAR(2146473647),
 `CODE` VARCHAR(2146473647),
 `PHOTO` VARCHAR(2146473647),
 `IDCARD` VARCHAR(2146473647),
 `BIRTHDAY` VARCHAR(2146473647),
 `MRUT` VARCHAR(2146473647),
 `OPER` VARCHAR(2146473647),
 `EMPID` VARCHAR(2146473647),
 `CAID` VARCHAR(2146473647),
 `USAPID` VARCHAR(2146473647),
 `SYS_TYPE` VARCHAR(2146473647),
 `INITPASSWORD` VARCHAR(2146473647),
 `PSERRORCOUNT` BIGINT,
 `PSLASTERRORTIME` VARCHAR(2146473647),
 PRIMARY KEY (`USERID`) NOT ENFORCED
)
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka.confluent:9092',
  'properties.group.id' = 'WAF_AC_USER',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.WAF_AC_USER'
);

