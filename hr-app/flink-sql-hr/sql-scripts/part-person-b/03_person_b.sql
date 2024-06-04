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

INSERT INTO HR_SOURCE_PART_PUB_EMPINFO_NESTED_B
select
    emp.EMPID,
    seamancert_info,
    techprograde_info,
    checkresult_info,
    projprefinfo_info,
    rewardinfo_info,
    traininfo_info,
    MaxTimestamp(ARRAY[
                     emp.TS,
                 t_seamancert.TS,
                 t_techprograde.TS,
                 t_checkresult.TS,
                 t_projprefinfo.TS,
                 t_rewardinfo.TS,
                 t_traininfo.TS
                     ]) AS ts
from
    V1202_HR_EMP_BASICINFO emp
        LEFT JOIN V1202_HR_SOURCE_PART_SEAMANCERT t_seamancert ON (emp.EMPID = t_seamancert.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_TECHPROGRADE t_techprograde ON (emp.EMPID = t_techprograde.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_CHECKRESULT t_checkresult ON (emp.EMPID = t_checkresult.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_PROJPREFINFO t_projprefinfo ON (emp.EMPID = t_projprefinfo.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_REWARDINFO t_rewardinfo ON (emp.EMPID = t_rewardinfo.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_TRAININFO t_traininfo ON (emp.EMPID = t_traininfo.EMPID_KEY);





