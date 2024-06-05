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

CREATE TABLE `WAF_CORE_ENTITY`
(
    `TS`                 TIMESTAMP(3) METADATA FROM 'timestamp',
    `EID`                VARCHAR(2147483647) NOT NULL,
    `CODE`               VARCHAR(2147483647),
    `NAME`               VARCHAR(2147483647),
    `TYPE`               VARCHAR(2147483647),
    `UPDATETABLE`        VARCHAR(2147483647),
    `PRIMARYKEY`         VARCHAR(2147483647),
    `RESTRICTION`        VARCHAR(2147483647),
    `DEFAULTSORT`        VARCHAR(2147483647),
    `LISTEDITABLE`       VARCHAR(2147483647),
    `LISTMODSUBMITLEVEL` BIGINT,
    `LISTMODLIMITCODES`  VARCHAR(2147483647),
    `LISTDELSUBMITLEVEL` BIGINT,
    `LISTDELLIMITCODES`  VARCHAR(2147483647),
    `DYNQUERYBAR`        VARCHAR(2147483647),
    `PAGINATION`         VARCHAR(2147483647),
    `PAGEPOSITION`       VARCHAR(2147483647),
    `PAGESIZE`           BIGINT,
    `PAGELIST`           VARCHAR(2147483647),
    `SHOWHEADER`         VARCHAR(2147483647),
    `ROWNUMBERS`         VARCHAR(2147483647),
    `SINGLESELECT`       VARCHAR(2147483647),
    `NOWRAP`             VARCHAR(2147483647),
    `STRIPED`            VARCHAR(2147483647),
    `FITCOLUMNS`         VARCHAR(2147483647),
    `FORMMODSUBMITLEVEL` BIGINT,
    `FORMMODLIMITCODES`  VARCHAR(2147483647),
    `SPRINGSPACE`        VARCHAR(2147483647),
    `JPACKAGE`           VARCHAR(2147483647),
    `JCO`                VARCHAR(2147483647),
    `JBO`                VARCHAR(2147483647),
    `JDAO`               VARCHAR(2147483647),
    `JVO`                VARCHAR(2147483647),
    `WLIST`              VARCHAR(2147483647),
    `WFORM`              VARCHAR(2147483647),
    `MRUT`               VARCHAR(2147483647),
    `OPER`               VARCHAR(2147483647),
    `NOTE`               VARCHAR(2147483647),
    `COLASORGAN`         VARCHAR(2147483647),
    `DYNENTITY`          VARCHAR(2147483647),
    `TOTAL_ROW_REQUIRED` VARCHAR(2147483647),
    PRIMARY KEY (`EID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.WAF_CORE_ENTITY'
    );

CREATE TABLE `BORG_JGXX_BASEINFO`
(
    `TS`                       TIMESTAMP(3) METADATA FROM 'timestamp',
    `ID`                       VARCHAR(2147483647),
    `BORGID`                   VARCHAR(2147483647),
    `ENTERPRISENAME`           VARCHAR(2147483647),
    `REGISTERCODE`             VARCHAR(2147483647),
    `BORGTYPE`                 VARCHAR(2147483647),
    `CORPORATION`              VARCHAR(2147483647),
    `REGISTERCAPITAL`          VARCHAR(2147483647),
    `PAIDCAPITAL`              VARCHAR(2147483647),
    `REGISTERDATE`             VARCHAR(2147483647),
    `OPERATINGPERIOD`          VARCHAR(2147483647),
    `DOMICILE`                 VARCHAR(2147483647),
    `ENTERPRISLEVEL`           VARCHAR(2147483647),
    `SHAREHOLDINGS`            VARCHAR(2147483647),
    `BUSINESSAREAS`            VARCHAR(2147483647),
    `EMPLOYEESNUM`             VARCHAR(2147483647),
    `REGIONALATTRIBUTE`        VARCHAR(2147483647),
    `REGISTERADDRESS`          VARCHAR(2147483647),
    `REGISTERORGAN`            VARCHAR(2147483647),
    `REGISTERSTATUS`           VARCHAR(2147483647),
    `REMARK`                   VARCHAR(2147483647),
    `ENTERPRISECODE`           VARCHAR(2147483647),
    `BORGCODE`                 VARCHAR(2147483647),
    `SHORTNAME`                VARCHAR(2147483647),
    `ENGLISHNAME`              VARCHAR(2147483647),
    `ENGLISHSHORTNAME`         VARCHAR(2147483647),
    `EXPIRYDATE`               VARCHAR(2147483647),
    `ENTERPRISENATURE`         VARCHAR(2147483647),
    `KONGGGD`                  VARCHAR(2147483647),
    `BINGBDW`                  VARCHAR(2147483647),
    `KONGGOID`                 VARCHAR(2147483647),
    `BINGBOID`                 VARCHAR(2147483647),
    `ISYJ`                     VARCHAR(2147483647),
    `YJSJ`                     VARCHAR(2147483647),
    `CGZT`                     VARCHAR(2147483647),
    `BGRQ`                     VARCHAR(2147483647),
    `PIZDW`                    VARCHAR(2147483647),
    `PIZDWOID`                 VARCHAR(2147483647),
    `ZZXS`                     VARCHAR(2147483647),
    `YJTJ`                     VARCHAR(2147483647),
    `PARENT_CGQK`              VARCHAR(2147483647),
    `PARENT_CGZT`              VARCHAR(2147483647),
    `SJYJSJ`                   VARCHAR(2147483647),
    `PHONE`                    VARCHAR(2147483647),
    `LXR`                      VARCHAR(2147483647),
    `SJYJTJ`                   VARCHAR(2147483647),
    `BJBADDMODE`               VARCHAR(2147483647),
    `BJBPZWH`                  VARCHAR(2147483647),
    `BJBCZSJ`                  VARCHAR(2147483647),
    `BJBISDLKH`                VARCHAR(2147483647),
    `BJBISSDFA`                VARCHAR(2147483647),
    `BJBISHGQY`                VARCHAR(2147483647),
    `BJBLOGO`                  VARCHAR(2147483647),
    `BJBGW`                    VARCHAR(2147483647),
    `BJBYX`                    VARCHAR(2147483647),
    `BJBGSJJ`                  VARCHAR(2147483647),
    `BJBZCZBBZ`                VARCHAR(2147483647),
    `BJBSSZBBZ`                VARCHAR(2147483647),
    `OFFICE_LOCATION_PROVINCE` VARCHAR(2147483647),
    `OFFICE_LOCATION_CITY`     VARCHAR(2147483647),
    `JOINT_OFFICE`             VARCHAR(2147483647),
    `JOINT_OFFICE_UNIT`        VARCHAR(2147483647),
    `DOC_FILING`               VARCHAR(2147483647),
    `DOC_FILING_DATE`          VARCHAR(2147483647),
    `NDRC_FILING`              VARCHAR(2147483647),
    `NDRC_FILING_DATE`         VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.BORG_JGXX_BASEINFO'
);



CREATE TABLE `HR_EMP_BASICINFO`
(
    `TS`                        TIMESTAMP(3) METADATA FROM 'timestamp',
    `EMPCODE`                   VARCHAR(2147483647),
    `NAME`                      VARCHAR(2147483647),
    `NAMESPELL`                 VARCHAR(2147483647),
    `ENNAME`                    VARCHAR(2147483647),
    `NAMEUSED`                  VARCHAR(2147483647),
    `CERTTYPE`                  VARCHAR(2147483647),
    `CERTNO`                    VARCHAR(2147483647),
    `SEX`                       VARCHAR(2147483647),
    `AGE`                       VARCHAR(2147483647),
    `BIRTHDAY`                  VARCHAR(2147483647),
    `BIRTHPLACE`                VARCHAR(2147483647),
    `RESPLACE`                  VARCHAR(2147483647),
    `RESNATURE`                 VARCHAR(2147483647),
    `NATIONNALITY`              VARCHAR(2147483647),
    `NATION`                    VARCHAR(2147483647),
    `NATIVEPLACE`               VARCHAR(2147483647),
    `MARRY`                     VARCHAR(2147483647),
    `WORKTIME`                  VARCHAR(2147483647),
    `SOCIANO`                   VARCHAR(2147483647),
    `PHONE`                     VARCHAR(2147483647),
    `HOMEADDRESS`               VARCHAR(2147483647),
    `EMAIL`                     VARCHAR(2147483647),
    `POSTALCODE`                VARCHAR(2147483647),
    `OPTOR`                     VARCHAR(2147483647),
    `OPTTIME`                   VARCHAR(2147483647),
    `OPTORG`                    VARCHAR(2147483647),
    `BESTEDU`                   VARCHAR(2147483647),
    `BESTPROPOST`               VARCHAR(2147483647),
    `POSTIONS`                  VARCHAR(2147483647),
    `POLITICSFACES`             VARCHAR(2147483647),
    `WORKPROF`                  VARCHAR(2147483647),
    `BESTDEGREE`                VARCHAR(2147483647),
    `WORKAGE`                   VARCHAR(2147483647),
    `ENPAGE`                    VARCHAR(2147483647),
    `UNITACCAGE`                VARCHAR(2147483647),
    `GROUPAGE`                  VARCHAR(2147483647),
    `GROUPACCAGE`               VARCHAR(2147483647),
    `CONTRACTUNIT`              VARCHAR(2147483647),
    `PHOTO`                     VARCHAR(2147483647),
    `MAINPROFCOTEGORY`          VARCHAR(2147483647),
    `RECRUITMENT`               VARCHAR(2147483647),
    `DEPOSITUNIT`               VARCHAR(2147483647),
    `RETIREMENTDATE`            VARCHAR(2147483647),
    `POSITIONGRADE`             VARCHAR(2147483647),
    `RETIREMENTORG`             VARCHAR(2147483647),
    `RETIREMENTPOSITION`        VARCHAR(2147483647),
    `EMPIDENTITY`               VARCHAR(2147483647),
    `STATE`                     VARCHAR(2147483647),
    `STUDYPROF`                 VARCHAR(2147483647),
    `SOCIALTYPE1`               VARCHAR(2147483647),
    `SOCIALCODE1`               VARCHAR(2147483647),
    `SOCIALTYPE2`               VARCHAR(2147483647),
    `SOCIALCODE2`               VARCHAR(2147483647),
    `ANNUITYNO`                 VARCHAR(2147483647),
    `HOUSINGFUND`               VARCHAR(2147483647),
    `NOTE`                      VARCHAR(2147483647),
    `TECHPROF`                  VARCHAR(2147483647),
    `EMPID`                     VARCHAR(2147483647) NOT NULL,
    `LANDLINE_TELEPHONE_NUMBER` VARCHAR(2147483647),
    `FAX`                       VARCHAR(2147483647),
    `ROOM_NUMBER`               VARCHAR(2147483647),
    `GLOBALROAMING`             VARCHAR(2147483647),
    `PERSONNELCATEGORY`         VARCHAR(2147483647),
    `HIERARCHY`                 VARCHAR(2147483647),
    `CTRANK`                    VARCHAR(2147483647),
    `SHJJOBNUMBER`              VARCHAR(2147483647),
    `SHJEMPTYPE`                VARCHAR(2147483647),
    `SHJTALENTLEVEL`            VARCHAR(2147483647),
    `SHJDUTYSTATION`            VARCHAR(2147483647),
    `SHJ_ZYTXRC`                VARCHAR(2147483647),
    `SHJ_WDYW`                  VARCHAR(2147483647),
    `SHJ_JWRY`                  VARCHAR(2147483647),
    `SHJ_PQZ`                   VARCHAR(2147483647),
    `SHJ_RCGX`                  VARCHAR(2147483647),
    `SHJ_ISPRO`                 VARCHAR(2147483647),
    PRIMARY KEY (`EMPID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.HR_EMP_BASICINFO'
);


CREATE TABLE `WAF_CORE_DICTITEM`
(
    `TS`                        TIMESTAMP(3) METADATA FROM 'timestamp',
    `DIID`      VARCHAR(2147483647) NOT NULL,
    `PDIID`     VARCHAR(2147483647),
    `DIRULE`    VARCHAR(2147483647),
    `CODE`      VARCHAR(2147483647),
    `NAME`      VARCHAR(2147483647),
    `DID`       VARCHAR(2147483647),
    `STATUS`    VARCHAR(2147483647),
    `GRADE`     BIGINT,
    `SNO`       BIGINT,
    `RESERVE1`  VARCHAR(2147483647),
    `RESERVE2`  VARCHAR(2147483647),
    `RESERVE3`  VARCHAR(2147483647),
    `MRUT`      VARCHAR(2147483647),
    `OPER`      VARCHAR(2147483647),
    `NOTE`      VARCHAR(2147483647),
    `MD_STATUS` VARCHAR(2147483647),
    `MD_CODE`   VARCHAR(2147483647),
    `NEW_CODE`  VARCHAR(2147483647),
    PRIMARY KEY (`DIID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.WAF_CORE_DICTITEM'
        );

CREATE TABLE `WAF_AC_ORGAN2BIZ`
(
    `TS`         TIMESTAMP(3) METADATA FROM 'timestamp',
    `O2BID`      VARCHAR(2147483647) NOT NULL,
    `BIZTYPE`    VARCHAR(2147483647),
    `OID`        VARCHAR(2147483647),
    `POID`       VARCHAR(2147483647),
    `GPOID`      VARCHAR(2147483647),
    `GOID`       VARCHAR(2147483647),
    `COID`       VARCHAR(2147483647),
    `ORULE`      VARCHAR(2147483647),
    `SNO`        BIGINT,
    `TYPE`       VARCHAR(2147483647),
    `MRUT`       VARCHAR(2147483647),
    `OPER`       VARCHAR(2147483647),
    `NOTE`       VARCHAR(2147483647),
    `STARTDATE`  VARCHAR(2147483647),
    `TYPEEXT`    VARCHAR(2147483647),
    `GRULE`      VARCHAR(2147483647),
    `STATE`      VARCHAR(2147483647),
    `GLOBAL_SNO` VARCHAR(2147483647),
    `BIZATTR1`   VARCHAR(2147483647),
    `BIZATTR2`   VARCHAR(2147483647),
    `BIZATTR3`   VARCHAR(2147483647),
    `BIZATTR4`   VARCHAR(2147483647),
    PRIMARY KEY (`O2BID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.WAF_AC_ORGAN2BIZ'
        );


CREATE TABLE `WAF_AC_ORGAN`
(
    `TS`                       TIMESTAMP(3) METADATA FROM 'timestamp',
    `OID`                      VARCHAR(2147483647) NOT NULL,
    `GOID`                     VARCHAR(2147483647),
    `COID`                     VARCHAR(2147483647),
    `NAME`                     VARCHAR(2147483647),
    `SHORTNAME`                VARCHAR(2147483647),
    `STATUS`                   VARCHAR(2147483647),
    `GRADE`                    BIGINT,
    `TYPE`                     VARCHAR(2147483647),
    `TYPEEXT`                  VARCHAR(2147483647),
    `BIZTYPE`                  VARCHAR(2147483647),
    `CROSSORGAN`               VARCHAR(2147483647),
    `OCODE`                    VARCHAR(2147483647),
    `MRUT`                     VARCHAR(2147483647),
    `OPER`                     VARCHAR(2147483647),
    `NOTE`                     VARCHAR(2147483647),
    `TEMORGANNAME`             VARCHAR(2147483647),
    `ORGANEMP`                 VARCHAR(2147483647),
    `STARTDATE`                VARCHAR(2147483647),
    `PROJECTTYPE`              VARCHAR(2147483647),
    `PROJECTMANTYPE`           VARCHAR(2147483647),
    `PROJECTSCALE`             VARCHAR(2147483647),
    `ORGGRADE`                 VARCHAR(2147483647),
    `ENTCLASS`                 VARCHAR(2147483647),
    `BIZDOMAIN`                VARCHAR(2147483647),
    `TERRITORYPRO`             VARCHAR(2147483647),
    `CAREA`                    VARCHAR(2147483647),
    `ORGPROVINCE`              VARCHAR(2147483647),
    `ORGANGRADE`               VARCHAR(2147483647),
    `STATE`                    VARCHAR(2147483647),
    `ROWN`                     VARCHAR(2147483647),
    `ROID`                     VARCHAR(2147483647),
    `QYGRADE`                  VARCHAR(2147483647),
    `RESERVE1`                 VARCHAR(2147483647),
    `RESERVE2`                 VARCHAR(2147483647),
    `BISSNES_TYPE`             VARCHAR(2147483647),
    `PROJECTSTATUS`            VARCHAR(2147483647),
    `PAY_OID`                  VARCHAR(2147483647),
    `PAY_OWN`                  VARCHAR(2147483647),
    `POSTAL_ADDRESS`           VARCHAR(2147483647),
    `IS_INDEPENDENT`           VARCHAR(2147483647),
    `RESERVE3`                 VARCHAR(2147483647),
    `COMBINEDFORM`             VARCHAR(2147483647),
    `ENTERPRISE_CATEGORY`      VARCHAR(2147483647),
    `APPROVALTIME`             VARCHAR(2147483647),
    `DECLAREORG`               VARCHAR(2147483647),
    `DECLARETIME`              VARCHAR(2147483647),
    `ESTABLISH_REASON`         VARCHAR(2147483647),
    `ESTABLISH_REASON_OTHER`   VARCHAR(2147483647),
    `ESTABLIST_MODE`           VARCHAR(2147483647),
    `CONTRIBUTION_MODE`        VARCHAR(2147483647),
    `CONTRIBUTION_ARRANGE`     VARCHAR(2147483647),
    `STEP_PAID`                VARCHAR(2147483647),
    `MAIN_BUSINESS_AREA`       VARCHAR(2147483647),
    `MAIN_BUSINESS_AREA_OTHER` VARCHAR(2147483647),
    `FUNCTION_POSITION`        VARCHAR(2147483647),
    `BUSINESS_MODEL`           VARCHAR(2147483647),
    `BUSINESS_MODEL_OTHER`     VARCHAR(2147483647),
    `VALUE_CONTRIBUTION`       VARCHAR(2147483647),
    `VALUE_CONTRIBUTION_OTHER` VARCHAR(2147483647),
    `ENGLISHNAME`              VARCHAR(2147483647),
    `ENGLISHSHORTNAME`         VARCHAR(2147483647),
    `WAOZYYWQY`                VARCHAR(2147483647),
    `WAODLKZTZYW`              VARCHAR(2147483647),
    `MDM_CODE`                 VARCHAR(2147483647),
    `MDM_VIEW_FLAG`            VARCHAR(2147483647),
    PRIMARY KEY (`OID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.WAF_AC_ORGAN'
        );


CREATE TABLE `HR_DICTV2_DICTIONARY`
(
    `TS`                        TIMESTAMP(3) METADATA FROM 'timestamp',
    `DICT_CODE`    VARCHAR(2147483647) NOT NULL,
    `DICT_NAME`    VARCHAR(2147483647),
    `BELONG_ORGAN` VARCHAR(2147483647),
    `TYPE`         VARCHAR(2147483647),
    `STATUS`       VARCHAR(2147483647),
    `CATALOG_ID`   VARCHAR(2147483647),
    `SN`           BIGINT,
    `DICT_ID`      VARCHAR(2147483647),
    `NOTE`         VARCHAR(2147483647),
    `VS_NO`        BIGINT,
    PRIMARY KEY (`DICT_CODE`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.HR_DICTV2_DICTIONARY'
        );

CREATE TABLE `MV_HR_DICTV2_RULE`
(
    `TS`                        TIMESTAMP(3) METADATA FROM 'timestamp',
    `DICT_CODE`     VARCHAR(2147483647) NOT NULL,
    `TYPE`          VARCHAR(2147483647),
    `DICT_NAME`     VARCHAR(2147483647),
    `SN`            VARCHAR(2147483647),
    `TOP_DICT_NAME` VARCHAR(2147483647),
    PRIMARY KEY (`DICT_CODE`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.MV_HR_DICTV2_RULE'
        );



CREATE TABLE `WAF_CORE_DICT`
(
    `TS`            TIMESTAMP(3) METADATA FROM 'timestamp',
    `DID`           VARCHAR(2147483647) NOT NULL,
    `PDID`          VARCHAR(2147483647),
    `DRULE`         VARCHAR(2147483647),
    `CODE`          VARCHAR(2147483647),
    `NAME`          VARCHAR(2147483647),
    `TYPE`          VARCHAR(2147483647),
    `GRADE`         BIGINT,
    `SNO`           BIGINT,
    `STATUS`        VARCHAR(2147483647),
    `LENVALID`      VARCHAR(2147483647),
    `LEN1`          BIGINT,
    `LEN2`          BIGINT,
    `RESERVE1`      VARCHAR(2147483647),
    `RESERVE1NULL`  VARCHAR(2147483647),
    `RESERVE1VALID` VARCHAR(2147483647),
    `RESERVE1NAME`  VARCHAR(2147483647),
    `RESERVE2`      VARCHAR(2147483647),
    `RESERVE2NULL`  VARCHAR(2147483647),
    `RESERVE2VALID` VARCHAR(2147483647),
    `RESERVE2NAME`  VARCHAR(2147483647),
    `RESERVE3`      VARCHAR(2147483647),
    `RESERVE3NULL`  VARCHAR(2147483647),
    `RESERVE3VALID` VARCHAR(2147483647),
    `RESERVE3NAME`  VARCHAR(2147483647),
    `MRUT`          VARCHAR(2147483647),
    `OPER`          VARCHAR(2147483647),
    `NOTE`          VARCHAR(2147483647),
    PRIMARY KEY (`DID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.WAF_CORE_DICT'
        );

CREATE TABLE `HR_MOVE_INSIDER`
(
    `TS`               TIMESTAMP(3) METADATA FROM 'timestamp',
    `ID`               VARCHAR(2147483647) NOT NULL,
    `EMPID`            VARCHAR(2147483647),
    `NAME`             VARCHAR(2147483647),
    `SEX`              VARCHAR(2147483647),
    `POLITICALSTATUS`  VARCHAR(2147483647),
    `EDUCATION`        VARCHAR(2147483647),
    `JOBTITLE`         VARCHAR(2147483647),
    `POSTGRADEBEFORE`  VARCHAR(2147483647),
    `POSTBEFORE`       VARCHAR(2147483647),
    `COID`             VARCHAR(2147483647),
    `GANGWEI`          VARCHAR(2147483647),
    `GANGWEILEIBIE`    VARCHAR(2147483647),
    `XINCHOU`          VARCHAR(2147483647),
    `GANGWEIGONGZI`    VARCHAR(2147483647),
    `PAYROLLTYPE`      VARCHAR(2147483647),
    `SALARYSTOPTIME`   VARCHAR(2147483647),
    `STARTTIME`        VARCHAR(2147483647),
    `ENDTIME`          VARCHAR(2147483647),
    `SOCIALSECURITY`   VARCHAR(2147483647),
    `FUNDSECURITY`     VARCHAR(2147483647),
    `YEARFUNDSECURITY` VARCHAR(2147483647),
    `STATUS`           VARCHAR(2147483647),
    `BORROWTIME`       VARCHAR(2147483647),
    `LEAVEREASON`      VARCHAR(2147483647),
    `EAID`             VARCHAR(2147483647),
    `ORGANNAME`        VARCHAR(2147483647),
    `BIRTHDAY`         VARCHAR(2147483647),
    `WORKTIME`         VARCHAR(2147483647),
    `CONTRACTTIME`     VARCHAR(2147483647),
    `OPTOR`            VARCHAR(2147483647),
    `OPRTIME`          VARCHAR(2147483647),
    `APPSTATUS`        VARCHAR(2147483647),
    `ENTRYDEPTID`      VARCHAR(2147483647),
    `TRANSFERSTATUS`   VARCHAR(2147483647),
    `BID`              VARCHAR(2147483647),
    `OUT_ORGNAME`      VARCHAR(2147483647),
    `OOID`             VARCHAR(2147483647),
    `TRANSFERTIME`     VARCHAR(2147483647),
    `REALENDTIME`      VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.HR_MOVE_INSIDER'
        );

CREATE TABLE `HR_MOVE_ENTRYAPPLY`
(
    `TS`             TIMESTAMP(3) METADATA FROM 'timestamp',
    `EAID`           VARCHAR(2147483647) NOT NULL,
    `TITLE`          VARCHAR(2147483647),
    `CONTENT`        VARCHAR(2147483647),
    `ENTRYTYPE`      VARCHAR(2147483647),
    `JIEDIAOLEIXING` VARCHAR(2147483647),
    `OPTOR`          VARCHAR(2147483647),
    `OPTORG`         VARCHAR(2147483647),
    `OPTTIME`        VARCHAR(2147483647),
    `STATUS`         VARCHAR(2147483647),
    `REMARK`         VARCHAR(2147483647),
    `ORDERID`        VARCHAR(2147483647),
    `EDITTIME`       VARCHAR(2147483647),
    `PROCINSTID`     VARCHAR(2147483647),
    `CREATEUSERID`   VARCHAR(2147483647),
    `BACKTYPE`       VARCHAR(2147483647),
    `TRANSFERTYPE`   VARCHAR(2147483647),
    `DIMISSIONTYPE`  VARCHAR(2147483647),
    `EMPTYPE`        VARCHAR(2147483647),
    `FLAG`           VARCHAR(2147483647),
    PRIMARY KEY (`EAID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.HR_MOVE_ENTRYAPPLY'
        );

CREATE TABLE `HR_WORK_LABCONTRACT`
(
    `TS`                TIMESTAMP(3) METADATA FROM 'timestamp',
    `LCID`              VARCHAR(2147483647) NOT NULL,
    `CONTRACTNO`        VARCHAR(2147483647),
    `EMPTYPE`           VARCHAR(2147483647),
    `CONTRACTTYPE`      VARCHAR(2147483647),
    `ORGID`             VARCHAR(2147483647),
    `DISPATCHORG`       VARCHAR(2147483647),
    `LENDORG`           VARCHAR(2147483647),
    `EMPID`             VARCHAR(2147483647),
    `GENDER`            VARCHAR(2147483647),
    `BIRTHDAY`          VARCHAR(2147483647),
    `IDCARD`            VARCHAR(2147483647),
    `POST`              VARCHAR(2147483647),
    `WORKADDRESS`       VARCHAR(2147483647),
    `WORKAGE`           VARCHAR(2147483647),
    `HOMEADDRESS`       VARCHAR(2147483647),
    `SIGNDATE`          VARCHAR(2147483647),
    `STARTDATE`         VARCHAR(2147483647),
    `ENDDATE`           VARCHAR(2147483647),
    `PRODEADLINE`       VARCHAR(2147483647),
    `SIGNDEADLINE`      VARCHAR(2147483647),
    `STOPDATE`          VARCHAR(2147483647),
    `STOPOPINION`       VARCHAR(2147483647),
    `CHANGEDATE`        VARCHAR(2147483647),
    `STOPHANDLEOR`      VARCHAR(2147483647),
    `STOPPUT`           VARCHAR(2147483647),
    `STORAGE`           VARCHAR(2147483647),
    `HOURSSYSTEM`       VARCHAR(2147483647),
    `HASSUPPLECONTRACT` VARCHAR(2147483647),
    `SUPPLECONTRACT`    VARCHAR(2147483647),
    `NOTE`              VARCHAR(2147483647),
    `HANDLEOR`          VARCHAR(2147483647),
    `HANDLETIME`        VARCHAR(2147483647),
    `HANDLEORG`         VARCHAR(2147483647),
    `SIGNSTATUS`        VARCHAR(2147483647),
    `STATUS`            VARCHAR(2147483647),
    `JOBTITLE`          VARCHAR(2147483647),
    `SALARYGRADE`       VARCHAR(2147483647),
    `POSTWAGE`          VARCHAR(2147483647),
    `POSTNATURE`        VARCHAR(2147483647),
    `FADINGDAIBIAOREN`  VARCHAR(2147483647),
    `DEPT`              VARCHAR(2147483647),
    `BUCHANGJIN`        VARCHAR(2147483647),
    `PEICHANGJIN`       VARCHAR(2147483647),
    `WEIYUEJIN`         VARCHAR(2147483647),
    `SHANGCANBUZHUJIN`  VARCHAR(2147483647),
    `OPTOR`             VARCHAR(2147483647),
    `OPTTIME`           VARCHAR(2147483647),
    `OPTORG`            VARCHAR(2147483647),
    `NAME`              VARCHAR(2147483647),
    `WEPID`             VARCHAR(2147483647),
    `BORROWCERTID`      VARCHAR(2147483647),
    `AFTERCHANGELCID`   VARCHAR(2147483647),
    PRIMARY KEY (`LCID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_WORK_LABCONTRACT'
);

CREATE TABLE `HR_EMP_SOCIALRELATIONINFO`
(
    `TS`                   TIMESTAMP(3) METADATA FROM 'timestamp',
    `RELATIONID`           VARCHAR(2147483647) NOT NULL,
    `EMPID`                VARCHAR(2147483647),
    `NAME`                 VARCHAR(2147483647),
    `SEX`                  VARCHAR(2147483647),
    `BIRTH`                VARCHAR(2147483647),
    `PHONE`                VARCHAR(2147483647),
    `ADDRESS`              VARCHAR(2147483647),
    `RESIDENCEADDRESS`     VARCHAR(2147483647),
    `NATION`               VARCHAR(2147483647),
    `NATIVEPLACE`          VARCHAR(2147483647),
    `POLITICALAFFILIATION` VARCHAR(2147483647),
    `RELATIONMY`           VARCHAR(2147483647),
    `ISNOEMERGENCYCONTACT` VARCHAR(2147483647),
    `THEORG`               VARCHAR(2147483647),
    `POST`                 VARCHAR(2147483647),
    `POSITION`             VARCHAR(2147483647),
    `OPTOR`                VARCHAR(2147483647),
    `OPTTIME`              VARCHAR(2147483647),
    `OPTORG`               VARCHAR(2147483647),
    `STATUS`               VARCHAR(2147483647),
    `NOTE`                 VARCHAR(2147483647),
    `NATIONNALITY`         VARCHAR(2147483647),
    PRIMARY KEY (`RELATIONID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_SOCIALRELATIONINFO'
);

CREATE TABLE `HR_EMP_VALIDPASSPORT`
(
    `TS`                 TIMESTAMP(3) METADATA FROM 'timestamp',
    `PASSPORTID`         VARCHAR(2147483647) NOT NULL,
    `EMPID`              VARCHAR(2147483647),
    `CERTTYPE`           VARCHAR(2147483647),
    `CERTNO`             VARCHAR(2147483647),
    `ISSUINGCOUNTRY`     VARCHAR(2147483647),
    `ISSUTIME`           VARCHAR(2147483647),
    `ISSUPLACE`          VARCHAR(2147483647),
    `PERIOD`             VARCHAR(2147483647),
    `HOLDERNAME`         VARCHAR(2147483647),
    `ENNAME`             VARCHAR(2147483647),
    `OPTOR`              VARCHAR(2147483647),
    `OPTTIME`            VARCHAR(2147483647),
    `OPTORG`             VARCHAR(2147483647),
    `STATUS`             VARCHAR(2147483647),
    `NOTE`               VARCHAR(2147483647),
    `RECORD`             VARCHAR(2147483647),
    `RECORDPLACE`        VARCHAR(2147483647),
    `CUSTODIANCERTNOOID` VARCHAR(2147483647),
    `RECORDORGAN`        VARCHAR(2147483647),
    PRIMARY KEY (`PASSPORTID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_VALIDPASSPORT'
);

CREATE TABLE `HR_EMP_PROFRESULTPATENTINFO`
(
    `TS`               TIMESTAMP(3) METADATA FROM 'timestamp',
    `PROFID`           VARCHAR(2147483647) NOT NULL,
    `EMPID`            VARCHAR(2147483647),
    `RESULTNAME`       VARCHAR(2147483647),
    `RESULTNO`         VARCHAR(2147483647),
    `RESULTLV`         VARCHAR(2147483647),
    `RESULTTYPE`       VARCHAR(2147483647),
    `RESULTIDENLV`     VARCHAR(2147483647),
    `RESULTIDENORG`    VARCHAR(2147483647),
    `COMPLETERANK`     VARCHAR(2147483647),
    `MAINCONTRIBUTION` VARCHAR(2147483647),
    `ROLE`             VARCHAR(2147483647),
    `GAINTIME`         VARCHAR(2147483647),
    `PERIOD`           VARCHAR(2147483647),
    `WITNESS`          VARCHAR(2147483647),
    `COMPLETEORG`      VARCHAR(2147483647),
    `BENEFIT`          VARCHAR(2147483647),
    `PATENTTYPE`       VARCHAR(2147483647),
    `PATENTAPPCOUNTRY` VARCHAR(2147483647),
    `ISSUORG`          VARCHAR(2147483647),
    `PROJECT`          VARCHAR(2147483647),
    `OPTOR`            VARCHAR(2147483647),
    `OPTTIME`          VARCHAR(2147483647),
    `OPTORG`           VARCHAR(2147483647),
    `STATUS`           VARCHAR(2147483647),
    `NOTE`             VARCHAR(2147483647),
    `PROJECTLEVEL`     VARCHAR(2147483647),
    `PATENTUNIT`       VARCHAR(2147483647),
    `GROUPPOST`        VARCHAR(2147483647),
    PRIMARY KEY (`PROFID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_PROFRESULTPATENTINFO'
);



CREATE TABLE `HR_EMP_MAINTHESISWORKINFO`
(
    `TS`                TIMESTAMP(3) METADATA FROM 'timestamp',
    `THESISID`          VARCHAR(2147483647) NOT NULL,
    `EMPID`             VARCHAR(2147483647),
    `THESISNAME`        VARCHAR(2147483647),
    `THESISMARK`        VARCHAR(2147483647),
    `THESISCONTENT`     VARCHAR(2147483647),
    `PUBLISHNAME`       VARCHAR(2147483647),
    `PUBLISHDATE`       VARCHAR(2147483647),
    `PRESSNAME`         VARCHAR(2147483647),
    `ISSN`              VARCHAR(2147483647),
    `PUBLISHAPPORG`     VARCHAR(2147483647),
    `AUTHORRANK`        VARCHAR(2147483647),
    `AWARDS`            VARCHAR(2147483647),
    `SUBSPECIALTYTYPE`  VARCHAR(2147483647),
    `ACADECONFERCOMMUN` VARCHAR(2147483647),
    `COREJOURNALS`      VARCHAR(2147483647),
    `OPTOR`             VARCHAR(2147483647),
    `OPTTIME`           VARCHAR(2147483647),
    `OPTORG`            VARCHAR(2147483647),
    `STATUS`            VARCHAR(2147483647),
    `NOTE`              VARCHAR(2147483647),
    `JOURNAL_TYPE`      VARCHAR(2147483647),
    PRIMARY KEY (`THESISID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_MAINTHESISWORKINFO'
);


CREATE TABLE `HR_EMP_TRAININFO`
(
    `TS`              TIMESTAMP(3) METADATA FROM 'timestamp',
    `TRAINID`         VARCHAR(2147483647) NOT NULL,
    `EMPID`           VARCHAR(2147483647),
    `LEARNBEGINTIME`  VARCHAR(2147483647),
    `LEANENDTIME`     VARCHAR(2147483647),
    `NAME`            VARCHAR(2147483647),
    `TYPE`            VARCHAR(2147483647),
    `LEARNMETHOD`     VARCHAR(2147483647),
    `CONTENT`         VARCHAR(2147483647),
    `HOURS`           VARCHAR(2147483647),
    `RESULT`          VARCHAR(2147483647),
    `PLACE`           VARCHAR(2147483647),
    `HOSTORGTYPE`     VARCHAR(2147483647),
    `HOSTORGNAME`     VARCHAR(2147483647),
    `CERTNAME`        VARCHAR(2147483647),
    `CERTNO`          VARCHAR(2147483647),
    `HAIRCERTORG`     VARCHAR(2147483647),
    `TRAININGFEE`     VARCHAR(2147483647),
    `WITNESS`         VARCHAR(2147483647),
    `CHANNEL`         VARCHAR(2147483647),
    `ISNOABROADTRAIN` VARCHAR(2147483647),
    `TRAINCOUTRY`     VARCHAR(2147483647),
    `OPTOR`           VARCHAR(2147483647),
    `OPTTIME`         VARCHAR(2147483647),
    `OPTORG`          VARCHAR(2147483647),
    `STATUS`          VARCHAR(2147483647),
    `NOTE`            VARCHAR(2147483647),
    `DURATION`        VARCHAR(2147483647),
    PRIMARY KEY (`TRAINID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_TRAININFO'
);



CREATE TABLE `HR_EMP_REWARDINFO`
(
    `TS`             TIMESTAMP(3) METADATA FROM 'timestamp',
    `REWARDID`       VARCHAR(2147483647) NOT NULL,
    `EMPID`          VARCHAR(2147483647),
    `REWARDNAME`     VARCHAR(2147483647),
    `PRIZETIME`      VARCHAR(2147483647),
    `PRIZETYPE`      VARCHAR(2147483647),
    `REWARDLV`       VARCHAR(2147483647),
    `REWARDREASON`   VARCHAR(2147483647),
    `REWARDMEASURES` VARCHAR(2147483647),
    `REWARDMETHOD`   VARCHAR(2147483647),
    `AWARDSLV`       VARCHAR(2147483647),
    `RANK`           VARCHAR(2147483647),
    `CERTNO`         VARCHAR(2147483647),
    `APPORG`         VARCHAR(2147483647),
    `OPTOR`          VARCHAR(2147483647),
    `OPTTIME`        VARCHAR(2147483647),
    `OPTORG`         VARCHAR(2147483647),
    `STATUS`         VARCHAR(2147483647),
    `NOTE`           VARCHAR(2147483647),
    `POSTSKILLID`    VARCHAR(2147483647),
    `PRIZENUMBER`    VARCHAR(2147483647),
    `REWPEN_TYPE`    VARCHAR(2147483647),
    PRIMARY KEY (`REWARDID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_REWARDINFO'
);



CREATE TABLE `HR_EMP_PROJPREFINFO`
(
    `TS`                TIMESTAMP(3) METADATA FROM 'timestamp',
    `PROJECTINFOID`     VARCHAR(2147483647) NOT NULL,
    `EMPID`             VARCHAR(2147483647),
    `PROJNAME`          VARCHAR(2147483647),
    `PROJTYPE`          VARCHAR(2147483647),
    `PROJSCALE`         VARCHAR(2147483647),
    `MONEY`             VARCHAR(2147483647),
    `PROJPLACE`         VARCHAR(2147483647),
    `BEGINTIME`         VARCHAR(2147483647),
    `ENDTIME`           VARCHAR(2147483647),
    `PROJBENFIT`        VARCHAR(2147483647),
    `JOINPROJBEGINDATE` VARCHAR(2147483647),
    `JOINPROJENDDATE`   VARCHAR(2147483647),
    `ASROLE`            VARCHAR(2147483647),
    `ASPOSITION`        VARCHAR(2147483647),
    `ISNOPRIZE`         VARCHAR(2147483647),
    `PRIZENAME`         VARCHAR(2147483647),
    `PRIZELV`           VARCHAR(2147483647),
    `PRIZETIME`         VARCHAR(2147483647),
    `PRIZERANK`         VARCHAR(2147483647),
    `CERTORG`           VARCHAR(2147483647),
    `PRIZEORG`          VARCHAR(2147483647),
    `CONSTRUCTIONORG`   VARCHAR(2147483647),
    `OPTOR`             VARCHAR(2147483647),
    `OPTTIME`           VARCHAR(2147483647),
    `OPTORG`            VARCHAR(2147483647),
    `STATUS`            VARCHAR(2147483647),
    `NOTE`              VARCHAR(2147483647),
    PRIMARY KEY (`PROJECTINFOID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_PROJPREFINFO'
);



CREATE TABLE `HR_WORK_CHECKRESULT`
(
    `TS`           TIMESTAMP(3) METADATA FROM 'timestamp',
    `WCID`         VARCHAR(2147483647) NOT NULL,
    `EMPID`        VARCHAR(2147483647),
    `ORGID`        VARCHAR(2147483647),
    `CHECKTYPE`    VARCHAR(2147483647),
    `CHECKDATE`    VARCHAR(2147483647),
    `CHECKYEAR`    VARCHAR(2147483647),
    `CHECKORG`     VARCHAR(2147483647),
    `CHECKCONTENT` VARCHAR(2147483647),
    `CHECKRESULT`  VARCHAR(2147483647),
    `CHECKSCORE`   VARCHAR(2147483647),
    `OPTOR`        VARCHAR(2147483647),
    `OPTTIME`      VARCHAR(2147483647),
    `OPTORG`       VARCHAR(2147483647),
    `STATUS`       VARCHAR(2147483647),
    `NOTE`         VARCHAR(2147483647),
    PRIMARY KEY (`WCID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_WORK_CHECKRESULT'
);


CREATE TABLE `HR_EMP_TECHPROGRADE`
(
    `TS`            TIMESTAMP(3) METADATA FROM 'timestamp',
    `PENALTYID`     VARCHAR(2147483647) NOT NULL,
    `EMPID`         VARCHAR(2147483647),
    `PROQUAGRADE`   VARCHAR(2147483647),
    `PRONAME`       VARCHAR(2147483647),
    `QUAGETWAY`     VARCHAR(2147483647),
    `GETTIME`       VARCHAR(2147483647),
    `APPORGNAME`    VARCHAR(2147483647),
    `PROENGAGETIME` VARCHAR(2147483647),
    `ALLOWANCETYPE` VARCHAR(2147483647),
    `OPTOR`         VARCHAR(2147483647),
    `OPTTIME`       VARCHAR(2147483647),
    `OPTORG`        VARCHAR(2147483647),
    `STATUS`        VARCHAR(2147483647),
    `NOTE`          VARCHAR(2147483647),
    PRIMARY KEY (`PENALTYID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_TECHPROGRADE'
);


CREATE TABLE `HR_EMP_SEAMANCERTINFO`
(
    `TS`                   TIMESTAMP(3) METADATA FROM 'timestamp',
    `PENALTYID`            VARCHAR(2147483647) NOT NULL,
    `EMPID`                VARCHAR(2147483647),
    `SAFETRAINCERTGETTIME` VARCHAR(2147483647),
    `SERVICECERTGETTIME`   VARCHAR(2147483647),
    `GRANTTIME`            VARCHAR(2147483647),
    `VALDATE`              VARCHAR(2147483647),
    `SEAMANCOMPCERTNAME`   VARCHAR(2147483647),
    `SEAMANDEP`            VARCHAR(2147483647),
    `CREWFUNCTION`         VARCHAR(2147483647),
    `CLASSIFICATION`       VARCHAR(2147483647),
    `FUNCTIONAPPLYING`     VARCHAR(2147483647),
    `CREWJOB1`             VARCHAR(2147483647),
    `COMPETENCYCATEGORY`   VARCHAR(2147483647),
    `CAPACITYAPPLYING`     VARCHAR(2147483647),
    `SHIPCATEGORY`         VARCHAR(2147483647),
    `CERTNO`               VARCHAR(2147483647),
    `QUACERTNO`            VARCHAR(2147483647),
    `GRANTORG`             VARCHAR(2147483647),
    `STATUS`               VARCHAR(2147483647),
    `NOTE`                 VARCHAR(2147483647),
    `OPTOR`                VARCHAR(2147483647),
    `OPTTIME`              VARCHAR(2147483647),
    `OPTORG`               VARCHAR(2147483647),
    `WAYTOGET`             VARCHAR(2147483647),
    `CREWFUNCTION2`        VARCHAR(2147483647),
    `CLASSIFICATION2`      VARCHAR(2147483647),
    `FUNCTIONAPPLYING2`    VARCHAR(2147483647),
    `CREWFUNCTION3`        VARCHAR(2147483647),
    `CLASSIFICATION3`      VARCHAR(2147483647),
    `FUNCTIONAPPLYING3`    VARCHAR(2147483647),
    `CREWFUNCTION4`        VARCHAR(2147483647),
    `CLASSIFICATION4`      VARCHAR(2147483647),
    `FUNCTIONAPPLYING4`    VARCHAR(2147483647),
    `CREWFUNCTION5`        VARCHAR(2147483647),
    `CLASSIFICATION5`      VARCHAR(2147483647),
    `FUNCTIONAPPLYING5`    VARCHAR(2147483647),
    `COMPETENCYCATEGORY2`  VARCHAR(2147483647),
    `CAPACITYAPPLYING2`    VARCHAR(2147483647),
    `COMPETENCYCATEGORY3`  VARCHAR(2147483647),
    `CAPACITYAPPLYING3`    VARCHAR(2147483647),
    `SHIPCATEGORY2`        VARCHAR(2147483647),
    `SHIPCATEGORY3`        VARCHAR(2147483647),
    `CREWJOB3`             VARCHAR(2147483647),
    `CREWJOB2`             VARCHAR(2147483647),
    `FCREWJOB2`            VARCHAR(2147483647),
    `FCREWJOB3`            VARCHAR(2147483647),
    `FCREWJOB1`            VARCHAR(2147483647),
    `ZIHANGDENGJI`         VARCHAR(2147483647),
    `ZIHANGZHIWU`          VARCHAR(2147483647),
    `ZIHANGTYPE`           VARCHAR(2147483647),
    `FEIZIHANGDENGJI`      VARCHAR(2147483647),
    `FEIZIHANGZHIWU`       VARCHAR(2147483647),
    `CHUANBOZHONGLEI`      VARCHAR(2147483647),
    PRIMARY KEY (`PENALTYID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_SEAMANCERTINFO'
);

CREATE TABLE `HR_EMP_QUACERTINFO`
(
    `TS`               TIMESTAMP(3) METADATA FROM 'timestamp',
    `QUCERTINFOID`     VARCHAR(2147483647) NOT NULL,
    `EMPID`            VARCHAR(2147483647),
    `CERTTYPE`         VARCHAR(2147483647),
    `CERTNAME`         VARCHAR(2147483647),
    `CERTNO`           VARCHAR(2147483647),
    `CERTNOZ`          VARCHAR(2147483647),
    `QUACERTNO`        VARCHAR(2147483647),
    `REGISNO`          VARCHAR(2147483647),
    `MANAGERNO`        VARCHAR(2147483647),
    `CERTORG`          VARCHAR(2147483647),
    `CERTDATE`         VARCHAR(2147483647),
    `CERTSTATUS`       VARCHAR(2147483647),
    `CERTGAINWAY`      VARCHAR(2147483647),
    `PERIODYEAR`       VARCHAR(2147483647),
    `MAINPROF`         VARCHAR(2147483647),
    `AUXILIARYPROF`    VARCHAR(2147483647),
    `EMPLOYORG`        VARCHAR(2147483647),
    `SEALREGISNO`      VARCHAR(2147483647),
    `REGISORG`         VARCHAR(2147483647),
    `PERIODTYPE`       VARCHAR(2147483647),
    `REGISBEGINDATE`   VARCHAR(2147483647),
    `REGISENDDATE`     VARCHAR(2147483647),
    `ISNOCONTINUEEDU`  VARCHAR(2147483647),
    `CONTINUEEDUHOURS` VARCHAR(2147483647),
    `INSPECTIONDATE`   VARCHAR(2147483647),
    `INSPECTIONORG`    VARCHAR(2147483647),
    `INSPECTIONRESULT` VARCHAR(2147483647),
    `ENTERPRISENAME`   VARCHAR(2147483647),
    `POSITION`         VARCHAR(2147483647),
    `OPTOR`            VARCHAR(2147483647),
    `OPTTIME`          VARCHAR(2147483647),
    `OPTORG`           VARCHAR(2147483647),
    `STATUS`           VARCHAR(2147483647),
    `NOTE`             VARCHAR(2147483647),
    `DEPOSITPLACE`     VARCHAR(2147483647),
    `CERTLV`           VARCHAR(2147483647),
    `BSTATUS`          VARCHAR(2147483647),
    `BDATES`           VARCHAR(2147483647),
    `THREEPROF`        VARCHAR(2147483647),
    `MAINPROF0`        VARCHAR(2147483647),
    `MAINPROF1`        VARCHAR(2147483647),
    `MAINPROF2`        VARCHAR(2147483647),
    `MAINPROF3`        VARCHAR(2147483647),
    `MAINPROF4`        VARCHAR(2147483647),
    `MAINPROF5`        VARCHAR(2147483647),
    `MAINPROF6`        VARCHAR(2147483647),
    `MAINPROF7`        VARCHAR(2147483647),
    `MAINPROF8`        VARCHAR(2147483647),
    `REGISENDDATE1`    VARCHAR(2147483647),
    `REGISENDDATE2`    VARCHAR(2147483647),
    `REGISENDDATE3`    VARCHAR(2147483647),
    `REGISENDDATE4`    VARCHAR(2147483647),
    `REGISENDDATE5`    VARCHAR(2147483647),
    `REGISENDDATE6`    VARCHAR(2147483647),
    `REGISENDDATE7`    VARCHAR(2147483647),
    `REGISENDDATE8`    VARCHAR(2147483647),
    `PRONAME`          VARCHAR(2147483647),
    `PROQUAGRADE`      VARCHAR(2147483647),
    `QUANAME_HY`       VARCHAR(2147483647),
    `QUAGRADE_HY`      VARCHAR(2147483647),
    `REGISENDDATE_REG` VARCHAR(2147483647),
    `REGISENDDATE_GW`  VARCHAR(2147483647),
    `EMPLOYORG_REG`    VARCHAR(2147483647),
    `EMPLOYORG_GW`     VARCHAR(2147483647),
    PRIMARY KEY (`QUCERTINFOID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.HR_EMP_QUACERTINFO'
);


CREATE TABLE `HR_EMP_EXPERTINFO`
(
    `TS`           TIMESTAMP(3) METADATA FROM 'timestamp',
    `PENALTYID`    VARCHAR(2147483647) NOT NULL,
    `EMPID`        VARCHAR(2147483647),
    `RATIFYTIME`   VARCHAR(2147483647),
    `VALDATE`      VARCHAR(2147483647),
    `APPNO`        VARCHAR(2147483647),
    `APPUNIT`      VARCHAR(2147483647),
    `APPUNITGRADE` VARCHAR(2147483647),
    `ENJOYACCESS`  VARCHAR(2147483647),
    `CERTNO`       VARCHAR(2147483647),
    `SPECIALYEAR`  VARCHAR(2147483647),
    `SPECIALSTAND` VARCHAR(2147483647),
    `WORKPRO`      VARCHAR(2147483647),
    `HUMANRELUNIT` VARCHAR(2147483647),
    `EXPERTTYPE`   VARCHAR(2147483647),
    `STATUS`       VARCHAR(2147483647),
    `NOTE`         VARCHAR(2147483647),
    `OPTOR`        VARCHAR(2147483647),
    `OPTTIME`      VARCHAR(2147483647),
    `OPTORG`       VARCHAR(2147483647),
    `COMMISSION`   VARCHAR(2147483647),
    PRIMARY KEY (`PENALTYID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.HR_EMP_EXPERTINFO'
);

CREATE TABLE `HR_EMP_PROFTECHPOSITIONQUA`
(
    `TS`               TIMESTAMP(3) METADATA FROM 'timestamp',
    `PROFQUAID`        VARCHAR(2147483647) NOT NULL,
    `EMPID`            VARCHAR(2147483647),
    `PROF`             VARCHAR(2147483647),
    `PROFTECHQUA`      VARCHAR(2147483647),
    `GAINWAY`          VARCHAR(2147483647),
    `GAINQUANO`        VARCHAR(2147483647),
    `GAINQUATIME`      VARCHAR(2147483647),
    `APPPROFPOST`      VARCHAR(2147483647),
    `RANK`             VARCHAR(2147483647),
    `APPOINTNO`        VARCHAR(2147483647),
    `APPOINTBEGINTIME` VARCHAR(2147483647),
    `APPOINTENDTIME`   VARCHAR(2147483647),
    `APPOINTSTATUS`    VARCHAR(2147483647),
    `APPORG`           VARCHAR(2147483647),
    `CERTNO`           VARCHAR(2147483647),
    `CERTORG`          VARCHAR(2147483647),
    `CERTORGPHONE`     VARCHAR(2147483647),
    `OPTOR`            VARCHAR(2147483647),
    `OPTTIME`          VARCHAR(2147483647),
    `OPTORG`           VARCHAR(2147483647),
    `STATUS`           VARCHAR(2147483647),
    `NOTE`             VARCHAR(2147483647),
    `EXCEPCIR`         VARCHAR(2147483647),
    `EXCEPTIME`        VARCHAR(2147483647),
    `APPOINTWAY`       VARCHAR(2147483647),
    PRIMARY KEY (`PROFQUAID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.HR_EMP_PROFTECHPOSITIONQUA'
);


CREATE TABLE `HR_EMP_ACADEMICDEGREECERT`
(
    `TS`                TIMESTAMP(3) METADATA FROM 'timestamp',
    `LEARNEXPID`        VARCHAR(2147483647) NOT NULL,
    `EMPID`             VARCHAR(2147483647),
    `INTIME`            VARCHAR(2147483647),
    `OUTTIME`           VARCHAR(2147483647),
    `COLLEGE`           VARCHAR(2147483647),
    `EDUCATION`         VARCHAR(2147483647),
    `ISNOFIRSTEDU`      VARCHAR(2147483647),
    `ISNOHEIGHEDU`      VARCHAR(2147483647),
    `EDUCATIONNO`       VARCHAR(2147483647),
    `DEGREE`            VARCHAR(2147483647),
    `ISNOFIRSTDEGREE`   VARCHAR(2147483647),
    `ISNOHIGHESTDEGREE` VARCHAR(2147483647),
    `GIVENTIME`         VARCHAR(2147483647),
    `GIVENORG`          VARCHAR(2147483647),
    `DEGREENO`          VARCHAR(2147483647),
    `MAINPROFCOTEGORY`  VARCHAR(2147483647),
    `SECONDPROF`        VARCHAR(2147483647),
    `COLLEGECOUNTRY`    VARCHAR(2147483647),
    `LEARNZHI`          VARCHAR(2147483647),
    `LEARNWAY`          VARCHAR(2147483647),
    `OPTOR`             VARCHAR(2147483647),
    `OPTTIME`           VARCHAR(2147483647),
    `OPTORG`            VARCHAR(2147483647),
    `STATUS`            VARCHAR(2147483647),
    `NOTE`              VARCHAR(2147483647),
    `PROFNAME`          VARCHAR(2147483647),
    `XQPY`              VARCHAR(2147483647),
    `SCHOOLNATURE`      VARCHAR(2147483647),
    PRIMARY KEY (`LEARNEXPID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.HR_EMP_ACADEMICDEGREECERT'
        );

CREATE TABLE `HR_WORK_EMPPOSITION`
(
    `TS`                TIMESTAMP(3) METADATA FROM 'timestamp',
    `WEPID`             VARCHAR(2147483647) NOT NULL,
    `EMPID`             VARCHAR(2147483647),
    `OID`               VARCHAR(2147483647),
    `PCODE`             VARCHAR(2147483647),
    `ENO`               VARCHAR(2147483647),
    `EMPSORT`           VARCHAR(2147483647),
    `EMPSTATUS`         VARCHAR(2147483647),
    `SUBRELATION`       VARCHAR(2147483647),
    `ENTRYTIME`         VARCHAR(2147483647),
    `LEAVETIME`         VARCHAR(2147483647),
    `FORMALTIME`        VARCHAR(2147483647),
    `LABCONTRACTSTATUS` VARCHAR(2147483647),
    `FORMALSTATUS`      VARCHAR(2147483647),
    `ISPAYOFF`          VARCHAR(2147483647),
    `NOTE`              VARCHAR(2147483647),
    `OPTOR`             VARCHAR(2147483647),
    `OPTTIME`           VARCHAR(2147483647),
    `OPTORG`            VARCHAR(2147483647),
    `ISFULLTIME`        VARCHAR(2147483647),
    `SOURCE`            VARCHAR(2147483647),
    `RECRUITMENT`       VARCHAR(2147483647),
    `DEPOSITUNIT`       VARCHAR(2147483647),
    `MOVESTIME`         VARCHAR(2147483647),
    `MOVEETIME`         VARCHAR(2147483647),
    `QUITREASON`        VARCHAR(2147483647),
    `STATE`             VARCHAR(2147483647),
    `ISSHOW`            VARCHAR(2147483647),
    PRIMARY KEY (`WEPID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.HR_WORK_EMPPOSITION'
        );

CREATE TABLE `HR_WORK_POSTWORKINFO`
(
    `TS`                       TIMESTAMP(3) METADATA FROM 'timestamp',
    `WPWID`                    VARCHAR(2147483647) NOT NULL,
    `EMPID`                    VARCHAR(2147483647),
    `OFFICEDEPID`              VARCHAR(2147483647),
    `ORULE`                    VARCHAR(2147483647),
    `CORPRULE`                 VARCHAR(2147483647),
    `OFFICETYPE`               VARCHAR(2147483647),
    `POSTTYPE`                 VARCHAR(2147483647),
    `POST`                     VARCHAR(2147483647),
    `STARTTIME`                VARCHAR(2147483647),
    `ENDTIME`                  VARCHAR(2147483647),
    `STATUS`                   VARCHAR(2147483647),
    `SNO`                      VARCHAR(2147483647),
    `OPTOR`                    VARCHAR(2147483647),
    `OPTTIME`                  VARCHAR(2147483647),
    `OPTORG`                   VARCHAR(2147483647),
    `NOTE`                     VARCHAR(2147483647),
    `WORKPROF`                 VARCHAR(2147483647),
    `STATE`                    VARCHAR(2147483647),
    `WEPID`                    VARCHAR(2147483647),
    `ISSHOW`                   VARCHAR(2147483647),
    `AREA`                     VARCHAR(2147483647),
    `COUNTRY`                  VARCHAR(2147483647),
    `BUSINESSAREA`             VARCHAR(2147483647),
    `DURATION`                 VARCHAR(2147483647),
    `ISRESUME`                 VARCHAR(2147483647),
    `ISPAYOFF`                 VARCHAR(2147483647),
    `WORKING_COID`             VARCHAR(2147483647),
    `WORKING_COID_NAME`        VARCHAR(2147483647),
    `WORKING_POID`             VARCHAR(2147483647),
    `WORKING_POID_NAME`        VARCHAR(2147483647),
    `OFFICEDEPNAME`            VARCHAR(2147483647),
    `POSITIONID`               VARCHAR(2147483647),
    `POSITIONNAME`             VARCHAR(2147483647),
    `CERTIFIER`                VARCHAR(2147483647),
    `POSTCATEGORY`             VARCHAR(2147483647),
    `POSTGRADATION`            VARCHAR(2147483647),
    `BUSINESS_AREA_OF_PROJECT` VARCHAR(2147483647),
    `ISINGROUP`                VARCHAR(2147483647),
    `WORKING_COID_SHORTNAME`   VARCHAR(2147483647),
    `APPOINTNO`                VARCHAR(2147483647),
    `REMOVALNO`                VARCHAR(2147483647),
    `SEQUNORM`                 VARCHAR(2147483647),
    `POSITIONGRADENORM`        VARCHAR(2147483647),
    `POSITIONNORM`             VARCHAR(2147483647),
    `POST_SNO`                 BIGINT,
    `FRZL`                     VARCHAR(2147483647),
    PRIMARY KEY (`WPWID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.HR_WORK_POSTWORKINFO'
);

CREATE TABLE `WAF_AC_USER`
(
    `TS`              TIMESTAMP(3) METADATA FROM 'timestamp',
    `USERID`          VARCHAR(2146473647) NOT NULL,
    `ACCOUNT`         VARCHAR(2146473647),
    `NAME`            VARCHAR(2146473647),
    `PASSWORD`        VARCHAR(2146473647),
    `STATUS`          VARCHAR(2146473647),
    `PHONE`           VARCHAR(2146473647),
    `MOBILE`          VARCHAR(2146473647),
    `EMAIL`           VARCHAR(2146473647),
    `CODE`            VARCHAR(2146473647),
    `PHOTO`           VARCHAR(2146473647),
    `IDCARD`          VARCHAR(2146473647),
    `BIRTHDAY`        VARCHAR(2146473647),
    `MRUT`            VARCHAR(2146473647),
    `OPER`            VARCHAR(2146473647),
    `EMPID`           VARCHAR(2146473647),
    `CAID`            VARCHAR(2146473647),
    `USAPID`          VARCHAR(2146473647),
    `SYS_TYPE`        VARCHAR(2146473647),
    `INITPASSWORD`    VARCHAR(2146473647),
    `PSERRORCOUNT`    BIGINT,
    `PSLASTERRORTIME` VARCHAR(2146473647),
    PRIMARY KEY (`USERID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.WAF_AC_USER'
    );

CREATE TABLE `WAF_APP_ATTACH`
(
    `TS`         TIMESTAMP(3) METADATA FROM 'timestamp',
    `ATTACHID`   VARCHAR(2147483647) NOT NULL,
    `TARGETPATH` VARCHAR(2147483647),
    `TARGETFILE` VARCHAR(2147483647),
    `SOURCEFILE` VARCHAR(2147483647),
    `FILETYPE`   VARCHAR(2147483647),
    `FILELENGTH` VARCHAR(2147483647),
    `COL_NAME`   VARCHAR(2147483647),
    `MRUT`       VARCHAR(2147483647),
    `OPER`       VARCHAR(2147483647),
    `NOTE`       VARCHAR(2147483647),
    PRIMARY KEY (`ATTACHID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.WAF_APP_ATTACH'
        );

CREATE TABLE `WAF_APP_ATTACHREF`
(
    `TS`       TIMESTAMP(3) METADATA FROM 'timestamp',
    `UUID`     VARCHAR(2147483647) NOT NULL,
    `BIZID`    VARCHAR(2147483647),
    `EIID`     VARCHAR(2147483647),
    `ATTACHID` VARCHAR(2147483647),
    `SNO`      BIGINT,
    `EID`      VARCHAR(2147483647),
    PRIMARY KEY (`UUID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.WAF_APP_ATTACHREF'
        );

CREATE TABLE `WAF_CORE_ENTITYITEM`
(
    `TS`               TIMESTAMP(3) METADATA FROM 'timestamp',
    `EIID`             VARCHAR(2147483647) NOT NULL,
    `EID`              VARCHAR(2147483647),
    `CODE`             VARCHAR(2147483647),
    `NAME`             VARCHAR(2147483647),
    `SNO`              BIGINT,
    `TABLENAME`        VARCHAR(2147483647),
    `COLNAME`          VARCHAR(2147483647),
    `DATATYPE`         VARCHAR(2147483647),
    `LENGTH`           BIGINT,
    `FRACTION`         BIGINT,
    `NULLABLE`         VARCHAR(2147483647),
    `DEFAULTS`         VARCHAR(2147483647),
    `INSERTABLE`       VARCHAR(2147483647),
    `UPDATABLE`        VARCHAR(2147483647),
    `EDITOR`           VARCHAR(2147483647),
    `EDITORPARAM`      VARCHAR(2147483647),
    `DICTREF`          VARCHAR(2147483647),
    `CASCADEPARENT`    VARCHAR(2147483647),
    `CHECKBOX`         VARCHAR(2147483647),
    `LISTEDITABLE`     VARCHAR(2147483647),
    `LISTHIDDEN`       VARCHAR(2147483647),
    `WIDTH`            BIGINT,
    `ALIGN`            VARCHAR(2147483647),
    `HALIGN`           VARCHAR(2147483647),
    `RESIZABLE`        VARCHAR(2147483647),
    `SORTABLE`         VARCHAR(2147483647),
    `FORMEDITABLE`     VARCHAR(2147483647),
    `FORMHIDDEN`       VARCHAR(2147483647),
    `MRUT`             VARCHAR(2147483647),
    `OPER`             VARCHAR(2147483647),
    `NOTE`             VARCHAR(2147483647),
    `QUERYABLE`        VARCHAR(2147483647),
    `QUERYRELATION`    VARCHAR(2147483647),
    `EXPORTABLE`       VARCHAR(2147483647),
    `DYNENTITYITEM`    VARCHAR(2147483647),
    `UPDATEITEMSORT`   VARCHAR(2147483647),
    `TOTAL_FIELD`      VARCHAR(2147483647),
    `TOTAL_FIELD_NAME` VARCHAR(2147483647),
    PRIMARY KEY (`EIID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.WAF_CORE_ENTITYITEM'
);



CREATE TABLE `BORG_JGXX_CERTIFICATE`
(
    `TS`                TIMESTAMP(3) METADATA FROM 'timestamp',
    `ID`                VARCHAR(2147483647) NOT NULL,
    `BORGID`            VARCHAR(2147483647),
    `BORGCODE`          VARCHAR(2147483647),
    `BORGNAME`          VARCHAR(2147483647),
    `CERTTYPE`          VARCHAR(2147483647),
    `CERTNAME`          VARCHAR(2147483647),
    `CERTIFICATE`       VARCHAR(2147483647),
    `DOWNDATE`          VARCHAR(2147483647),
    `DOWNUSER`          VARCHAR(2147483647),
    `CERTSTATUS`        VARCHAR(2147483647),
    `SERIALNUMBER`      DECIMAL(38, 0),
    `REMARK`            VARCHAR(2147483647),
    `BJCDOCUMENTNUMBER` VARCHAR(2147483647),
    `BJCFBSJ`           VARCHAR(2147483647),
    `BJCCURRENT`        VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.BORG_JGXX_CERTIFICATE'
);


CREATE TABLE `BORG_JGXX_DOT`
(
    `TS`             TIMESTAMP(3) METADATA FROM 'timestamp',
    `ID`             VARCHAR(2147483647) NOT NULL,
    `BORGID`         VARCHAR(2147483647),
    `BORGNAME`       VARCHAR(2147483647),
    `BORGLEVEL`      VARCHAR(2147483647),
    `DOTNAME`        VARCHAR(2147483647),
    `DOTCODE`        VARCHAR(2147483647),
    `PZRQ`           VARCHAR(2147483647),
    `REMARK`         VARCHAR(2147483647),
    `CERTIFICATE`    VARCHAR(2147483647),
    `BORGCODE`       VARCHAR(2147483647),
    `SUBSIDIARYUNIT` VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.BORG_JGXX_DOT'
);

CREATE TABLE `BORG_JGXX_PATENT`
(
    `TS`           TIMESTAMP(3) METADATA FROM 'timestamp',
    `ID`           VARCHAR(2147483647) NOT NULL,
    `BORGID`       VARCHAR(2147483647),
    `BORGNAME`     VARCHAR(2147483647),
    `BORGLEVEL`    VARCHAR(2147483647),
    `PATENTEE`     VARCHAR(2147483647),
    `PATENTTYP`    VARCHAR(2147483647),
    `PATENTNAME`   VARCHAR(2147483647),
    `PATENTNUM`    VARCHAR(2147483647),
    `ACCREDITYEAR` VARCHAR(2147483647),
    `EXPIRYDATE`   VARCHAR(2147483647),
    `ACCREDITORG`  VARCHAR(2147483647),
    `REMARK`       VARCHAR(2147483647),
    `CREDENTIALS`  VARCHAR(2147483647),
    `BORGCODE`     VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
        'properties.group.id' = 'flink-cdc',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.BORG_JGXX_PATENT'
        );

CREATE TABLE `BORG_JGXX_QUALIFICATION`
(
    `TS`            TIMESTAMP(3) METADATA FROM 'timestamp',
    `ID`            VARCHAR(2147483647) NOT NULL,
    `BORGID`        VARCHAR(2147483647),
    `QUALNAME`      VARCHAR(2147483647),
    `QUALLEVEL`     VARCHAR(2147483647),
    `CERTIFICATENO` VARCHAR(2147483647),
    `ISSUEUNIT`     VARCHAR(2147483647),
    `ISSUEDATE`     VARCHAR(2147483647),
    `EXPIRYDATE`    VARCHAR(2147483647),
    `SUPECOMPUNIT`  VARCHAR(2147483647),
    `REMARK`        VARCHAR(2147483647),
    `BORGCODE`      VARCHAR(2147483647),
    `BORGNAME`      VARCHAR(2147483647),
    `BORGLEVEL`     VARCHAR(2147483647),
    `CREDENTIALS`   VARCHAR(2147483647),
    `BJQZZLB`       VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
) COMMENT ''
WITH (
  'connector' = 'kafka',
  'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
  'format' = 'debezium-avro-confluent',
  'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
  'properties.group.id' = 'flink-cdc',
  'scan.startup.mode' = 'earliest-offset',
  'topic' = 'HR.HROUTPUT.BORG_JGXX_QUALIFICATION'
);

CREATE TABLE `BORG_JGXX_SHAREHOLDER`
(
    `TS`                 TIMESTAMP(3) METADATA FROM 'timestamp',
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `BORGID`             VARCHAR(2147483647),
    `SHARTYPE`           VARCHAR(2147483647),
    `SHARID`             VARCHAR(2147483647),
    `SHARNAME`           VARCHAR(2147483647),
    `CREDENTIALS`        VARCHAR(2147483647),
    `CONTRIBUTIVEMANNER` VARCHAR(2147483647),
    `CONTRIBUTIVEMONEY`  VARCHAR(2147483647),
    `SHAREHOLDING`       VARCHAR(2147483647),
    `SHARREPRESENTATIVE` VARCHAR(2147483647),
    `DUTY`               VARCHAR(2147483647),
    `REMARK`             VARCHAR(2147483647),
    `BORGCODE`           VARCHAR(2147483647),
    `BORGNAME`           VARCHAR(2147483647),
    `SHARSTRUCTURE`      VARCHAR(2147483647),
    `SHAREHOLDINGMANNER` VARCHAR(2147483647),
    `SERIALNUMBER`       VARCHAR(2147483647),
    `SHAREHOLDINGRATIO`  VARCHAR(2147483647),
    `NATURE`             VARCHAR(2147483647),
    `CAREA`              VARCHAR(2147483647),
    `BJSSJJE`            VARCHAR(2147483647),
    `BJSRJJE`            VARCHAR(2147483647),
    `BJSCZQX`            VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.BORG_JGXX_SHAREHOLDER'
);

CREATE TABLE `HR_TV2_TAG_INS`
(
    `TS`                 TIMESTAMP(3) METADATA FROM 'timestamp',
    `TAG_INS_ID`         VARCHAR(2147483647) NOT NULL,
    `TAG_ID`             VARCHAR(2147483647),
    `PARENT_TAG_INS_ID`  VARCHAR(2147483647),
    `ORGAN_SCOPE`        VARCHAR(2147483647),
    `STRUCTURE_TYPE`     VARCHAR(2147483647),
    `DESCRIPTION`        VARCHAR(2147483647),
    `STATUS`             VARCHAR(2147483647),
    `OPTIONS_NUMBER`     VARCHAR(2147483647),
    `CREATOR`            VARCHAR(2147483647),
    `RULE`               VARCHAR(2147483647),
    `AUDIT_SCOPE`        VARCHAR(2147483647),
    `SNO_NUMBER`         INT,
    `ENABLED`            VARCHAR(2147483647),
    `SHARED`             VARCHAR(2147483647),
    `TAG_NAME`           VARCHAR(2147483647),
    `NOTE`               VARCHAR(2147483647),
    PRIMARY KEY (`TAG_INS_ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.HR_TV2_TAG_INS'
);

CREATE TABLE `HR_TV2_EMP_TAG_INS`
(
    `TS`                 TIMESTAMP(3) METADATA FROM 'timestamp',
    `EMP_TAG_INS_ID`     VARCHAR(2147483647) NOT NULL,
    `EMP_ID`             VARCHAR(2147483647),
    `TAG_INS_ID`         VARCHAR(2147483647),
    `CREATE_DATE`        VARCHAR(2147483647),
    `CREATOR`            VARCHAR(2147483647),
    `NOTE`               VARCHAR(2147483647),
    PRIMARY KEY (`EMP_TAG_INS_ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.HR_TV2_EMP_TAG_INS'
);

CREATE TABLE `TECHNOLOGY_HJQK`
(
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `BJJG`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT,
    `HJSJ`               VARCHAR(2147483647),
    `JXDJ`        		 VARCHAR(2147483647),
    `JXLB`               VARCHAR(2147483647),
    `LAST_UPDATE_TIME`   BIGINT,
    `PM`                 VARCHAR(2147483647),
    `RYBM`               VARCHAR(2147483647),
    `XMMC`               VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_HJQK'
);

CREATE TABLE `TECHNOLOGY_ZL`
(
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `CGLB`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `PM`                 VARCHAR(2147483647),
    `RYBM`                 VARCHAR(2147483647),
    `ZLMC`                 VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_ZL'
);

CREATE TABLE `TECHNOLOGY_BZGF`
(
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `BZJB`               VARCHAR(2147483647),
    `BZMC`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `CGLB`               VARCHAR(2147483647),
    `RYBM`               VARCHAR(2147483647),
    `PM`                 VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_BZGF'
);

CREATE TABLE `TECHNOLOGY_LW`
(
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `CGLB`               VARCHAR(2147483647),
    `FBRQ`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `LWBT`               VARCHAR(2147483647),
    `LWFL`               VARCHAR(2147483647),
    `PM`                 VARCHAR(2147483647),
    `RYBM`               VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_LW'
);

CREATE TABLE `TECHNOLOGY_ZZ`
(
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `CBRQ`               VARCHAR(2147483647),
    `CBS`                VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `CGLB`               VARCHAR(2147483647),
    `PM`                 VARCHAR(2147483647),
    `RYBM`               VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_ZZ'
);

CREATE TABLE `TECHNOLOGY_GJKJJHXM`
(
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `RYBM`               VARCHAR(2147483647),
    `WCSJ`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `XMLX`               VARCHAR(2147483647),
    `XMMC`               VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_GJKJJHXM'
);

CREATE TABLE `TECHNOLOGY_ZJJTXMK`
(
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `RYBM`               VARCHAR(2147483647),
    `WCSJ`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `XMLX`               VARCHAR(2147483647),
    `XMMC`               VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_ZJJTXMK'
);

CREATE TABLE `TECHNOLOGY_SBJKT`
(
    `ID`                 VARCHAR(2147483647) NOT NULL,
    `RYBM`               VARCHAR(2147483647),
    `WCSJ`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `XMLX`               VARCHAR(2147483647),
    `XMMC`               VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_SBJKT'
);

CREATE TABLE `TECHNOLOGY_HEKTJBXX`
(
	`ID`                 VARCHAR(2147483647) NOT NULL,
	`RYBM`               VARCHAR(2147483647),
    `WCSJ`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `XMLX`               VARCHAR(2147483647),
	`XMMC`               VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_HEKTJBXX'
);

CREATE TABLE `TECHNOLOGY_ZZLXKT`
(
    `ID`                 VARCHAR(2147483647) NOT NULL, 
    `RYBM`               VARCHAR(2147483647),
    `WCSJ`               VARCHAR(2147483647),
    `CREATE_TIME`     	 BIGINT ,
    `LAST_UPDATE_TIME`   BIGINT,
    `XMLX`               VARCHAR(2147483647),
    `XMMC`               VARCHAR(2147483647),
    PRIMARY KEY (`ID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://kafka-stream-registry-cp-schema-registry.kafka-cluster:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka-stream-kafka-bootstrap.kafka-cluster:9092',
    'properties.group.id' = 'flink-cdc',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.TECHNOLOGY_ZZLXKT'
);

CREATE TABLE `PROJECT_MANAGER_PERFORMANCE` (
   `ts` TIMESTAMP_LTZ(3) METADATA FROM 'op_ts' VIRTUAL,
   `_id` VARCHAR(2147483647) NOT NULL,
   `approveStatus` VARCHAR(2147483647),
   `createdAt` TIMESTAMP(3),
   `updatedAt` TIMESTAMP(3),
   `certNo` VARCHAR(2147483647),
   `complete_projects` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>,
   `accumulated_years` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>,
   `overseas_years` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>,
   `constructor_major` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>,
   `safe_pro_certificate` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>,
   `other_qualification` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>,
   `isArchive` BOOLEAN,
   `auditStatus` VARCHAR(2147483647),
   `auditName` VARCHAR(2147483647),
   `auditDate` VARCHAR(2147483647),
   `submitDate` VARCHAR(2147483647),
   `action` VARCHAR(2147483647),
   `operatorName` VARCHAR(2147483647),
   `operatorId` VARCHAR(2147483647),
   `eventTime` VARCHAR(2147483647),
   `applyStatus` VARCHAR(2147483647),
   `applyText` VARCHAR(2147483647),
   `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>,
   `personal_honor_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `honorary_title` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `rewardlv` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `prizetime` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `apporg` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>,
   `work_performance_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `job_performance_category` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `project_situation` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>,
   `project_performance_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `projname` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `postions` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `appointtime` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `contract_amount` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `industry_categories` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `businessarea` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `projectattribute` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `end_time` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `contract_duration` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `work_time` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `delivery_time` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `delivery_contract_amount` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `project_income` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `revenue_proportion` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `is_reach` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `excess` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `country` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `construct` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `construction_control_unit` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `reward_punishment_info` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `credit_evaluation` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `projectStatus` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `projectSummary` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `actualProfitSettled` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `project_results` ARRAY<ROW<`dataId` VARCHAR(2147483647), `prizename` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `prizetype` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `certorg` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `prizetime` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `prizelv` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>, `operating_performance_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `projectname` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `contract_amount` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `certification_unit_person` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `project_winning_time` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `winning_project_owner_unit` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>, `safety_quality_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `accident_type` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `has_accident` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `project_situation` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>>>,
   PRIMARY KEY (`_id`) NOT ENFORCED
)
    COMMENT ''
WITH (
  'collection' = 'project_manager_performance',
  'connector' = 'mongodb-cdc',
  'database' = 'hr',
  'hosts' = 'mongodb-cluster-0.mongodb-cluster-headless.mongodb.svc.cluster.local:27017,mongodb-cluster-1.mongodb-cluster-headless.mongodb.svc.cluster.local:27017,mongodb-cluster-2.mongodb-cluster-headless.mongodb.svc.cluster.local:27017',
  'password' = 'mongodb',
  'username' = 'root'
);
