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

INSERT INTO HR_SOURCE_PART_PUB_EMPINFO_NESTED_A
select
    emp.EMPID,
    work_info,
    edu_info,
    position_info,
    positionqua_info,
    expert_info,
    quacert_info,
    MaxTimestamp(
            ARRAY[
                emp.TS,
            t_work.TS,
            t_edu.TS,
            t_position.TS,
            t_positionqua.TS,
            t_expert.TS,
            t_quacert.TS
                ]
        ) ts
from
    V1202_HR_EMP_BASICINFO emp
        LEFT JOIN V1202_HR_SOURCE_PART_WORKINFO t_work on (emp.EMPID = t_work.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_EDUINFO t_edu on (emp.EMPID = t_edu.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_POSITION t_position on (emp.EMPID = t_position.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_POSITIONQUA t_positionqua on (emp.EMPID = t_positionqua.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_EXPERT t_expert on (emp.EMPID = t_expert.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_QUACERT t_quacert on (emp.EMPID = t_quacert.EMPID_KEY);


