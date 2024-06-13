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

CREATE TABLE `PRAOP_HR_EMP_BASICINFO`
(
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
    'connector'  = 'jdbc' ,
    'driver'  = 'oracle.jdbc.driver.OracleDriver',
    'url'  = 'jdbc:oracle:thin:@10.201.218.70:1521/scjyjq' ,
    'table-name'  = 'hr_emp_basicinfo'  ,
    'username' ='hrdata',
    'password' ='HR#data#2024'
);