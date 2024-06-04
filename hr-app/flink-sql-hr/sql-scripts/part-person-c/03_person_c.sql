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


INSERT INTO HR_SOURCE_PART_PUB_EMPINFO_NESTED_C
SELECT
    emp.EMPID,
    mainthesisworkinfo_info,
    profresultpatentinfo_info,
    validpassport_info,
    socialrelationinfo_info,
    labcontract_info,
    move_info,
    MaxTimestamp(ARRAY[
                     emp.TS,
                 t_mainthesisworkinfo.TS,
                 t_profresultpatentinfo.TS,
                 t_validpassport.TS,
                 t_socialrelationinfo.TS,
                 t_labcontract.TS,
                 t_moveinfo.TS
                     ]) TS
FROM
    V1202_HR_EMP_BASICINFO emp
        LEFT JOIN V1202_HR_SOURCE_PART_MAINTHESISWORKINFO t_mainthesisworkinfo ON (emp.EMPID = t_mainthesisworkinfo.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_PROFRESULTPATENTINFO t_profresultpatentinfo ON (emp.EMPID = t_profresultpatentinfo.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_VALIDPASSPORT t_validpassport ON (emp.EMPID = t_validpassport.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_SOCIALRELATIONINFO t_socialrelationinfo ON (emp.EMPID = t_socialrelationinfo.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_LABCONTRACT t_labcontract ON (emp.EMPID = t_labcontract.EMPID_KEY)
        LEFT JOIN V1202_HR_SOURCE_PART_MOVEINFO t_moveinfo ON (emp.EMPID = t_moveinfo.EMPID_KEY);









