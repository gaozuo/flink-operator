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

CREATE TABLE SINK_PERSON_PERFORMANCE(

  id STRING NOT NULL,
  -- 身份证
  name STRING, 
  -- 姓名
  `age` STRING, 
  -- 年龄
  `sex` STRING, 
  -- 性别
  `working_corp_names` ARRAY<STRING>, 
  -- 所在单位名称
  `working_corp_shortnames` ARRAY<STRING>,
  -- 所在单位简称
  `working_corp_rules` ARRAY<STRING>, 
  -- 所在单位规则码
  `working_dept_names` ARRAY<STRING>,
  -- 所在部门名称
  `working_dept_shortnames` ARRAY<STRING>,
  -- 所在部门简称
  `working_dept_rules` ARRAY<STRING>, 
  -- 所在部门规则码
  `birthday` STRING, 
  -- 出生日期
  `nativeplace` STRING, 
  -- 籍贯
  `post` ARRAY<STRING>, 
  -- 职位
  `positiongrade` ARRAY<STRING>, 
  -- 职位等级
  `bestpropost` ARRAY<STRING>, 
  -- 最佳岗位
  `highest` ARRAY<STRING>, 
  -- 最高学历
  `bestdegree` ARRAY<STRING>, 
  -- 最高学位
  `college` ARRAY<STRING>, 
  -- 毕业院校
  `specialty` ARRAY<STRING>, 

  `photo_id` STRING,

  `ts` TIMESTAMP_LTZ(3),
  `approveStatus` VARCHAR(2147483647),
  `createdAt` TIMESTAMP(3),
  `updatedAt` TIMESTAMP(3),
  `complete_projects` ROW<`text` ARRAY<DOUBLE>>,
  `accumulated_years` ROW<`text` ARRAY<DOUBLE>>,
  `overseas_years` ROW<`text` ARRAY<DOUBLE>>,
  `constructor_major` ROW<`text` ARRAY<VARCHAR(2147483647)>>,
  `safe_pro_certificate` ROW<`text` ARRAY<VARCHAR(2147483647)>>,
  `other_qualification` ROW<`text` ARRAY<VARCHAR(2147483647)>>,
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
  `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>>,
  `personal_honor_list` ARRAY < ROW < 
		`dataId` VARCHAR(2147483647), 
		`honorary_title` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`rewardlv` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`prizetime` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`apporg` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`applyStatus` VARCHAR(2147483647), 
		`applyText` VARCHAR(2147483647), 
		`fileIds` ROW < `text` ARRAY < VARCHAR(2147483647)>>
   >>,
  `work_performance_list` ARRAY < ROW < 
		`dataId` VARCHAR(2147483647), 
		`job_performance_category` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`project_situation` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`applyStatus` VARCHAR(2147483647), 
		`applyText` VARCHAR(2147483647), 
		`fileIds` ROW < `text` ARRAY < VARCHAR(2147483647)>>
   >>,
  `project_performance_list` ARRAY < ROW < 
		`dataId` VARCHAR(2147483647), 
		`projname` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`postions` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`appointtime` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`contract_amount` ROW < `text` ARRAY < DOUBLE >>, 
		`industry_categories` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`businessarea` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`projectattribute` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`end_time` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`contract_duration` ROW < `text` ARRAY < DOUBLE >>, 
		`work_time` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`delivery_time` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`delivery_contract_amount` ROW < `text` ARRAY < DOUBLE >>, 
		`project_income` ROW < `text` ARRAY < DOUBLE >>, 
		`revenue_proportion` ROW < `text` ARRAY < DOUBLE >>, 
		`is_reach` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`excess` ROW < `text` ARRAY < DOUBLE >>, 
		`country` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`construct` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`construction_control_unit` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`reward_punishment_info` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`credit_evaluation` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`projectStatus` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`projectSummary` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`actualProfitSettled` ROW < `text` ARRAY < DOUBLE >>, 
		`applyStatus` VARCHAR(2147483647), 
		`applyText` VARCHAR(2147483647), 
		`fileIds` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
		`project_results` ARRAY < ROW < 
			`dataId` VARCHAR(2147483647), 
			`prizename` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`prizetype` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`certorg` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`prizetime` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`prizelv` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`applyStatus` VARCHAR(2147483647), 
			`applyText` VARCHAR(2147483647), 
			`fileIds` ROW < `text` ARRAY < VARCHAR(2147483647)>>
		>>, 
		`operating_performance_list` ARRAY < ROW < 
			`dataId` VARCHAR(2147483647), 
			`projectname` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`contract_amount` ROW < `text` ARRAY < DOUBLE >>, 
			`certification_unit_person` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`project_winning_time` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`winning_project_owner_unit` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`applyStatus` VARCHAR(2147483647), 
			`applyText` VARCHAR(2147483647), 
			`fileIds` ROW < `text` ARRAY < VARCHAR(2147483647)>>>>, 
			`safety_quality_list` ARRAY < ROW < `dataId` VARCHAR(2147483647), 
			`accident_type` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`has_accident` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`project_situation` ROW < `text` ARRAY < VARCHAR(2147483647)>>, 
			`applyStatus` VARCHAR(2147483647), 
			`applyText` VARCHAR(2147483647), 
			`fileIds` ROW < `text` ARRAY < VARCHAR(2147483647)>>
		>>
  >>,
  PRIMARY KEY (id) NOT ENFORCED
)
WITH (
    'connector' = 'elasticsearch-7',
    'hosts' = 'http://quickstart-es-http.elastic-cluster:9200',
    'username' = 'elastic',
    'password' = 'zcrB79VO14201avzQG43BQS3',
    'index' = 'person_performance'
);

INSERT INTO SINK_PERSON_PERFORMANCE  WITH `organ_info` AS (
  SELECT 
    OID,
    COID,
    ORULE,
    ArrayJoin('-', KeySet(COLLECT(NAME))) NAME,
    ArrayJoin('-', KeySet(COLLECT(SHORTNAME))) SHORTNAME
  FROM (
        SELECT  
            t_biz_token.OID,
            t_biz_token.COID,
            t_biz_token.ORULE,
            o.NAME,
            o.SHORTNAME
        FROM
            (
                SELECT
                    biz.OID,
                    biz.ORULE,
                    biz.COID,
                    s.TOKEN,
                    s.TOKEN_SNO
                FROM
                    (SELECT * FROM WAF_AC_ORGAN2BIZ WHERE BIZTYPE = 'base') biz,
                LATERAL TABLE (SplitPath(biz.ORULE, '-')) s(TOKEN, TOKEN_SNO)
            ) AS t_biz_token LEFT JOIN WAF_AC_ORGAN AS o ON t_biz_token.TOKEN = o.OID
        ORDER BY
            t_biz_token.TOKEN_SNO
    )
  GROUP BY
    OID,
    COID,
    ORULE
),
t_work AS (
  SELECT 
    postworkinfo.EMPID,

    KeySet(
      COLLECT(`c`.`NAME`)
    ) AS `WORKING_COID_NAME`,

    KeySet(
      COLLECT(`c`.`SHORTNAME`)
    ) AS `WORKING_COID_SHORTNAME`,

    KeySet(
      COLLECT(`c`.`ORULE`)
    ) AS `WORKING_COID_ORULE`,

    KeySet(
    COLLECT(`b`.`NAME`)
    ) AS `WORKING_DEPT_NAME`,

    KeySet(
    COLLECT(`b`.`SHORTNAME`)
    ) AS `WORKING_DEPT_SHORTNAME`,

    KeySet(
      COLLECT(`b`.`ORULE`)
    ) AS `WORKING_DEPT_ORULE`, 
    KeySet(
      COLLECT(`postworkinfo`.`POST`)
    ) AS `POST`, 

    KeySet(
      COLLECT(
        `t_dict_positiongradenorm`.`TOP_DICT_NAME`
      )
    ) AS `POSITIONGRADENORM_NAME`
     
  FROM 
    `HR_WORK_POSTWORKINFO` AS `postworkinfo` 
    INNER JOIN `organ_info` AS `b` ON `postworkinfo`.`OFFICEDEPID` = `b`.`OID` 
    INNER JOIN `organ_info` AS `c` ON `b`.`COID` = `c`.`OID` 
    LEFT JOIN `MV_HR_DICTV2_RULE` AS `t_dict_positiongradenorm` ON `postworkinfo`.`POSITIONGRADENORM` = `t_dict_positiongradenorm`.`DICT_CODE` 
  WHERE 
    `postworkinfo`.`OFFICETYPE` = '00' 
    AND `postworkinfo`.`STATUS` = '1'
    AND `b`.`OID` IS NOT NULL 
  GROUP BY 
    `postworkinfo`.`EMPID`
), 
t_bestpropost AS (
    SELECT 
        KeySet(
        COLLECT(t_dict_bestpropost.NAME)
        ) AS `PROFTECHQUA_NAME`, 
        t_positionqua.EMPID AS `EMPID` 
    FROM 
        (
        SELECT 
            PROFTECHQUA, 
            EMPID 
        FROM 
            (
            SELECT 
                HR_EMP_PROFTECHPOSITIONQUA.*, 
                ROW_NUMBER() OVER (
                PARTITION BY EMPID 
                ORDER BY 
                    `RANK`, 
                    GAINQUATIME DESC
                ) AS rn 
            FROM 
                HR_EMP_PROFTECHPOSITIONQUA 
            WHERE 
                STATUS = '1'
            ) AS qualification_ranked 
        WHERE 
            rn = 1
        ) AS t_positionqua INNER JOIN (
        SELECT 
            CODE, 
            NAME 
        FROM 
            WAF_CORE_DICTITEM 
        WHERE 
            DID = '101449'
        ) AS t_dict_bestpropost ON t_dict_bestpropost.CODE = t_positionqua.PROFTECHQUA 
    GROUP BY 
        t_positionqua.EMPID
),
t_eduinfo AS (
  SELECT 
    t_edu.`EMPID` AS `EMPID`, 
    KeySet(
      COLLECT(t_dict_education.NAME)
    ) AS `EDUCATION_NAME`, 
    KeySet(
      COLLECT(t_dict_degree.NAME)
    ) AS `DEGREE_NAME`, 
    KeySet(
      COLLECT(t_dict_college.NAME)
    ) AS `COLLEGE_NAME`, 
    KeySet(
      COLLECT(t_edu.`PROFNAME`)
    ) AS `PROFNAME` 
  FROM 
    (
      SELECT 
        `EMPID`, 
        `EDUCATION`, 
        `DEGREE`, 
        `COLLEGE`, 
        `PROFNAME` 
      FROM 
        (
          SELECT 
            `HR_EMP_ACADEMICDEGREECERT`.*, 
            ROW_NUMBER() OVER (
              PARTITION BY `EMPID` 
              ORDER BY 
                `EDUCATION`, 
                `OUTTIME` DESC
            ) AS `rn` 
          FROM 
            `HR_EMP_ACADEMICDEGREECERT` 
          WHERE 
            `STATUS` = '1'
        ) AS ranked_certificates 
      WHERE 
        `rn` = 1
    ) AS `t_edu` 
    LEFT JOIN (
      SELECT 
        CODE, 
        NAME 
      FROM 
        WAF_CORE_DICTITEM 
      WHERE 
        DID = '1011872'
    ) AS `t_dict_education` ON t_dict_education.CODE = t_edu.EDUCATION 
    LEFT JOIN (
      SELECT 
        CODE, 
        NAME 
      FROM 
        WAF_CORE_DICTITEM 
      WHERE 
        DID = '1011871'
    ) AS `t_dict_degree` ON t_dict_degree.CODE = t_edu.DEGREE 
    LEFT JOIN (
      SELECT 
        CODE, 
        NAME 
      FROM 
        WAF_CORE_DICTITEM 
      WHERE 
        DID = '1011868'
    ) AS `t_dict_college` ON t_dict_college.CODE = t_edu.COLLEGE 
  GROUP BY 
    t_edu.EMPID
),

t_photo AS (
  SELECT 
    ATTACHID, 
    BIZID 
  FROM 
    (
      SELECT 
        t_attach.ATTACHID, 
        t_ref.BIZID, 
        ROW_NUMBER() OVER (
          PARTITION BY t_ref.EID, 
          t_ref.EIID, 
          t_ref.BIZID 
          ORDER BY 
            t_attach.MRUT DESC
        ) AS RN 
      FROM 
        WAF_APP_ATTACHREF t_ref 
      JOIN 
        WAF_APP_ATTACH t_attach ON t_attach.ATTACHID = t_ref.ATTACHID 
      WHERE 
        t_ref.EID = 'e1e6afc5ec094abb855e4d8b8382c385' 
      AND 
        t_ref.EIID = '824309d0b2494195835dd9a6a5feb42b' --photo
    ) 
  WHERE 
    RN = 1
), 
t_dict_sex AS (
  SELECT 
    CODE, 
    NAME 
  FROM 
    WAF_CORE_DICTITEM 
  WHERE 
    DID = '101261'
), 
t_nativeplace_dict as (
  select 
    CODE, 
    NAME 
  from 
    WAF_CORE_DICTITEM 
  where 
    DID = '101474'
)
SELECT 
  t_emp.CERTNO AS `id`,
  -- 身份证
  t_emp.NAME AS `name`, 
  -- 姓名
  t_emp.AGE AS `age`, 
  -- 年龄
  t_dict_sex.NAME AS `sex`, 
  -- 性别
  t_work.WORKING_COID_NAME AS `working_corp_names`,
  -- 所在单位名称
  t_work.WORKING_COID_SHORTNAME AS `working_corp_shortnames`,
  -- 所在单位简称
  t_work.WORKING_COID_ORULE AS `working_corp_rules`, 
  -- 所在单位规则码
  t_work.WORKING_DEPT_NAME AS `working_dept_names`, 
  -- 所在部门名称
  t_work.WORKING_DEPT_SHORTNAME AS `working_dept_shortnames`,
  -- 所在部门名称

  t_work.WORKING_DEPT_ORULE AS `working_dept_rules`, 
  -- 所在部门规则码
  t_emp.BIRTHDAY AS `birthday`, 
  -- 出生日期
  t_nativeplace_dict.NAME AS `nativeplace`, 
  -- 籍贯
  t_work.POST AS `post`, 
  -- 职位
  t_work.POSITIONGRADENORM_NAME AS `positiongrade`, 
  -- 职位等级
  t_bestpropost.PROFTECHQUA_NAME AS `bestpropost`, 
  -- 最佳岗位
  t_eduinfo.EDUCATION_NAME AS `highest`, 
  -- 最高学历
  t_eduinfo.DEGREE_NAME AS `bestdegree`, 
  -- 最高学位
  t_eduinfo.COLLEGE_NAME AS `college`, 
  -- 毕业院校
  t_eduinfo.PROFNAME AS `specialty`, 
  -- 其他资格证
  t_photo.ATTACHID AS `photo_id`,
  -- 照片路径
  t_project_performance.`ts`,
  t_project_performance.`approveStatus`,
  t_project_performance.`createdAt`,
  t_project_performance.`updatedAt`,
  t_project_performance.`complete_projects`,
  t_project_performance.`accumulated_years`,
  t_project_performance.`overseas_years`,
  t_project_performance.`constructor_major`,
  t_project_performance.`safe_pro_certificate`,
  t_project_performance.`other_qualification`,
  t_project_performance.`isArchive`,
  t_project_performance.`auditStatus`,
  t_project_performance.`auditName`,
  t_project_performance.`auditDate`,
  t_project_performance.`submitDate`,
  t_project_performance.`action`,
  t_project_performance.`operatorName`,
  t_project_performance.`operatorId`,
  t_project_performance.`eventTime`,
  t_project_performance.`applyStatus`,
  t_project_performance.`applyText`,
  t_project_performance.`fileIds`,
  t_project_performance.`personal_honor_list`,
  t_project_performance.`work_performance_list`,
  t_project_performance.`project_performance_list`
FROM 
  HR_EMP_BASICINFO AS t_emp 
  INNER JOIN PROJECT_MANAGER_PERFORMANCE_SIMPLE t_project_performance ON t_project_performance.certNo = t_emp.CERTNO
  LEFT JOIN t_work ON t_emp.EMPID = t_work.EMPID 
  LEFT JOIN t_bestpropost ON t_emp.EMPID = t_bestpropost.EMPID 
  LEFT JOIN t_eduinfo ON t_emp.EMPID = t_eduinfo.EMPID 
  LEFT JOIN t_photo ON t_emp.EMPID = t_photo.BIZID 
  LEFT JOIN t_dict_sex ON t_emp.SEX = t_dict_sex.CODE 
  LEFT JOIN t_nativeplace_dict ON t_emp.NATIVEPLACE = t_nativeplace_dict.CODE;









