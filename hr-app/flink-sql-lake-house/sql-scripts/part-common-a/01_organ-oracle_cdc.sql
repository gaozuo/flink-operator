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


CREATE TABLE `WAF_AC_ORGAN` (
                                `TS` TIMESTAMP(3) METADATA FROM 'timestamp',
                                `OID` VARCHAR(2147483647) NOT NULL,
                                `GOID` VARCHAR(2147483647),
                                `COID` VARCHAR(2147483647),
                                `NAME` VARCHAR(2147483647),
                                `SHORTNAME` VARCHAR(2147483647),
                                `STATUS` VARCHAR(2147483647),
                                `GRADE` BIGINT,
                                `TYPE` VARCHAR(2147483647),
                                `TYPEEXT` VARCHAR(2147483647),
                                `BIZTYPE` VARCHAR(2147483647),
                                `CROSSORGAN` VARCHAR(2147483647),
                                `OCODE` VARCHAR(2147483647),
                                `MRUT` VARCHAR(2147483647),
                                `OPER` VARCHAR(2147483647),
                                `NOTE` VARCHAR(2147483647),
                                `TEMORGANNAME` VARCHAR(2147483647),
                                `ORGANEMP` VARCHAR(2147483647),
                                `STARTDATE` VARCHAR(2147483647),
                                `PROJECTTYPE` VARCHAR(2147483647),
                                `PROJECTMANTYPE` VARCHAR(2147483647),
                                `PROJECTSCALE` VARCHAR(2147483647),
                                `ORGGRADE` VARCHAR(2147483647),
                                `ENTCLASS` VARCHAR(2147483647),
                                `BIZDOMAIN` VARCHAR(2147483647),
                                `TERRITORYPRO` VARCHAR(2147483647),
                                `CAREA` VARCHAR(2147483647),
                                `ORGPROVINCE` VARCHAR(2147483647),
                                `ORGANGRADE` VARCHAR(2147483647),
                                `STATE` VARCHAR(2147483647),
                                `ROWN` VARCHAR(2147483647),
                                `ROID` VARCHAR(2147483647),
                                `QYGRADE` VARCHAR(2147483647),
                                `RESERVE1` VARCHAR(2147483647),
                                `RESERVE2` VARCHAR(2147483647),
                                `BISSNES_TYPE` VARCHAR(2147483647),
                                `PROJECTSTATUS` VARCHAR(2147483647),
                                `PAY_OID` VARCHAR(2147483647),
                                `PAY_OWN` VARCHAR(2147483647),
                                `POSTAL_ADDRESS` VARCHAR(2147483647),
                                `IS_INDEPENDENT` VARCHAR(2147483647),
                                `RESERVE3` VARCHAR(2147483647),
                                `COMBINEDFORM` VARCHAR(2147483647),
                                `ENTERPRISE_CATEGORY` VARCHAR(2147483647),
                                `APPROVALTIME` VARCHAR(2147483647),
                                `DECLAREORG` VARCHAR(2147483647),
                                `DECLARETIME` VARCHAR(2147483647),
                                `ESTABLISH_REASON` VARCHAR(2147483647),
                                `ESTABLISH_REASON_OTHER` VARCHAR(2147483647),
                                `ESTABLIST_MODE` VARCHAR(2147483647),
                                `CONTRIBUTION_MODE` VARCHAR(2147483647),
                                `CONTRIBUTION_ARRANGE` VARCHAR(2147483647),
                                `STEP_PAID` VARCHAR(2147483647),
                                `MAIN_BUSINESS_AREA` VARCHAR(2147483647),
                                `MAIN_BUSINESS_AREA_OTHER` VARCHAR(2147483647),
                                `FUNCTION_POSITION` VARCHAR(2147483647),
                                `BUSINESS_MODEL` VARCHAR(2147483647),
                                `BUSINESS_MODEL_OTHER` VARCHAR(2147483647),
                                `VALUE_CONTRIBUTION` VARCHAR(2147483647),
                                `VALUE_CONTRIBUTION_OTHER` VARCHAR(2147483647),
                                `ENGLISHNAME` VARCHAR(2147483647),
                                `ENGLISHSHORTNAME` VARCHAR(2147483647),
                                `WAOZYYWQY` VARCHAR(2147483647),
                                `WAODLKZTZYW` VARCHAR(2147483647),
                                `MDM_CODE` VARCHAR(2147483647),
                                `MDM_VIEW_FLAG` VARCHAR(2147483647),
                                PRIMARY KEY (`OID`) NOT ENFORCED
)
    WITH (
        'connector' = 'kafka',
        'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'format' = 'debezium-avro-confluent',
        'properties.bootstrap.servers' = 'kafka.confluent:9092',
        'properties.group.id' = 'WAF_AC_ORGAN',
        'scan.startup.mode' = 'earliest-offset',
        'topic' = 'HR.HROUTPUT.WAF_AC_ORGAN'
        );






