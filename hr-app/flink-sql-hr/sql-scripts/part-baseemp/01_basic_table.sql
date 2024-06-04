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

CREATE TABLE `V1202_HR_EMP_BASICINFO` (
  `TS` TIMESTAMP(3) METADATA FROM 'timestamp',
  `EMPCODE` VARCHAR(2147483647),
  `NAME` VARCHAR(2147483647),
  `NAMESPELL` VARCHAR(2147483647),
  `ENNAME` VARCHAR(2147483647),
  `NAMEUSED` VARCHAR(2147483647),
  `CERTTYPE` VARCHAR(2147483647),
  `CERTNO` VARCHAR(2147483647),
  `SEX` VARCHAR(2147483647),
  `AGE` VARCHAR(2147483647),
  `BIRTHDAY` VARCHAR(2147483647),
  `BIRTHPLACE` VARCHAR(2147483647),
  `RESPLACE` VARCHAR(2147483647),
  `RESNATURE` VARCHAR(2147483647),
  `NATIONNALITY` VARCHAR(2147483647),
  `NATION` VARCHAR(2147483647),
  `NATIVEPLACE` VARCHAR(2147483647),
  `MARRY` VARCHAR(2147483647),
  `WORKTIME` VARCHAR(2147483647),
  `SOCIANO` VARCHAR(2147483647),
  `PHONE` VARCHAR(2147483647),
  `HOMEADDRESS` VARCHAR(2147483647),
  `EMAIL` VARCHAR(2147483647),
  `POSTALCODE` VARCHAR(2147483647),
  `OPTOR` VARCHAR(2147483647),
  `OPTTIME` VARCHAR(2147483647),
  `OPTORG` VARCHAR(2147483647),
  `BESTEDU` VARCHAR(2147483647),
  `BESTPROPOST` VARCHAR(2147483647),
  `POSTIONS` VARCHAR(2147483647),
  `POLITICSFACES` VARCHAR(2147483647),
  `WORKPROF` VARCHAR(2147483647),
  `BESTDEGREE` VARCHAR(2147483647),
  `WORKAGE` VARCHAR(2147483647),
  `ENPAGE` VARCHAR(2147483647),
  `UNITACCAGE` VARCHAR(2147483647),
  `GROUPAGE` VARCHAR(2147483647),
  `GROUPACCAGE` VARCHAR(2147483647),
  `CONTRACTUNIT` VARCHAR(2147483647),
  `PHOTO` VARCHAR(2147483647),
  `MAINPROFCOTEGORY` VARCHAR(2147483647),
  `RECRUITMENT` VARCHAR(2147483647),
  `DEPOSITUNIT` VARCHAR(2147483647),
  `RETIREMENTDATE` VARCHAR(2147483647),
  `POSITIONGRADE` VARCHAR(2147483647),
  `RETIREMENTORG` VARCHAR(2147483647),
  `RETIREMENTPOSITION` VARCHAR(2147483647),
  `EMPIDENTITY` VARCHAR(2147483647),
  `STATE` VARCHAR(2147483647),
  `STUDYPROF` VARCHAR(2147483647),
  `SOCIALTYPE1` VARCHAR(2147483647),
  `SOCIALCODE1` VARCHAR(2147483647),
  `SOCIALTYPE2` VARCHAR(2147483647),
  `SOCIALCODE2` VARCHAR(2147483647),
  `ANNUITYNO` VARCHAR(2147483647),
  `HOUSINGFUND` VARCHAR(2147483647),
  `NOTE` VARCHAR(2147483647),
  `TECHPROF` VARCHAR(2147483647),
  `EMPID` VARCHAR(2147483647) NOT NULL,
  `LANDLINE_TELEPHONE_NUMBER` VARCHAR(2147483647),
  `FAX` VARCHAR(2147483647),
  `ROOM_NUMBER` VARCHAR(2147483647),
  `GLOBALROAMING` VARCHAR(2147483647),
  `PERSONNELCATEGORY` VARCHAR(2147483647),
  `HIERARCHY` VARCHAR(2147483647),
  `CTRANK` VARCHAR(2147483647),
  `SHJJOBNUMBER` VARCHAR(2147483647),
  `SHJEMPTYPE` VARCHAR(2147483647),
  `SHJTALENTLEVEL` VARCHAR(2147483647),
  `SHJDUTYSTATION` VARCHAR(2147483647),
  `SHJ_ZYTXRC` VARCHAR(2147483647),
  `SHJ_WDYW` VARCHAR(2147483647),
  `SHJ_JWRY` VARCHAR(2147483647),
  `SHJ_PQZ` VARCHAR(2147483647),
  `SHJ_RCGX` VARCHAR(2147483647),
  `SHJ_ISPRO` VARCHAR(2147483647),
  PRIMARY KEY (`EMPID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka.confluent:9092',
    'properties.group.id' = 'HR_EMP_BASICINFO',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.HR_EMP_BASICINFO'
);

CREATE TABLE `V1202_WAF_CORE_DICTITEM` (
   `DIID` VARCHAR(2147483647) NOT NULL,
   `PDIID` VARCHAR(2147483647),
   `DIRULE` VARCHAR(2147483647),
   `CODE` VARCHAR(2147483647),
   `NAME` VARCHAR(2147483647),
   `DID` VARCHAR(2147483647),
   `STATUS` VARCHAR(2147483647),
   `GRADE` BIGINT,
   `SNO` BIGINT,
   `RESERVE1` VARCHAR(2147483647),
   `RESERVE2` VARCHAR(2147483647),
   `RESERVE3` VARCHAR(2147483647),
   `MRUT` VARCHAR(2147483647),
   `OPER` VARCHAR(2147483647),
   `NOTE` VARCHAR(2147483647),
   `MD_STATUS` VARCHAR(2147483647),
   `MD_CODE` VARCHAR(2147483647),
   `NEW_CODE` VARCHAR(2147483647),
   PRIMARY KEY (`DIID`) NOT ENFORCED
)
WITH (
    'connector' = 'kafka',
    'debezium-avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
    'format' = 'debezium-avro-confluent',
    'properties.bootstrap.servers' = 'kafka.confluent:9092',
    'properties.group.id' = 'WAF_CORE_DICTITEM',
    'scan.startup.mode' = 'earliest-offset',
    'topic' = 'HR.HROUTPUT.WAF_CORE_DICTITEM'
);

CREATE TABLE `V1202_HR_SOURCE_PART_ATTACH` (
       `BIZID` STRING NOT NULL,
       `TABLE_NAME` STRING,
       `ATTACHMENT` ARRAY<ROW<
           ID ROW<`TEXT` ARRAY<STRING>, `VALUE` ARRAY<STRING>>,
       FILENAME ROW<`TEXT` ARRAY<STRING>, `VALUE` ARRAY<STRING>>,
       FILESIZE ROW<`TEXT` ARRAY<STRING>, `VALUE` ARRAY<STRING>>,
       FILETYPE ROW<`TEXT` ARRAY<STRING>, `VALUE` ARRAY<STRING>>,
       TYPE ROW<`TEXT` ARRAY<STRING>, `VALUE` ARRAY<STRING>>,
       UPLOADTIME ROW<`TEXT` ARRAY<STRING>, `VALUE` ARRAY<STRING>>,
       UPLOADER ROW<`TEXT` ARRAY<STRING>, `VALUE` ARRAY<STRING>>
           >>,
       PRIMARY KEY (BIZID) NOT ENFORCED
)
WITH (
        'connector' = 'upsert-kafka',
        'key.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'key.format' = 'avro-confluent',
        'properties.bootstrap.servers' = 'kafka.confluent:9092',
        'properties.group.id' = 'HR_SOURCE_PART_ATTACH',
        'topic' = 'HR_SOURCE_PART_ATTACH',
        'value.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'value.format' = 'avro-confluent',
        'sink.buffer-flush.max-rows' = '4000000',
        'sink.buffer-flush.interval' = '1200s'
);

CREATE TABLE `HR_SOURCE_PART_MAINORG` (
      ORG_EMPID STRING NOT NULL,
      `WORKING_COID_NAME` ARRAY<STRING>,
      `WORKING_COID_ORULE` ARRAY<STRING>,
      `WORKING_DEPT_NAME` ARRAY<STRING>,
      `WORKING_DEPT_ORULE` ARRAY<STRING>,
      `POST` ARRAY<STRING>,
      `POSITIONGRADENORM` ARRAY<STRING>,
      `POSITIONGRADENORM_NAME` ARRAY<STRING>,
      PRIMARY KEY (`ORG_EMPID`) NOT ENFORCED
)
    WITH (
        'connector' = 'upsert-kafka',
        'key.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'key.format' = 'avro-confluent',
        'properties.bootstrap.servers' = 'kafka.confluent:9092',
        'properties.group.id' = 'HR_SOURCE_PART_MAINORG',
        'topic' = 'HR_SOURCE_PART_MAINORG',
        'value.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'value.format' = 'avro-confluent',
        'sink.buffer-flush.max-rows' = '4000000',
        'sink.buffer-flush.interval' = '1200s'
        );

CREATE TABLE `HR_SOURCE_PART_BESTEDU` (
      `EDU_EMPID` STRING NOT NULL,
      `EDUCATION` STRING,
      `EDUCATION_NAME` ARRAY<STRING>,
      `DEGREE` STRING,
      `DEGREE_NAME` ARRAY<STRING>,
      `COLLEGE` STRING,
      `COLLEGE_NAME` ARRAY<STRING>,
      `PROFNAME` STRING,
      PRIMARY KEY (`EDU_EMPID`) NOT ENFORCED
)
    WITH (
        'connector' = 'upsert-kafka',
        'key.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'key.format' = 'avro-confluent',
        'properties.bootstrap.servers' = 'kafka.confluent:9092',
        'properties.group.id' = 'HR_SOURCE_PART_BESTEDU',
        'topic' = 'HR_SOURCE_PART_BESTEDU',
        'value.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'value.format' = 'avro-confluent',
        'sink.buffer-flush.max-rows' = '4000000',
        'sink.buffer-flush.interval' = '1200s'
        );

CREATE TABLE `HR_SOURCE_PART_BESTPROPOST` (
                                              `PROFTECHQUA` STRING,
                                              `PROFTECHQUA_NAME` ARRAY<STRING>,
                                              `QUA_EMPID` STRING NOT NULL,
                                              PRIMARY KEY (`QUA_EMPID`) NOT ENFORCED
)
    WITH (
        'connector' = 'upsert-kafka',
        'key.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'key.format' = 'avro-confluent',
        'properties.bootstrap.servers' = 'kafka.confluent:9092',
        'properties.group.id' = 'HR_SOURCE_PART_BESTPROPOST',
        'topic' = 'HR_SOURCE_PART_BESTPROPOST',
        'value.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'value.format' = 'avro-confluent',
        'sink.buffer-flush.max-rows' = '4000000',
        'sink.buffer-flush.interval' = '1200s'
        );

CREATE TABLE `HR_SOURCE_PART_BESTQUACERTINFOMAINPROF` (
                                                          `MAIN_EMPID` VARCHAR(2147483647) NOT NULL,
                                                          MAINPROF0 ARRAY<STRING>,
                                                          `MAINPROF0_NAME` ARRAY<STRING>,
                                                          PRIMARY KEY (`MAIN_EMPID`) NOT ENFORCED
)
    WITH (
        'connector' = 'upsert-kafka',
        'key.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'key.format' = 'avro-confluent',
        'properties.bootstrap.servers' = 'kafka.confluent:9092',
        'properties.group.id' = 'HR_SOURCE_PART_BESTQUACERTINFOMAINPROF',
        'topic' = 'HR_SOURCE_PART_BESTQUACERTINFOMAINPROF',
        'value.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'value.format' = 'avro-confluent',
        'sink.buffer-flush.max-rows' = '4000000',
        'sink.buffer-flush.interval' = '1200s'
        );

CREATE TABLE `HR_SOURCE_PART_QUACERTINFOSAFE` (
                                                  SAFE_EMPID STRING NOT NULL,
                                                  `SAFE_CODE` ARRAY<STRING>,
                                                  `SAFE_NAME` ARRAY<STRING>,
                                                  PRIMARY KEY (`SAFE_EMPID`) NOT ENFORCED
)
    WITH (
        'connector' = 'upsert-kafka',
        'key.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'key.format' = 'avro-confluent',
        'properties.bootstrap.servers' = 'kafka.confluent:9092',
        'properties.group.id' = 'HR_SOURCE_PART_QUACERTINFOSAFE',
        'topic' = 'HR_SOURCE_PART_QUACERTINFOSAFE',
        'value.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
        'value.format' = 'avro-confluent',
        'sink.buffer-flush.max-rows' = '4000000',
        'sink.buffer-flush.interval' = '1200s'
        );

CREATE TABLE `HR_SOURCE_PART_QUACERTINFOOTHER` (
                                                   OTHER_EMPID STRING NOT NULL,
                                                   `OTHER_CODE` ARRAY<STRING>,
                                                   `OTHER_NAME` ARRAY<STRING>,
                                                   PRIMARY KEY (`OTHER_EMPID`) NOT ENFORCED
)
WITH (
    'connector' = 'upsert-kafka',
    'key.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
    'key.format' = 'avro-confluent',
    'properties.bootstrap.servers' = 'kafka.confluent:9092',
    'properties.group.id' = 'HR_SOURCE_PART_QUACERTINFOOTHER',
    'topic' = 'HR_SOURCE_PART_QUACERTINFOOTHER',
    'value.avro-confluent.schema-registry.url' = 'http://schemaregistry.confluent:8081',
    'value.format' = 'avro-confluent',
    'sink.buffer-flush.max-rows' = '4000000',
    'sink.buffer-flush.interval' = '1200s'
);






