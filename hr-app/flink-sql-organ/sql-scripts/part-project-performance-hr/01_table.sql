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


CREATE TABLE XMYJ_PERFORMANCE
(
    ID                         STRING,
    CREATEDAT                  DATE,
    UPDATEDAT                  DATE,
    CERTNO                     STRING,
    ISARCHIVE                  STRING,
    AUDITSTATUS                STRING,
    AUDITNAME                  STRING,
    AUDITDATE                  STRING,
    SUBMITDATE                 STRING,
    APPROVESTATUS              STRING,
    `ACTION`                   STRING,
    OPERATORNAME               STRING,
    OPERATORID                 STRING,
    EVENTTIME                  STRING,
    APPLYSTATUS                STRING,
    APPLYTEXT                  STRING,
    COMPLETE_PROJECTS          STRING,
    ACCUMULATED_YEARS          STRING,
    OVERSEAS_YEARS             STRING,
    CONSTRUCTOR_MAJOR_TEXT     STRING,
    CONSTRUCTOR_MAJOR_VALUE    STRING,
    SAFE_PRO_CERTIFICATE_TEXT  STRING,
    SAFE_PRO_CERTIFICATE_VALUE STRING,
    OTHER_QUALIFICATION_TEXT   STRING,
    OTHER_QUALIFICATION_VALUE  STRING,
    FILEIDS                    STRING,
    PRIMARY KEY (ID) NOT ENFORCED
)
    WITH (
        'connector' = 'jdbc',
        'url' = 'jdbc:oracle:thin:@10.201.218.54:1521/hr',
        'table-name' = 'XMYJ_PERFORMANCE',
        'username' = 'hrorg_1217',
        'password' = 'rx5Hog'
        );



CREATE TABLE XMYJ_PERSONALHONOR
(
    DATAID         STRING,
    ID             STRING,
    CERTNO         STRING,
    HONORARY_TITLE STRING,
    REWARDLV_TEXT  STRING,
    REWARDLV_VALUE STRING,
    PRIZETIME      STRING,
    APPORG         STRING,
    APPLYSTATUS    STRING,
    APPLYTEXT      STRING,
    FILEIDS        STRING,
    PRIMARY KEY (DATAID) NOT ENFORCED
)
    WITH (
        'connector' = 'jdbc',
        'url' = 'jdbc:oracle:thin:@10.201.218.54:1521/hr',
        'table-name' = 'XMYJ_PERSONALHONOR',
        'username' = 'hrorg_1217',
        'password' = 'rx5Hog'
        );



CREATE TABLE XMYJ_WORKPERFORMANCE
(
    DATAID                         STRING,
    ID                             STRING,
    CERTNO                         STRING,
    JOB_PERFORMANCE_CATEGORY_TEXT  STRING,
    JOB_PERFORMANCE_CATEGORY_VALUE STRING,
    PROJECT_SITUATION              STRING,
    APPLYSTATUS                    STRING,
    APPLYTEXT                      STRING,
    FILEIDS                        STRING,
    PRIMARY KEY (DATAID) NOT ENFORCED
)
    WITH (
        'connector' = 'jdbc',
        'url' = 'jdbc:oracle:thin:@10.201.218.54:1521/hr',
        'table-name' = 'XMYJ_WORKPERFORMANCE',
        'username' = 'hrorg_1217',
        'password' = 'rx5Hog'
        );



CREATE TABLE XMYJ_PROJECTPERFORMANCE
(
    DATAID                       STRING,
    ID                           STRING,
    CERTNO                       STRING,
    PROJNAME                     STRING,
    POSTIONS_TEXT                STRING,
    POSTIONS_VALUE               STRING,
    APPOINTTIME                  STRING,
    CONTRACT_AMOUNT              STRING,
    INDUSTRY_CATEGORIES_TEXT     STRING,
    INDUSTRY_CATEGORIES_VALUE    STRING,
    BUSINESSAREA_TEXT            STRING,
    BUSINESSAREA_VALUE           STRING,
    PROJECTATTRIBUTE_TEXT        STRING,
    PROJECTATTRIBUTE_VALUE       STRING,
    END_TIME                     STRING,
    CONTRACT_DURATION            STRING,
    WORK_TIME                    STRING,
    DELIVERY_TIME                STRING,
    DELIVERY_CONTRACT_AMOUNT     STRING,
    PROJECT_INCOME               STRING,
    REVENUE_PROPORTION           STRING,
    IS_REACH_TEXT                STRING,
    IS_REACH_VALUE               STRING,
    EXCESS                       STRING,
    COUNTRY_TEXT                 STRING,
    COUNTRY_VALUE                STRING,
    CONSTRUCT                    STRING,
    CONSTRUCTION_CONTROL_UNIT    STRING,
    REWARD_PUNISHMENT_INFO_TEXT  STRING,
    REWARD_PUNISHMENT_INFO_VALUE STRING,
    CREDIT_EVALUATION_TEXT       STRING,
    CREDIT_EVALUATION_VALUE      STRING,
    PROJECTSTATUS_TEXT           STRING,
    PROJECTSTATUS_VALUE          STRING,
    PROJECTSUMMARY               STRING,
    ACTUALPROFITSETTLED          STRING,
    APPLYSTATUS                  STRING,
    APPLYTEXT                    STRING,
    FILEIDS                      STRING,
    PRIMARY KEY (DATAID) NOT ENFORCED
)
    WITH (
        'connector' = 'jdbc',
        'url' = 'jdbc:oracle:thin:@10.201.218.54:1521/hr',
        'table-name' = 'XMYJ_PROJECTPERFORMANCE',
        'username' = 'hrorg_1217',
        'password' = 'rx5Hog'
        );



CREATE TABLE XMYJ_PROJECTRESULTS
(
    DATAID          STRING,
    ID              STRING,
    PRIZENAME       STRING,
    PRIZENAME_VALUE STRING,
    PRIZETYPE_TEXT  STRING,
    PRIZETYPE_VALUE STRING,
    CERTORG         STRING,
    PRIZETIME       STRING,
    PRIZELV_TEXT    STRING,
    PRIZELV_VALUE   STRING,
    APPLYSTATUS     STRING,
    APPLYTEXT       STRING,
    FILEIDS         STRING,
    PRIMARY KEY (DATAID) NOT ENFORCED
)
    WITH (
        'connector' = 'jdbc',
        'url' = 'jdbc:oracle:thin:@10.201.218.54:1521/hr',
        'table-name' = 'XMYJ_PROJECTRESULTS',
        'username' = 'hrorg_1217',
        'password' = 'rx5Hog'
        );

CREATE TABLE XMYJ_OPERATINGPERFORMANCE
(
    DATAID                     STRING,
    ID                         STRING,
    PROJECTNAME                STRING,
    CONTRACT_AMOUNT            STRING,
    CERTIFICATION_UNIT_PERSON  STRING,
    PROJECT_WINNING_TIME       STRING,
    WINNING_PROJECT_OWNER_UNIT STRING,
    APPLYSTATUS                STRING,
    APPLYTEXT                  STRING,
    FILEIDS                    STRING,
    PRIMARY KEY (DATAID) NOT ENFORCED
)
    WITH (
        'connector' = 'jdbc',
        'url' = 'jdbc:oracle:thin:@10.201.218.54:1521/hr',
        'table-name' = 'XMYJ_OPERATINGPERFORMANCE',
        'username' = 'hrorg_1217',
        'password' = 'rx5Hog'
        );



CREATE TABLE XMYJ_SAFETYQUALITY
(
    DATAID              STRING,
    ID                  STRING,
    ACCIDENT_TYPE_TEXT  STRING,
    ACCIDENT_TYPE_VALUE STRING,
    HAS_ACCIDENT_TEXT   STRING,
    HAS_ACCIDENT_VALUE  STRING,
    PROJECT_SITUATION   STRING,
    APPLYSTATUS         STRING,
    APPLYTEXT           STRING,
    FILEIDS             STRING,
    PRIMARY KEY (DATAID) NOT ENFORCED
)
    WITH (
        'connector' = 'jdbc',
        'url' = 'jdbc:oracle:thin:@10.201.218.54:1521/hr',
        'table-name' = 'XMYJ_SAFETYQUALITY',
        'username' = 'hrorg_1217',
        'password' = 'rx5Hog'
        );

CREATE TABLE `PROJECT_MANAGER_PERFORMANCE`
(
    `_id`                        VARCHAR(2147483647) NOT NULL,
    `approveStatus`              VARCHAR(2147483647),
    `createdAt`                  TIMESTAMP(3),
    `updatedAt`                  TIMESTAMP(3),
    `certNo`                     VARCHAR(2147483647),
    `complete_projects`          ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `accumulated_years`          ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `overseas_years`             ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `constructor_major`          ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `safe_pro_certificate`       ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `other_qualification`        ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `isArchive`                  BOOLEAN,
    `auditStatus`                VARCHAR(2147483647),
    `auditName`                  VARCHAR(2147483647),
    `auditDate`                  VARCHAR(2147483647),
    `submitDate`                 VARCHAR(2147483647),
    `action`                     VARCHAR(2147483647),
    `operatorName`               VARCHAR(2147483647),
    `operatorId`                 VARCHAR(2147483647),
    `eventTime`                  VARCHAR(2147483647),
    `applyStatus`                VARCHAR(2147483647),
    `applyText`                  VARCHAR(2147483647),
    `fileIds`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `personal_honor_list`        ARRAY< ROW <`dataId` VARCHAR (2147483647),
    `honorary_title`             ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `rewardlv`                   ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `prizetime`                  ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `apporg`                     ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `applyStatus`                VARCHAR(2147483647),
    `applyText`                  VARCHAR(2147483647),
    `fileIds`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>>>,
    `work_performance_list`      ARRAY< ROW <`dataId` VARCHAR (2147483647),
    `job_performance_category`   ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `project_situation`          ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `applyStatus`                VARCHAR(2147483647),
    `applyText`                  VARCHAR(2147483647),
    `fileIds`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>>>,
    `project_performance_list`   ARRAY< ROW <`dataId` VARCHAR (2147483647),
    `projname`                   ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `postions`                   ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `appointtime`                ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `contract_amount`            ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `industry_categories`        ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `businessarea`               ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `projectattribute`           ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `end_time`                   ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `contract_duration`          ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `work_time`                  ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `delivery_time`              ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `delivery_contract_amount`   ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `project_income`             ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `revenue_proportion`         ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `is_reach`                   ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `excess`                     ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `country`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `construct`                  ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `construction_control_unit`  ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `reward_punishment_info`     ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `credit_evaluation`          ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `projectStatus`              ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `projectSummary`             ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `actualProfitSettled`        ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `applyStatus`                VARCHAR(2147483647),
    `applyText`                  VARCHAR(2147483647),
    `fileIds`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `project_results`            ARRAY< ROW <`dataId` VARCHAR (2147483647),
    `prizename`                  ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `prizetype`                  ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `certorg`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `prizetime`                  ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `prizelv`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `applyStatus`                VARCHAR(2147483647),
    `applyText`                  VARCHAR(2147483647),
    `fileIds`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>>>,
    `operating_performance_list` ARRAY< ROW <`dataId` VARCHAR (2147483647),
    `projectname`                ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `contract_amount`            ROW<`text` ARRAY< double >,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `certification_unit_person`  ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `project_winning_time`       ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `winning_project_owner_unit` ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `applyStatus`                VARCHAR(2147483647),
    `applyText`                  VARCHAR(2147483647),
    `fileIds`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>>>,
    `safety_quality_list`        ARRAY< ROW <`dataId` VARCHAR (2147483647),
    `accident_type`              ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `has_accident`               ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `project_situation`          ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>,
    `applyStatus`                VARCHAR(2147483647),
    `applyText`                  VARCHAR(2147483647),
    `fileIds`                    ROW<`text` ARRAY< VARCHAR (2147483647)>,
    `value`                      ARRAY< VARCHAR (2147483647)>>>>>>,
    PRIMARY KEY (`_id`) NOT ENFORCED
) COMMENT ''
WITH (
  'collection' = 'project_manager_performance',
  'connector' = 'mongodb-cdc',
  'database' = 'hr',
  'hosts' = 'mongodb-cluster-0.mongodb-cluster-headless.mongodb.svc.cluster.local:27017,mongodb-cluster-1.mongodb-cluster-headless.mongodb.svc.cluster.local:27017,mongodb-cluster-2.mongodb-cluster-headless.mongodb.svc.cluster.local:27017',
  'password' = 'mongodb',
  'username' = 'root'
);