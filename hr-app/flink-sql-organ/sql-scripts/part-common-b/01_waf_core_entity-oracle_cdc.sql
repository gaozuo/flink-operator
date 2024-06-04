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

CREATE TABLE `V1202_WAF_CORE_ENTITY` (
 `TS` TIMESTAMP(3) METADATA FROM 'timestamp',
 `EID` VARCHAR(2147483647) NOT NULL,
 `CODE` VARCHAR(2147483647),
 `NAME` VARCHAR(2147483647),
 `TYPE` VARCHAR(2147483647),
 `UPDATETABLE` VARCHAR(2147483647),
 `PRIMARYKEY` VARCHAR(2147483647),
 `RESTRICTION` VARCHAR(2147483647),
 `DEFAULTSORT` VARCHAR(2147483647),
 `LISTEDITABLE` VARCHAR(2147483647),
 `LISTMODSUBMITLEVEL` BIGINT,
 `LISTMODLIMITCODES` VARCHAR(2147483647),
 `LISTDELSUBMITLEVEL` BIGINT,
 `LISTDELLIMITCODES` VARCHAR(2147483647),
 `DYNQUERYBAR` VARCHAR(2147483647),
 `PAGINATION` VARCHAR(2147483647),
 `PAGEPOSITION` VARCHAR(2147483647),
 `PAGESIZE` BIGINT,
 `PAGELIST` VARCHAR(2147483647),
 `SHOWHEADER` VARCHAR(2147483647),
 `ROWNUMBERS` VARCHAR(2147483647),
 `SINGLESELECT` VARCHAR(2147483647),
 `NOWRAP` VARCHAR(2147483647),
 `STRIPED` VARCHAR(2147483647),
 `FITCOLUMNS` VARCHAR(2147483647),
 `FORMMODSUBMITLEVEL` BIGINT,
 `FORMMODLIMITCODES` VARCHAR(2147483647),
 `SPRINGSPACE` VARCHAR(2147483647),
 `JPACKAGE` VARCHAR(2147483647),
 `JCO` VARCHAR(2147483647),
 `JBO` VARCHAR(2147483647),
 `JDAO` VARCHAR(2147483647),
 `JVO` VARCHAR(2147483647),
 `WLIST` VARCHAR(2147483647),
 `WFORM` VARCHAR(2147483647),
 `MRUT` VARCHAR(2147483647),
 `OPER` VARCHAR(2147483647),
 `NOTE` VARCHAR(2147483647),
 `COLASORGAN` VARCHAR(2147483647),
 `DYNENTITY` VARCHAR(2147483647),
 `TOTAL_ROW_REQUIRED` VARCHAR(2147483647),
 PRIMARY KEY (`EID`) NOT ENFORCED
)
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka.confluent:9092',
  'properties.group.id' = 'WAF_CORE_ENTITY',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.WAF_CORE_ENTITY'
);

