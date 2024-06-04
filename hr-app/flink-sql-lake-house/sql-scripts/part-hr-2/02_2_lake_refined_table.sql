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

CREATE TABLE `LAKE_REFINED_OPERATION_ENTITY`
(
    `TS`        TIMESTAMP(3),
    `TYPE_CODE` VARCHAR(2147483647),
    `CODE`      VARCHAR(2147483647),
    `NAME`      VARCHAR(2147483647),
    `OPER`      VARCHAR(2147483647),
    `NOTE`      VARCHAR(2147483647),
    PRIMARY KEY (`CODE`) NOT ENFORCED
)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi_lake_refined_operation_entity',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true'
);

CREATE TABLE `LAKE_REFINED_CONFIG_ENTITY_TYPE`
(
    `TS`        TIMESTAMP(3),
    `TYPE_CODE`  VARCHAR(2147483647),
    `TYPE_NAME`  VARCHAR(2147483647),
    PRIMARY KEY (`TYPE_CODE`) NOT ENFORCED
)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi_lake_refined_config_entity_type',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true'
);

CREATE TABLE `LAKE_REFINED_CONFIG_ENTITY_DUTY_TYPE`
(
    `TS`        TIMESTAMP(3),
    `DUTY_TYPE_ID`  VARCHAR(2147483647),
    `DUTY_TYPE_NAME`  VARCHAR(2147483647),
    PRIMARY KEY (`DUTY_TYPE_ID`) NOT ENFORCED
)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi_lake_refined_config_entity_duty_type',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true'
);

CREATE TABLE `LAKE_REFINED_OPERATION_ENTITY_DUTY`
(
    `TS`        TIMESTAMP(3),
    `DUTY_ID`  VARCHAR(2147483647),
    `DUTY_TYPE_ID`  VARCHAR(2147483647),
    `DUTY_MASTER`  VARCHAR(2147483647),
    `DUTY_SLAVE`   VARCHAR(2147483647),
    PRIMARY KEY (`DUTY_ID`) NOT ENFORCED
)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi_lake_refined_operation_entity_duty',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true'
);


-----------------------------





---------------------------------


CREATE TABLE `LAKE_REFINED_ENTITY`
(
    `TS`        TIMESTAMP(3),
    `ENTITY_ID`  VARCHAR(2147483647),
    `ENTITY_TYPE`  VARCHAR(2147483647),
    `OPERATOR`  VARCHAR(2147483647),
    PRIMARY KEY (`ENTITY_ID`) NOT ENFORCED
)
PARTITIONED BY (`ENTITY_TYPE`)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi_lake_refined_entity',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true'
);

CREATE TABLE `LAKE_REFINED_ENTITY_RELATION`
(
    `TS`         TIMESTAMP(3),
    `ENTITY_RELATION_ID`  VARCHAR(2147483647),
    `ENTITY_ID`  VARCHAR(2147483647),
    `ENTITY_REF` VARCHAR(2147483647),
    `OPERATION`  VARCHAR(2147483647),
    PRIMARY KEY (`ENTITY_RELATION_ID`) NOT ENFORCED
)
PARTITIONED BY (`ENTITY_ID`)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi_lake_refined_entity_relation',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true'
);


CREATE TABLE `LAKE_REFINED_ENTITY_PROPERTY`
(
    `TS`         TIMESTAMP(3),
    `ENTITY_PROPERTY_ID`  VARCHAR(2147483647),
    `ENTITY_ID`  VARCHAR(2147483647),
    `PROP_TYPE` VARCHAR(2147483647),
    `PROP_KEY` VARCHAR(2147483647),
    `PROP_VAL`  VARCHAR(2147483647),
    `PROP_SNO`  BIGINT,
    PRIMARY KEY (`ENTITY_PROPERTY_ID`) NOT ENFORCED
)
PARTITIONED BY (`ENTITY_ID`)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi_lake_refined_entity_property',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true'
);

CREATE TABLE `LAKE_REFINED_ENTITY_PERMISSION`
(
    `TS`         TIMESTAMP(3),
    `ENTITY_PERMISSION_ID`  VARCHAR(2147483647),
    `ENTITY_ID`  VARCHAR(2147483647),
    `PERMISSION_PATH` VARCHAR(2147483647),
    `PERMISSION_TYPE`  VARCHAR(2147483647),
    PRIMARY KEY (`ENTITY_PERMISSION_ID`) NOT ENFORCED
)
PARTITIONED BY (`PERMISSION_TYPE`)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi_lake_refined_entity_permission',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true'
);
