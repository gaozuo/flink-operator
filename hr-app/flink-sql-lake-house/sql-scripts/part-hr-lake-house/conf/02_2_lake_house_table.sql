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


CREATE TABLE `HOUSE_WAF_CORE_ENTITY2ITEM`
(
    `ETY_TS`                 TIMESTAMP(3),
    `ETY_EID`                VARCHAR(2147483647) NOT NULL,
    `ETY_CODE`               VARCHAR(2147483647),
    `ETY_NAME`               VARCHAR(2147483647),
    `ETY_TYPE`               VARCHAR(2147483647),
    `ETY_UPDATETABLE`        VARCHAR(2147483647),
    `ETY_PRIMARYKEY`         VARCHAR(2147483647),
    `ETY_RESTRICTION`        VARCHAR(2147483647),
    `ETY_DEFAULTSORT`        VARCHAR(2147483647),
    `ETY_LISTEDITABLE`       VARCHAR(2147483647),
    `ETY_LISTMODSUBMITLEVEL` BIGINT,
    `ETY_LISTMODLIMITCODES`  VARCHAR(2147483647),
    `ETY_LISTDELSUBMITLEVEL` BIGINT,
    `ETY_LISTDELLIMITCODES`  VARCHAR(2147483647),
    `ETY_DYNQUERYBAR`        VARCHAR(2147483647),
    `ETY_PAGINATION`         VARCHAR(2147483647),
    `ETY_PAGEPOSITION`       VARCHAR(2147483647),
    `ETY_PAGESIZE`           BIGINT,
    `ETY_PAGELIST`           VARCHAR(2147483647),
    `ETY_SHOWHEADER`         VARCHAR(2147483647),
    `ETY_ROWNUMBERS`         VARCHAR(2147483647),
    `ETY_SINGLESELECT`       VARCHAR(2147483647),
    `ETY_NOWRAP`             VARCHAR(2147483647),
    `ETY_STRIPED`            VARCHAR(2147483647),
    `ETY_FITCOLUMNS`         VARCHAR(2147483647),
    `ETY_FORMMODSUBMITLEVEL` BIGINT,
    `ETY_FORMMODLIMITCODES`  VARCHAR(2147483647),
    `ETY_SPRINGSPACE`        VARCHAR(2147483647),
    `ETY_JPACKAGE`           VARCHAR(2147483647),
    `ETY_JCO`                VARCHAR(2147483647),
    `ETY_JBO`                VARCHAR(2147483647),
    `ETY_JDAO`               VARCHAR(2147483647),
    `ETY_JVO`                VARCHAR(2147483647),
    `ETY_WLIST`              VARCHAR(2147483647),
    `ETY_WFORM`              VARCHAR(2147483647),
    `ETY_MRUT`               VARCHAR(2147483647),
    `ETY_OPER`               VARCHAR(2147483647),
    `ETY_NOTE`               VARCHAR(2147483647),
    `ETY_COLASORGAN`         VARCHAR(2147483647),
    `ETY_DYNENTITY`          VARCHAR(2147483647),
    `ETY_TOTAL_ROW_REQUIRED` VARCHAR(2147483647),
    `ETYI_TS`               TIMESTAMP(3),
    `ETYI_EIID`             VARCHAR(2147483647) NOT NULL,
    `ETYI_EID`              VARCHAR(2147483647),
    `ETYI_CODE`             VARCHAR(2147483647),
    `ETYI_NAME`             VARCHAR(2147483647),
    `ETYI_SNO`              BIGINT,
    `ETYI_TABLENAME`        VARCHAR(2147483647),
    `ETYI_COLNAME`          VARCHAR(2147483647),
    `ETYI_DATATYPE`         VARCHAR(2147483647),
    `ETYI_LENGTH`           BIGINT,
    `ETYI_FRACTION`         BIGINT,
    `ETYI_NULLABLE`         VARCHAR(2147483647),
    `ETYI_DEFAULTS`         VARCHAR(2147483647),
    `ETYI_INSERTABLE`       VARCHAR(2147483647),
    `ETYI_UPDATABLE`        VARCHAR(2147483647),
    `ETYI_EDITOR`           VARCHAR(2147483647),
    `ETYI_EDITORPARAM`      VARCHAR(2147483647),
    `ETYI_DICTREF`          VARCHAR(2147483647),
    `ETYI_CASCADEPARENT`    VARCHAR(2147483647),
    `ETYI_CHECKBOX`         VARCHAR(2147483647),
    `ETYI_LISTEDITABLE`     VARCHAR(2147483647),
    `ETYI_LISTHIDDEN`       VARCHAR(2147483647),
    `ETYI_WIDTH`            BIGINT,
    `ETYI_ALIGN`            VARCHAR(2147483647),
    `ETYI_HALIGN`           VARCHAR(2147483647),
    `ETYI_RESIZABLE`        VARCHAR(2147483647),
    `ETYI_SORTABLE`         VARCHAR(2147483647),
    `ETYI_FORMEDITABLE`     VARCHAR(2147483647),
    `ETYI_FORMHIDDEN`       VARCHAR(2147483647),
    `ETYI_MRUT`             VARCHAR(2147483647),
    `ETYI_OPER`             VARCHAR(2147483647),
    `ETYI_NOTE`             VARCHAR(2147483647),
    `ETYI_QUERYABLE`        VARCHAR(2147483647),
    `ETYI_QUERYRELATION`    VARCHAR(2147483647),
    `ETYI_EXPORTABLE`       VARCHAR(2147483647),
    `ETYI_DYNENTITYITEM`    VARCHAR(2147483647),
    `ETYI_UPDATEITEMSORT`   VARCHAR(2147483647),
    `ETYI_TOTAL_FIELD`      VARCHAR(2147483647),
    `ETYI_TOTAL_FIELD_NAME` VARCHAR(2147483647),
    PRIMARY KEY (`ETYI_EIID`) NOT ENFORCED
)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hudilakehouse/house/waf_core_entity2item',
    'table.type' = 'COPY_ON_WRITE',
    --'read.streaming.enabled' = 'true', -- this option enable the streaming read
    --'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'cdc.enabled' = 'true',
    'compaction.delta_seconds' = '340',
    'compaction.max_memory' = '100',
    --'compaction.tasks' = '4',
    'compaction.trigger.strategy' = 'num_or_time'
    --'write.tasks' = '6',
    --'read.tasks' = '4',
    --'write.task.max.size' = '256.0'
);


