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
    INSERT INTO HR_SOURCE_PART_ATTACH SELECT `BIZID`, `TABLE_NAME`, `KeySet`( COLLECT( ROW( ROW( ARRAY[ `ATTACHID` ], ARRAY[ `ATTACHID` ]), ROW( ARRAY[ `SOURCEFILE` ], ARRAY[ `SOURCEFILE` ] ), ROW( ARRAY[ `FILELENGTH` ], ARRAY[ `FILELENGTH` ] ), ROW( ARRAY[ `FILETYPE` ], ARRAY[ `FILETYPE` ] ), ROW( ARRAY[ `COL_NAME` ], ARRAY[ `COL_NAME` ] ), ROW(ARRAY[ `MRUT` ], ARRAY[ `MRUT` ]), ROW( ARRAY[ `OPER_NAME` ], ARRAY[ `OPER_NAME` ] ) ) ) ) AS `ATTACHMENT` FROM( WITH `FILE_TEMP` AS ( SELECT `A`.`ATTACHID`, `A`.`FILELENGTH`, `A`.`MRUT`, `A`.`TARGETPATH`, `A`.`TARGETFILE`, `A`.`SOURCEFILE`, `B`.`EIID`, `B`.`EID`, `B`.`BIZID`, `C`.`NAME` AS `OPER_NAME` FROM `V1202_WAF_APP_ATTACH` AS `A`, `V1202_WAF_APP_ATTACHREF` AS `B`, `V1202_WAF_AC_USER` AS `C` WHERE `A`.`ATTACHID` = `B`.`ATTACHID` AND `A`.`OPER` = `C`.`USERID` AND ( `B`.`EID` IN ( '64762cb4ce8c4ffcad407b2fdc844212', 'c571b469ef82415d83cac3a6d09e14cc', 'fd4809a781044eb3882863831b1a04bc', '197c9e9a7429437b9b5b2fd94fbaa3cc', '90754ce2dd7d4d57a395deddc0b8a68e', '2ff3d066b3b1445f8a08a8bc365b16c8', '2ff3d066b3b1445f8a08a8bc365b16c8', 'c838e7d926d1444b9640e599af77da6d', '9879df2145584b61b145db03dc8f6151', '8efc12445db2409e8cb23c7c6d81c31e' ) OR `B`.`EID` = 'e1e6afc5ec094abb855e4d8b8382c385' AND `A`.`TARGETPATH` = 'hr/photo' ) ), `ENTITY_TEMP` AS ( SELECT `A`.`EID`, `B`.`EIID`, `A`.`CODE` AS `TABLE_NAME`, `B`.`CODE` AS `COL_NAME`, `A`.`PRIMARYKEY` FROM `V1202_WAF_CORE_ENTITY` AS `A`, `V1202_WAF_CORE_ENTITYITEM` AS `B` WHERE `A`.`EID` = `B`.`EID` ), `TEMP` AS ( SELECT `A`.`ATTACHID`, `A`.`FILELENGTH`, `A`.`SOURCEFILE`, `B`.`TABLE_NAME`, `B`.`COL_NAME`, `B`.`PRIMARYKEY` AS `REFER_FILED`, `A`.`BIZID`, `A`.`MRUT`, `A`.`OPER_NAME`, CASE WHEN `B`.`TABLE_NAME` = 'borg_jgxx_certificate' THEN 'certificate' WHEN `B`.`TABLE_NAME` = 'borg_jgxx_dot' THEN 'certificate' WHEN `B`.`TABLE_NAME` = 'borg_jgxx_patent' THEN 'certificate' WHEN `B`.`TABLE_NAME` = 'borg_jgxx_qualification' THEN 'certificate' WHEN `B`.`TABLE_NAME` = 'hr_emp_proftechpositionqua' THEN 'proftechaccessory' WHEN `B`.`TABLE_NAME` = 'hr_emp_quacertinfo' THEN 'quacertaccessory' WHEN `B`.`TABLE_NAME` = 'hr_emp_validpassport' THEN 'validpassportaccessory' WHEN `B`.`TABLE_NAME` = 'hr_emp_basicinfo' THEN 'photo' WHEN `B`.`TABLE_NAME` = 'hr_emp_academicdegreecert' THEN `B`.`COL_NAME` ELSE '' END AS `FILETYPE` FROM `FILE_TEMP` AS `A`, `ENTITY_TEMP` AS `B` WHERE `A`.`EID` = `B`.`EID` AND `A`.`EIID` = `B`.`EIID` ) SELECT * FROM `TEMP` ) GROUP BY `TABLE_NAME`, `BIZID`;
    INSERT INTO HR_SOURCE_PART_MAINORG WITH `ORGAN_INFO` AS ( SELECT `aa`.`OID`, `bb`.`NAME`, `aa`.`ORULE`, `bb`.`COID` FROM `WAF_AC_ORGAN2BIZ` AS `aa`, `WAF_AC_ORGAN` AS `bb` WHERE `aa`.`OID` = `bb`.`OID` AND `aa`.`BIZTYPE` = 'base' AND `bb`.`STATUS` NOT IN ('4', '5') ), `a` AS ( SELECT `c`.`NAME` AS `CNAME`, `c`.`ORULE` AS `CORULE`, `b`.`NAME`, `b`.`ORULE`, `b`.`OID` FROM `ORGAN_INFO` AS `b`, `ORGAN_INFO` AS `c` WHERE `b`.`COID` = `c`.`OID` AND `b`.`OID` IS NOT NULL ) SELECT `postworkinfo`.`EMPID` AS `ORG_EMPID`, `KeySet`( COLLECT(`a`.`CNAME`) ) AS `WORKING_COID_NAME`, `KeySet`( COLLECT(`a`.`CORULE`) ) AS `WORKING_COID_ORULE`, `KeySet`( COLLECT(`a`.`NAME`) ) AS `WORKING_DEPT_NAME`, `KeySet`( COLLECT(`a`.`ORULE`) ) AS `WORKING_DEPT_ORULE`, `KeySet`( COLLECT(`postworkinfo`.`POST`) ) AS `POST`, `KeySet`( COLLECT( `postworkinfo`.`POSITIONGRADENORM` ) ) AS `POSITIONGRADENORM`, `KeySet`( COLLECT( `t_dict_positiongradenorm`.`POSITIONGRADENORM_NAME` ) ) AS `POSITIONGRADENORM_NAME` FROM ( SELECT * FROM `V1202_HR_WORK_POSTWORKINFO` WHERE `OFFICETYPE` = '00' AND `STATUS` = '1' ) AS `postworkinfo` INNER JOIN `a` ON `postworkinfo`.`OFFICEDEPID` = `a`.`OID` LEFT JOIN ( SELECT `DICT_CODE`, `TOP_DICT_NAME` AS `POSITIONGRADENORM_NAME` FROM `V1202_MV_HR_DICTV2_RULE` ) AS `t_dict_positiongradenorm` ON `postworkinfo`.`POSITIONGRADENORM` = `t_dict_positiongradenorm`.`DICT_CODE` GROUP BY `postworkinfo`.`EMPID`;
    INSERT INTO HR_SOURCE_PART_BESTPROPOST SELECT `t_positionqua`.`PROFTECHQUA`, ARRAY[t_dict_bestpropost.NAME] AS `PROFTECHQUA_NAME`, `t_positionqua`.`EMPID` AS `QUA_EMPID` FROM ( SELECT `PROFTECHQUA`, `EMPID` FROM ( SELECT `V1202_HR_EMP_PROFTECHPOSITIONQUA`.*, ROW_NUMBER() OVER ( PARTITION BY `EMPID` ORDER BY `RANK`, `GAINQUATIME` DESC ) AS `rn` FROM `V1202_HR_EMP_PROFTECHPOSITIONQUA` WHERE `STATUS` = '1' ) WHERE `rn` = 1 ) AS `t_positionqua` LEFT JOIN( SELECT CODE, NAME FROM `V1202_WAF_CORE_DICTITEM` WHERE `DID` = '101449' ) AS `t_dict_bestpropost` ON (t_dict_bestpropost.CODE = t_positionqua.PROFTECHQUA);
END;


