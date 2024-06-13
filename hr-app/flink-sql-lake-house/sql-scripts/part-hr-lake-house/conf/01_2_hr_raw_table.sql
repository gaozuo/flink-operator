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

CREATE TABLE `RAW_HR_EMP_PROFRESULTPATENTINFO`
(
    `PROFID`              VARCHAR(2147483647) NOT NULL,
    `EMPID`               VARCHAR(2147483647),
    `RESULTNAME`          VARCHAR(2147483647),
    `RESULTNO`            VARCHAR(2147483647),
    `RESULTLV`            VARCHAR(2147483647),
    `RESULTTYPE`          VARCHAR(2147483647),
    `RESULTIDENLV`        VARCHAR(2147483647),
    `RESULTIDENORG`       VARCHAR(2147483647),
    `COMPLETERANK`        VARCHAR(2147483647),
    `MAINCONTRIBUTION`    VARCHAR(2147483647),
    `ROLE`                VARCHAR(2147483647),
    `GAINTIME`            VARCHAR(2147483647),
    `PERIOD`              VARCHAR(2147483647),
    `WITNESS`             VARCHAR(2147483647),
    `COMPLETEORG`         VARCHAR(2147483647),
    `BENEFIT`             VARCHAR(2147483647),
    `PATENTTYPE`          VARCHAR(2147483647),
    `PATENTAPPCOUNTRY`    VARCHAR(2147483647),
    `ISSUORG`             VARCHAR(2147483647),
    `PROJECT`             VARCHAR(2147483647),
    `OPTOR`               VARCHAR(2147483647),
    `OPTTIME`             VARCHAR(2147483647),
    `OPTORG`              VARCHAR(2147483647),
    `STATUS`              VARCHAR(2147483647),
    `NOTE`                VARCHAR(2147483647),
    `PROJECTLEVEL`        VARCHAR(2147483647),
    `PATENTUNIT`          VARCHAR(2147483647),
    `GROUPPOST`           VARCHAR(2147483647),
    PRIMARY KEY (`PROFID`) NOT ENFORCED
)
WITH (
    'connector'  = 'jdbc' ,
    'driver'  = 'oracle.jdbc.driver.OracleDriver' ,
    'url'  = 'jdbc:oracle:thin:@10.201.218.54:1521/hr' ,
    'table-name'  = 'hr_emp_profresultpatentinfo'  ,
    'username' ='hrorg_1217' ,
    'password' ='rx5Hog'
);
