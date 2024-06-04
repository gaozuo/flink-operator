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

EXECUTE STATEMENT SET
BEGIN

insert into XMYJ_PERFORMANCE

select
    _id,
    createdAt,
    updatedAt,
    certNo,
    CAST (isArchive AS VARCHAR) isArchive,
    auditStatus,
    auditName,
    auditDate,
    submitDate,
    approveStatus,
    `action`,
    operatorName,
    operatorId,
    eventTime,
    applyStatus,
    applyText,
    cast (ELEMENT(complete_projects.text) as VARCHAR) complete_projects,
    cast (ELEMENT(accumulated_years.text) as VARCHAR) accumulated_years,
    cast (ELEMENT(overseas_years.text) as VARCHAR) overseas_years,
    ArrayJoin(',', constructor_major.text) constructor_major_text,
    ArrayJoin(',', constructor_major.`value`) constructor_major_value,
    ArrayJoin(',', safe_pro_certificate.text) safe_pro_certificate_text,
    ArrayJoin(',', safe_pro_certificate.`value`) safe_pro_certificate_value,
    ArrayJoin(',', other_qualification.text) other_qualification_text,
    ArrayJoin(',', other_qualification.`value`) other_qualification_value,
    ArrayJoin(',', fileIds.`text`) fileIds
from
    PROJECT_MANAGER_PERFORMANCE;



insert into XMYJ_PERSONALHONOR

SELECT t.dataId,
       p._id,
    p.certNo,
    ArrayJoin(',', t.honorary_title.text) honorary_title,
    ArrayJoin(',', t.rewardlv.text) rewardlv_text,
    ArrayJoin(',', t.rewardlv.`value`) rewardlv_value,
    ArrayJoin(',', t.prizetime.text) prizetime,
    ArrayJoin(',', t.apporg.text) apporg,
    t.applyStatus,
    t.applyText,
    ArrayJoin(',', t.fileIds.text) fileIds

FROM
    PROJECT_MANAGER_PERFORMANCE p
    CROSS JOIN UNNEST(p.personal_honor_list)
    AS t (
    dataId,
    honorary_title,
    rewardlv,
    prizetime,
    apporg,
    applyStatus,
    applyText,
    fileIds
    );



insert into XMYJ_WORKPERFORMANCE

SELECT t.dataId,
       --UUID() dataId,
       p._id,
    p.certNo,
    ArrayJoin(',', t.job_performance_category.text) job_performance_category_text,
    ArrayJoin(',', t.job_performance_category.`value`) job_performance_category_value,
    ArrayJoin(',', t.project_situation.text) project_situation,
    t.applyStatus,
    t.applyText,
    ArrayJoin(',', t.fileIds.text) fileIds

FROM
    PROJECT_MANAGER_PERFORMANCE p
    CROSS JOIN UNNEST(p.work_performance_list)
    AS t (
    dataId,
    job_performance_category,
    project_situation,
    applyStatus,
    applyText,
    fileIds
    );



insert into XMYJ_PROJECTPERFORMANCE

SELECT t.dataId,
       p._id,
    p.certNo,
    ArrayJoin(',', t.projname.text) projname,
    ArrayJoin(',', t.postions.text) postions_text,
    ArrayJoin(',', t.postions.`value`) postions_value,
    ArrayJoin(',', t.appointtime.text) appointtime,
    cast (ELEMENT(t.contract_amount.text) as varchar) contract_amount,
    ArrayJoin(',', t.industry_categories.text) industry_categories_text,
    ArrayJoin(',', t.industry_categories.`value`) industry_categories_value,
    ArrayJoin(',', t.businessarea.text) businessarea_text,
    ArrayJoin(',', t.businessarea.`value`) businessarea_value,
    ArrayJoin(',', t.projectattribute.text) projectattribute_text,
    ArrayJoin(',', t.projectattribute.`value`) projectattribute_value,
    ArrayJoin(',', t.end_time.text) end_time,
    cast (ELEMENT(t.contract_duration.text) as varchar) contract_duration,
    ArrayJoin(',', t.work_time.text) work_time,
    ArrayJoin(',', t.delivery_time.text) delivery_time,
    cast (ELEMENT(t.delivery_contract_amount.text) as varchar) delivery_contract_amount,
    cast (ELEMENT(t.project_income.text) as varchar) project_income,
    cast (ELEMENT(t.revenue_proportion.text) as varchar) revenue_proportion,
    ArrayJoin(',', t.is_reach.text) is_reach_text,
    ArrayJoin(',', t.is_reach.`value`) is_reach_value,
    cast (ELEMENT(t.excess.text) as varchar) excess,
    ArrayJoin(',', t.country.text) country_text,
    ArrayJoin(',', t.country.`value`) country_value,
    ArrayJoin(',', t.construct.text) construct,
    ArrayJoin(',', t.construction_control_unit.text) construction_control_unit,
    ArrayJoin(',', t.reward_punishment_info.text) reward_punishment_info_text,
    ArrayJoin(',', t.reward_punishment_info.`value`) reward_punishment_info_value,
    ArrayJoin(',', t.credit_evaluation.text) credit_evaluation_text,
    ArrayJoin(',', t.credit_evaluation.`value`) credit_evaluation_value,
    ArrayJoin(',', t.projectStatus.text) projectstatus_text,
    ArrayJoin(',', t.projectStatus.`value`) projectstatus_value,
    ArrayJoin(',', t.projectSummary.text) projectsummary,
    cast (ELEMENT(t.actualProfitSettled.text) as varchar) actualProfitSettled,
    t.applyStatus,
    t.applyText,
    ArrayJoin(',', t.fileIds.text) fileIds
FROM
    PROJECT_MANAGER_PERFORMANCE p
    CROSS JOIN UNNEST(p.project_performance_list)
    AS t (
    dataId,
    projname,
    postions,
    appointtime,
    contract_amount,
    industry_categories,
    businessarea,
    projectattribute,
    end_time,
    contract_duration,
    work_time,
    delivery_time,
    delivery_contract_amount,
    project_income,
    revenue_proportion,
    is_reach,
    excess,
    country,
    construct,
    construction_control_unit,
    reward_punishment_info,
    credit_evaluation,
    projectStatus,
    projectSummary,
    actualProfitSettled,
    applyStatus,
    applyText,
    fileIds,
    project_results,            --array
    operating_performance_list, --array
    safety_quality_list         --array
    );



insert into XMYJ_PROJECTRESULTS

with t_project_performance_list as (
    SELECT
        t.dataId,
        p._id,
    t.project_results
FROM
    PROJECT_MANAGER_PERFORMANCE p
    CROSS JOIN UNNEST(p.project_performance_list)
    AS t (
    dataId,
    projname,
    postions,
    appointtime,
    contract_amount,
    industry_categories,
    businessarea,
    projectattribute,
    end_time,
    contract_duration,
    work_time,
    delivery_time,
    delivery_contract_amount,
    project_income,
    revenue_proportion,
    is_reach,
    excess,
    country,
    construct,
    construction_control_unit,
    reward_punishment_info,
    credit_evaluation,
    projectStatus,
    projectSummary,
    actualProfitSettled,
    applyStatus,
    applyText,
    fileIds,
    project_results, --array
    operating_performance_list, --array
    safety_quality_list --array
    )
    )

SELECT
    t2.dataId,
    t1.dataId id,
    ArrayJoin(',',t2.prizename.text) prizename,
    ArrayJoin(',',t2.prizename.`value`) prizename_value,
    ArrayJoin(',',t2.prizetype.text) prizetype_text,
    ArrayJoin(',',t2.prizetype.`value`) prizetype_value,
    ArrayJoin(',',t2.certorg.text) certorg,
    ArrayJoin(',',t2.prizetime.text) prizetime,
    ArrayJoin(',',t2.prizelv.text) prizelv_text,
    ArrayJoin(',',t2.prizelv.`value`) prizelv_value,
    t2.applyStatus,
    t2.applyText,
    ArrayJoin(',',t2.fileIds.text) fileIds
FROM
    t_project_performance_list t1
        CROSS JOIN UNNEST (t1.project_results)
        AS t2(
              dataId,
              prizename,
              prizetype,
              certorg,
              prizetime,
              prizelv,
              applyStatus,
              applyText,
              fileIds
            );



insert into XMYJ_OPERATINGPERFORMANCE

with t_project_performance_list as (SELECT t.dataId,
                                           p._id,
    t.operating_performance_list
FROM
    PROJECT_MANAGER_PERFORMANCE p
    CROSS JOIN UNNEST(p.project_performance_list)
    AS t (
    dataId,
    projname,
    postions,
    appointtime,
    contract_amount,
    industry_categories,
    businessarea,
    projectattribute,
    end_time,
    contract_duration,
    work_time,
    delivery_time,
    delivery_contract_amount,
    project_income,
    revenue_proportion,
    is_reach,
    excess,
    country,
    construct,
    construction_control_unit,
    reward_punishment_info,
    credit_evaluation,
    projectStatus,
    projectSummary,
    actualProfitSettled,
    applyStatus,
    applyText,
    fileIds,
    project_results,            --array
    operating_performance_list, --array
    safety_quality_list         --array
    )
    )

SELECT t2.dataId,
       t1.dataId                                          id,
       ArrayJoin(',', t2.projectname.text)                projectname,
       cast(ELEMENT(t2.contract_amount.text) as varchar)  contract_amount,
       ArrayJoin(',', t2.certification_unit_person.text)  certification_unit_person,
       ArrayJoin(',', t2.project_winning_time.text)       project_winning_time,
       ArrayJoin(',', t2.winning_project_owner_unit.text) winning_project_owner_unit,
       t2.applyStatus,
       t2.applyText,
       ArrayJoin(',', t2.fileIds.text)                    fileIds
FROM t_project_performance_list t1
         CROSS JOIN UNNEST(t1.operating_performance_list)
    AS t2(
          dataId,
          projectname,
          contract_amount,
          certification_unit_person,
          project_winning_time,
          winning_project_owner_unit,
          applyStatus,
          applyText,
          fileIds
        );



insert into XMYJ_SAFETYQUALITY

with t_project_performance_list as (SELECT t.dataId,
                                           p._id,
    t.safety_quality_list
FROM
    PROJECT_MANAGER_PERFORMANCE p
    CROSS JOIN UNNEST(p.project_performance_list)
    AS t (
    dataId,
    projname,
    postions,
    appointtime,
    contract_amount,
    industry_categories,
    businessarea,
    projectattribute,
    end_time,
    contract_duration,
    work_time,
    delivery_time,
    delivery_contract_amount,
    project_income,
    revenue_proportion,
    is_reach,
    excess,
    country,
    construct,
    construction_control_unit,
    reward_punishment_info,
    credit_evaluation,
    projectStatus,
    projectSummary,
    actualProfitSettled,
    applyStatus,
    applyText,
    fileIds,
    project_results,            --array
    operating_performance_list, --array
    safety_quality_list         --array
    )
    )

SELECT t2.dataId,
       t1.dataId                                 id,
       ArrayJoin(',', t2.accident_type.text)     accident_type_text,
       ArrayJoin(',', t2.accident_type.`value`)  accident_type_value,
       ArrayJoin(',', t2.has_accident.text)      has_accident_text,
       ArrayJoin(',', t2.has_accident.`value`)   has_accident_value,
       ArrayJoin(',', t2.project_situation.text) project_situation,
       t2.applyStatus,
       t2.applyText,
       ArrayJoin(',', t2.fileIds.text)           fileIds
FROM t_project_performance_list t1
         CROSS JOIN UNNEST(t1.safety_quality_list)
    AS t2(
          dataId,
          accident_type,
          has_accident,
          project_situation,
          applyStatus,
          applyText,
          fileIds
        );

END;