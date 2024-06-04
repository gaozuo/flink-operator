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




INSERT INTO HR_SOURCE_ALL_PERSON

with empinfo as (
    SELECT v.body body, t_prof.prof, ArrayJoin(',', v.body.certno.text) certno FROM V_HR_SOURCE_PART_PUB_EMPINFO v LEFT JOIN ( select KeySet(COLLECT(ArrayJoin(',', t_positionqua.prof.text))) prof, t_positionqua._id from ( SELECT t.prof, v._id, row_number () over (partition BY v._id ORDER BY `rank` ASC, gainquatime DESC ) rn FROM V_HR_SOURCE_PART_PUB_EMPINFO v CROSS JOIN UNNEST(v.positionqua_info) AS t where v.type = 'person' ) t_positionqua where rn = 1 group by t_positionqua._id ) t_prof on (REPLACE(v._id, 'emp-', '') = REPLACE(t_prof._id, 'emp-', '')) where v.type = 'person' and t_prof.prof is not null
),
     performance_info as(
         SELECT
             certNo,
             ROW(
                     _id,
                     approveStatus,
                     createdAt,
                     updatedAt,
                     certNo,
                     complete_projects,
                     accumulated_years,
                     overseas_years,
                     constructor_major,
                     safe_pro_certificate,
                     other_qualification,
                     isArchive,
                     auditStatus,
                     auditName,
                     auditDate,
                     submitDate,
                     `action`,
                     operatorName,
                     operatorId,
                     eventTime,
                     applyStatus,
                     applyText,
                     fileIds,
                     personal_honor_list,
                     work_performance_list,
                     project_performance_list
                 )
                 performanceRow
         FROM
             PROJECT_MANAGER_PERFORMANCE
     ),


     person_info as (
         SELECT
             empinfo.certno certno_key,
             empinfo.body.name,
             empinfo.body.working_coid_name work_coid_name,
             empinfo.body.working_dept_name work_dept_name,
             empinfo.body.birthday,
             empinfo.body.nativeplace,
             empinfo.body.post post,
             empinfo.body.positiongradenorm positiongradenorm,
             empinfo.body.proftechqua PROFTECHQUA,
             empinfo.body.education EDUCATION,
             empinfo.body.degree DEGREE,
             empinfo.body.college COLLEGE,
             empinfo.body.profname specialty,--占位，数据为最高学历的 专业名称
             empinfo.body.mainprof0 constructor_major,--占位 一级建造师持证专业
             ROW(array[''],array['']) complete_projects,--占位 主持完整项目个数
             ROW(array[''],array['']) accumulated_years,--占位 担任项目经理累计年限
             ROW(array[''],array['']) overseas_years,--占位  担任海外项目经理年限
             empinfo.body.safe_code safe_pro_certificate,--占位 安全生产考核合格证书
             empinfo.body.other_code other_qualification, --占位 其他职（执）业资格证书
             performanceRow,
             ROW(
                     (empinfo.body.empid),
                     empinfo.body.empcode,
                     ROW((empinfo.prof), (empinfo.prof)),
                     empinfo.body.name,
                     empinfo.body.namespell,
                     empinfo.body.enname,
                     empinfo.body.nameused,
                     empinfo.body.certtype,
                     empinfo.body.certno,
                     empinfo.body.sex,
                     ROW(CAST(StringArrayToIntArray(empinfo.body.age.text) as ARRAY<INT>), empinfo.body.age.`value`),
                     empinfo.body.birthday,
                     empinfo.body.birthplace,
                     empinfo.body.resplace,
                     empinfo.body.resnature,
                     empinfo.body.nationnality,
                     empinfo.body.nation,
                     empinfo.body.nativeplace,
                     empinfo.body.marry,
                     empinfo.body.worktime,
                     empinfo.body.sociano,
                     empinfo.body.phone,
                     empinfo.body.homeaddress,
                     empinfo.body.email,
                     empinfo.body.postalcode,
                     empinfo.body.optor,
                     empinfo.body.opttime,
                     empinfo.body.optorg,
                     empinfo.body.bestedu,
                     empinfo.body.bestpropost,
                     empinfo.body.postions,
                     empinfo.body.politicsfaces,
                     empinfo.body.workprof,
                     empinfo.body.bestdegree,
                     empinfo.body.contractunit,
                     empinfo.body.photo,
                     empinfo.body.mainprofcotegory,
                     empinfo.body.recruitment,
                     empinfo.body.depositunit,
                     empinfo.body.retirementdate,
                     empinfo.body.positiongrade,
                     empinfo.body.retirementorg,
                     empinfo.body.retirementposition,
                     empinfo.body.empidentity,
                     empinfo.body.state,
                     empinfo.body.studyprof,
                     empinfo.body.socialtype1,
                     empinfo.body.socialcode1,
                     empinfo.body.socialtype2,
                     empinfo.body.socialcode2,
                     empinfo.body.annuityno,
                     empinfo.body.housingfund,
                     empinfo.body.note,
                     empinfo.body.techprof,
                     empinfo.body.landline_telephone_number,
                     empinfo.body.fax,
                     empinfo.body.room_number,
                     empinfo.body.issolve,
                     empinfo.body.health,
                     empinfo.body.globalroaming,
                     empinfo.body.proftechqua,
                     empinfo.body.sno,
                     empinfo.body.dept_rules,
                     empinfo.body.personnelcategory,
                     empinfo.body.hierarchy,
                     empinfo.body.ctrank,
                     empinfo.body.entercccctime,
                     empinfo.body.entrtwostagetime,
                     empinfo.body.foreignlevel,
                     empinfo.body.interruptedtime,
                     empinfo.body.entercttime,
                     empinfo.body.enterctmode,
                     empinfo.body.socialstartmonth,
                     empinfo.body.gjjstartmonth,
                     empinfo.body.salaryscale,
                     empinfo.body.payroll,
                     empinfo.body.isgzsb,
                     empinfo.body.isgzgjj,
                     empinfo.body.isprimaryqynj,
                     empinfo.body.startingtime,
                     empinfo.body.qynjistransfer,
                     empinfo.body.shjjobnumber,
                     empinfo.body.shjrank,
                     empinfo.body.shjemptype,
                     empinfo.body.shjtalentlevel,
                     empinfo.body.shjtalenttype,
                     empinfo.body.shjtalentcategory,
                     empinfo.body.shjdutystation,
                     empinfo.body.tagstatus,
                     empinfo.body.shj_zytxrc,
                     empinfo.body.shj_wdyw,
                     empinfo.body.shj_jwry,
                     empinfo.body.shj_pqz,
                     empinfo.body.shj_rcgx,
                     empinfo.body.shj_ispro,
                     empinfo.body.tagstatus_time,
                     empinfo.body.isarmycadres,
                     empinfo.body.transferplace,
                     (empinfo.body.attachment),
                     (empinfo.body.work_info),
                     (empinfo.body.rewardinfo_info)
                 ) empinfoRow
         FROM empinfo
                  LEFT JOIN performance_info ON empinfo.certno = performance_info.certNo
     )

select
    certno_key,
    certno_key,
    ROW(
            name,
            work_coid_name,
            work_dept_name,
            birthday,
            nativeplace,
            post,
            positiongradenorm,
            PROFTECHQUA,
            EDUCATION,
            DEGREE,
            COLLEGE,
            specialty,
            constructor_major,
            complete_projects,
            accumulated_years,
            overseas_years,
            safe_pro_certificate,
            other_qualification
        ),
    performanceRow,
    empinfoRow
from
    person_info
where
        certno_key is not null;