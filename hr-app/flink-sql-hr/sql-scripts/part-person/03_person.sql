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


INSERT INTO V_HR_SOURCE_PART_PUB_EMPINFO

SELECT
    CAST(concat('emp-', empid_key) AS STRING) empid,
    CAST('person' AS STRING) type,
    ROW(
            (empinfo.empid),
            empinfo.empcode,
            empinfo.name,
            empinfo.namespell,
            empinfo.enname,
            empinfo.nameused,
            empinfo.certtype,
            empinfo.certno,
            empinfo.sex,
            empinfo.age,
            empinfo.birthday,
            empinfo.birthplace,
            empinfo.resplace,
            empinfo.resnature,
            empinfo.nationnality,
            empinfo.nation,
            empinfo.nativeplace,
            empinfo.marry,
            empinfo.worktime,
            empinfo.sociano,
            empinfo.phone,
            empinfo.homeaddress,
            empinfo.email,
            empinfo.postalcode,
            empinfo.optor,
            empinfo.opttime,
            empinfo.optorg,
            empinfo.bestedu,
            empinfo.bestpropost,
            empinfo.postions,
            empinfo.politicsfaces,
            empinfo.workprof,
            empinfo.bestdegree,
            empinfo.contractunit,
            empinfo.photo,
            empinfo.mainprofcotegory,
            empinfo.recruitment,
            empinfo.depositunit,
            empinfo.retirementdate,
            empinfo.positiongrade,
            empinfo.retirementorg,
            empinfo.retirementposition,
            empinfo.empidentity,
            empinfo.state,
            empinfo.studyprof,
            empinfo.socialtype1,
            empinfo.socialcode1,
            empinfo.socialtype2,
            empinfo.socialcode2,
            empinfo.annuityno,
            empinfo.housingfund,
            empinfo.note,
            empinfo.techprof,
            empinfo.landline_telephone_number,
            empinfo.fax,
            empinfo.room_number,
            empinfo.issolve,
            empinfo.health,
            empinfo.globalroaming,
            empinfo.proftechqua_no,
            empinfo.sno,
            empinfo.dept_rules,
            empinfo.personnelcategory,
            empinfo.hierarchy,
            empinfo.ctrank,
            empinfo.entercccctime,
            empinfo.entrtwostagetime,
            empinfo.foreignlevel,
            empinfo.interruptedtime,
            empinfo.entercttime,
            empinfo.enterctmode,
            empinfo.socialstartmonth,
            empinfo.gjjstartmonth,
            empinfo.salaryscale,
            empinfo.payroll,
            empinfo.isgzsb,
            empinfo.isgzgjj,
            empinfo.isprimaryqynj,
            empinfo.startingtime,
            empinfo.qynjistransfer,
            empinfo.shjjobnumber,
            empinfo.shjrank,
            empinfo.shjemptype,
            empinfo.shjtalentlevel,
            empinfo.shjtalenttype,
            empinfo.shjtalentcategory,
            empinfo.shjdutystation,
            empinfo.tagstatus,
            empinfo.shj_zytxrc,
            empinfo.shj_wdyw,
            empinfo.shj_jwry,
            empinfo.shj_pqz,
            empinfo.shj_rcgx,
            empinfo.shj_ispro,
            empinfo.tagstatus_time,
            empinfo.isarmycadres,
            empinfo.transferplace,
            empinfo.working_coid_name,
            empinfo.working_coid_orule,
            empinfo.working_dept_name,
            empinfo.working_dept_orule,
            empinfo.post,
            empinfo.positiongradenorm,
            empinfo.education,
            empinfo.degree,
            empinfo.college,
            empinfo.profname,
            empinfo.proftechqua,
            empinfo.mainprof0,
            empinfo.safe_code,
            empinfo.other_code,
            ATTACHMENT,
            work_info,
            edu_info,
            position_info,
            positionqua_info,
            expert_info,
            quacert_info,
            seamancert_info,
            techprograde_info,
            checkresult_info,
            projprefinfo_info,
            rewardinfo_info,
            traininfo_info,
            mainthesisworkinfo_info,
            profresultpatentinfo_info,
            validpassport_info,
            socialrelationinfo_info,
            labcontract_info,
            move_info
        ) body,
    --CAST(empinfo.ts AS STRING) TS,
    MaxTimestamp(ARRAY[
                     empinfo.ts,
                 nested_a.ts,
                 nested_b.ts,
                 nested_c.ts
                     ]) TS
FROM
    V1202_HR_SOURCE_PART_EMPINFO empinfo
        LEFT JOIN HR_SOURCE_PART_PUB_EMPINFO_NESTED_A AS nested_a ON(empinfo.empid_key = nested_a.empid)
        LEFT JOIN HR_SOURCE_PART_PUB_EMPINFO_NESTED_B AS nested_b ON(empinfo.empid_key = nested_b.empid)
        LEFT JOIN HR_SOURCE_PART_PUB_EMPINFO_NESTED_C AS nested_c ON(empinfo.empid_key = nested_c.empid)
        LEFT JOIN (SELECT BIZID, ATTACHMENT FROM V1202_HR_SOURCE_PART_ATTACH where TABLE_NAME = 'hr_emp_basicinfo') ATTACH
                  ON empinfo.empid_key = ATTACH.BIZID;






