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

CREATE TABLE `HR_SOURCE_PART_ATTACH` (
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


EXECUTE STATEMENT SET
BEGIN
  INSERT INTO HR_SOURCE_PART_BESTQUACERTINFOMAINPROF SELECT `MAIN_EMPID`, StringSplitter(MAINPROF0, ',', MAP['','']) MAINPROF0, ARRAY[t_dict_mainprof0.NAME] AS `MAINPROF0_NAME` FROM ( SELECT `EMPID` AS `MAIN_EMPID`, MAX(MAINPROF0) MAINPROF0 FROM `V1202_HR_EMP_QUACERTINFO` WHERE `STATUS` = '1' AND `CERTTYPE` = 'N0101' AND `MAINPROF0` IS NOT NULL GROUP BY `EMPID` ) AS `main_a` LEFT JOIN ( SELECT CODE, NAME FROM `V1202_WAF_CORE_DICTITEM` WHERE `DID` = '101475' ) AS `t_dict_mainprof0` ON ( t_dict_mainprof0.CODE = main_a.MAINPROF0 );
  INSERT INTO HR_SOURCE_PART_QUACERTINFOSAFE SELECT `SAFE_EMPID`, StringSplitter(`SAFE_CODE`, ',', MAP['', '']) SAFE_CODE, ARRAY[t_dict_certype.NAME] AS `SAFE_NAME` FROM ( SELECT `EMPID` AS `SAFE_EMPID`, MAX(CERTTYPE) AS `SAFE_CODE` FROM `V1202_HR_EMP_QUACERTINFO` WHERE `STATUS` = '1' AND `CERTTYPE` IN ( 'N0401', 'N0402', 'N0403', 'N0404', 'N0405', 'N0406', 'N0407', 'N0408', 'N0409', 'N0410', 'N0411' ) GROUP BY `EMPID` ) AS `main_b` LEFT JOIN ( SELECT CODE, NAME FROM `V1202_WAF_CORE_DICTITEM` WHERE `DID` = '1011922' ) AS `t_dict_certype` ON ( t_dict_certype.CODE = main_b.SAFE_CODE );
  INSERT INTO HR_SOURCE_PART_QUACERTINFOOTHER SELECT `OTHER_EMPID`, StringSplitter(OTHER_CODE, ',', MAP['','']) OTHER_CODE, ARRAY[t_dict_certype.NAME] AS `OTHER_NAME` FROM ( SELECT `EMPID` AS `OTHER_EMPID`, MAX(CERTTYPE) AS `OTHER_CODE` FROM `V1202_HR_EMP_QUACERTINFO` WHERE `STATUS` = '1' AND `CERTTYPE` NOT IN ( 'N0401', 'N0402', 'N0403', 'N0404', 'N0405', 'N0406', 'N0407', 'N0408', 'N0409', 'N0410', 'N0411' ) GROUP BY `EMPID` ) AS `main_c` LEFT JOIN ( SELECT CODE, NAME FROM `V1202_WAF_CORE_DICTITEM` WHERE DID = '1011922' ) AS `t_dict_certype` ON (main_c.OTHER_CODE = t_dict_certype.CODE);
  INSERT INTO HR_SOURCE_PART_BESTEDU SELECT `EMPID` AS `EDU_EMPID`, `EDUCATION`, ARRAY[t_dict_education.NAME] AS `EDUCATION_NAME`, `DEGREE`, ARRAY[t_dict_degree.NAME] AS `DEGREE_NAME`, `COLLEGE`, ARRAY[t_dict_college.NAME] AS `COLLEGE_NAME`, `PROFNAME` FROM ( SELECT `EMPID`, `EDUCATION`, `DEGREE`, `COLLEGE`, `PROFNAME` FROM ( SELECT `V1202_HR_EMP_ACADEMICDEGREECERT`.*, ROW_NUMBER() OVER ( PARTITION BY `EMPID` ORDER BY `EDUCATION`, `OUTTIME` DESC ) AS `rn` FROM `V1202_HR_EMP_ACADEMICDEGREECERT` WHERE `STATUS` = '1' ) WHERE `rn` = 1 ) AS `t_edu` LEFT JOIN ( SELECT CODE, NAME FROM `V1202_WAF_CORE_DICTITEM` WHERE `DID` = '1011872' ) AS `t_dict_education` ON (t_dict_education.CODE = EDUCATION) LEFT JOIN ( SELECT CODE, NAME FROM `V1202_WAF_CORE_DICTITEM` WHERE `DID` = '1011871' ) AS `t_dict_degree` ON (t_dict_degree.CODE = DEGREE) LEFT JOIN ( SELECT CODE, NAME FROM `V1202_WAF_CORE_DICTITEM` WHERE `DID` = '1011868' ) AS `t_dict_college` ON (t_dict_college.CODE = COLLEGE);
END;


