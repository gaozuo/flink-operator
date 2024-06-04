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

CREATE TABLE `LAKE_RAW_WAF_CORE_ENTITY`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_waf_core_entity',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_WAF_CORE_ENTITYITEM`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_waf_core_entityitem',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_WAF_APP_ATTACH`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_waf_app_attach',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_WAF_APP_ATTACHREF`
(
    `TS`         TIMESTAMP(3),
    `UUID`     VARCHAR(2147483647) NOT NULL,
    `BIZID`    VARCHAR(2147483647),
    `EIID`     VARCHAR(2147483647),
    `ATTACHID` VARCHAR(2147483647),
    `SNO`      BIGINT,
    `EID`      VARCHAR(2147483647),
    PRIMARY KEY (`UUID`) NOT ENFORCED
)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_waf_app_attachref',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_HR_EMP_BASICINFO`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_hr_emp_basicinfo',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_HR_WORK_POSTWORKINFO`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_hr_work_postworkinfo',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_HR_WORK_EMPPOSITION`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_hr_work_empposition',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_HR_EMP_ACADEMICDEGREECERT`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_hr_emp_academicdegreecert',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_HR_EMP_PROFTECHPOSITIONQUA`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_hr_emp_proftechpositionqua',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_WAF_AC_ORGAN`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_waf_ac_organ',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_WAF_AC_ORGAN2BIZ`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_waf_ac_organ2biz',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_MV_HR_DICTV2_RULE`
(
    `TS`         TIMESTAMP(3),
    `DICT_CODE`     VARCHAR(2147483647) NOT NULL,
    `TYPE`          VARCHAR(2147483647),
    `DICT_NAME`     VARCHAR(2147483647),
    `SN`            VARCHAR(2147483647),
    `TOP_DICT_NAME` VARCHAR(2147483647),
    PRIMARY KEY (`DICT_CODE`) NOT ENFORCED
)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_mv_hr_dictv2_rule',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);


CREATE TABLE `LAKE_RAW_WAF_CORE_DICT`
(
    `TS`         TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_waf_core_dict',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_WAF_CORE_DICTITEM`
(
    `TS`        TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_waf_core_dictitem',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_HR_TV2_TAG_INS`
(
    `TS`                 TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_hr_tv2_tag_ins',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_HR_TV2_EMP_TAG_INS`
(
    `TS`                 TIMESTAMP(3),
    `EMP_TAG_INS_ID`     VARCHAR(2147483647) NOT NULL,
    `EMP_ID`             VARCHAR(2147483647),
    `TAG_INS_ID`         VARCHAR(2147483647),
    `CREATE_DATE`        VARCHAR(2147483647),
    `CREATOR`            VARCHAR(2147483647),
    `NOTE`               VARCHAR(2147483647),
    PRIMARY KEY (`EMP_TAG_INS_ID`) NOT ENFORCED
)
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_hr_tv2_emp_tag_ins',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);

CREATE TABLE `LAKE_RAW_PROJECT_MANAGER_PERFORMANCE` (
   `ts`                 TIMESTAMP(3),
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
    'connector' = 'hudi',
    'path' = 's3a://hr-oss-bucket01/hudi/lake_raw_project_manager_performance',
    'table.type' = 'MERGE_ON_READ',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4' -- specifies the check interval for finding new source commits, default 60s.
);