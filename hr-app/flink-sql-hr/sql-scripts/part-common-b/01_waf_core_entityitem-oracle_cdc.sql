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

CREATE TABLE `V1202_WAF_CORE_ENTITYITEM` (
 `TS` TIMESTAMP(3) METADATA FROM 'timestamp',
 `EIID` VARCHAR(2147483647) NOT NULL,
 `EID` VARCHAR(2147483647),
 `CODE` VARCHAR(2147483647),
 `NAME` VARCHAR(2147483647),
 `SNO` BIGINT,
 `TABLENAME` VARCHAR(2147483647),
 `COLNAME` VARCHAR(2147483647),
 `DATATYPE` VARCHAR(2147483647),
 `LENGTH` BIGINT,
 `FRACTION` BIGINT,
 `NULLABLE` VARCHAR(2147483647),
 `DEFAULTS` VARCHAR(2147483647),
 `INSERTABLE` VARCHAR(2147483647),
 `UPDATABLE` VARCHAR(2147483647),
 `EDITOR` VARCHAR(2147483647),
 `EDITORPARAM` VARCHAR(2147483647),
 `DICTREF` VARCHAR(2147483647),
 `CASCADEPARENT` VARCHAR(2147483647),
 `CHECKBOX` VARCHAR(2147483647),
 `LISTEDITABLE` VARCHAR(2147483647),
 `LISTHIDDEN` VARCHAR(2147483647),
 `WIDTH` BIGINT,
 `ALIGN` VARCHAR(2147483647),
 `HALIGN` VARCHAR(2147483647),
 `RESIZABLE` VARCHAR(2147483647),
 `SORTABLE` VARCHAR(2147483647),
 `FORMEDITABLE` VARCHAR(2147483647),
 `FORMHIDDEN` VARCHAR(2147483647),
 `MRUT` VARCHAR(2147483647),
 `OPER` VARCHAR(2147483647),
 `NOTE` VARCHAR(2147483647),
 `QUERYABLE` VARCHAR(2147483647),
 `QUERYRELATION` VARCHAR(2147483647),
 `EXPORTABLE` VARCHAR(2147483647),
 `DYNENTITYITEM` VARCHAR(2147483647),
 `UPDATEITEMSORT` VARCHAR(2147483647),
 `TOTAL_FIELD` VARCHAR(2147483647),
 `TOTAL_FIELD_NAME` VARCHAR(2147483647),
 PRIMARY KEY (`EIID`) NOT ENFORCED
)
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka.confluent:9092',
  'properties.group.id' = 'WAF_CORE_ENTITYITEM',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.WAF_CORE_ENTITYITEM'
);

