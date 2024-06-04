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




INSERT INTO LAKE_RAW_WAF_APP_ATTACH SELECT * FROM WAF_APP_ATTACH;
INSERT INTO LAKE_RAW_WAF_APP_ATTACHREF SELECT * FROM WAF_APP_ATTACHREF;
INSERT INTO LAKE_RAW_WAF_AC_USER SELECT * FROM WAF_AC_USER;
INSERT INTO LAKE_RAW_WAF_CORE_ENTITY SELECT * FROM WAF_CORE_ENTITY;
INSERT INTO LAKE_RAW_WAF_CORE_ENTITYITEM SELECT * FROM WAF_CORE_ENTITYITEM;
INSERT INTO LAKE_RAW_WAF_CORE_DICT SELECT * FROM WAF_CORE_DICT;
INSERT INTO LAKE_RAW_WAF_CORE_DICTITEM SELECT * FROM WAF_CORE_DICTITEM;

INSERT INTO LAKE_RAW_HR_TV2_TAG_INS SELECT * FROM HR_TV2_TAG_INS;
INSERT INTO LAKE_RAW_HR_TV2_EMP_TAG_INS SELECT * FROM HR_TV2_EMP_TAG_INS;
INSERT INTO LAKE_RAW_MV_HR_DICTV2_RULE SELECT * FROM MV_HR_DICTV2_RULE;

INSERT INTO LAKE_RAW_HR_EMP_BASICINFO SELECT * FROM HR_EMP_BASICINFO;
INSERT INTO LAKE_RAW_HR_WORK_POSTWORKINFO SELECT * FROM HR_WORK_POSTWORKINFO;
INSERT INTO LAKE_RAW_HR_WORK_EMPPOSITION SELECT * FROM HR_WORK_EMPPOSITION;
INSERT INTO LAKE_RAW_HR_EMP_ACADEMICDEGREECERT SELECT * FROM HR_EMP_ACADEMICDEGREECERT;
INSERT INTO LAKE_RAW_HR_EMP_PROFTECHPOSITIONQUA SELECT * FROM HR_EMP_PROFTECHPOSITIONQUA;

INSERT INTO LAKE_RAW_HR_MOVE_INSIDER SELECT * FROM HR_MOVE_INSIDER;
INSERT INTO LAKE_RAW_HR_MOVE_ENTRYAPPLY SELECT * FROM HR_MOVE_ENTRYAPPLY;
INSERT INTO LAKE_RAW_HR_WORK_LABCONTRACT SELECT * FROM HR_WORK_LABCONTRACT;
INSERT INTO LAKE_RAW_HR_EMP_SOCIALRELATIONINFO SELECT * FROM HR_EMP_SOCIALRELATIONINFO;
INSERT INTO LAKE_RAW_HR_EMP_VALIDPASSPORT SELECT * FROM HR_EMP_VALIDPASSPORT;
INSERT INTO LAKE_RAW_HR_EMP_PROFRESULTPATENTINFO SELECT * FROM HR_EMP_PROFRESULTPATENTINFO;
INSERT INTO LAKE_RAW_HR_EMP_MAINTHESISWORKINFO SELECT * FROM HR_EMP_MAINTHESISWORKINFO;
INSERT INTO LAKE_RAW_HR_EMP_TRAININFO SELECT * FROM HR_EMP_TRAININFO;
INSERT INTO LAKE_RAW_HR_EMP_REWARDINFO SELECT * FROM HR_EMP_REWARDINFO;
INSERT INTO LAKE_RAW_HR_EMP_PROJPREFINFO SELECT * FROM HR_EMP_PROJPREFINFO;
INSERT INTO LAKE_RAW_HR_WORK_CHECKRESULT SELECT * FROM HR_WORK_CHECKRESULT;
INSERT INTO LAKE_RAW_HR_EMP_TECHPROGRADE SELECT * FROM HR_EMP_TECHPROGRADE;
INSERT INTO LAKE_RAW_HR_EMP_SEAMANCERTINFO SELECT * FROM HR_EMP_SEAMANCERTINFO;
INSERT INTO LAKE_RAW_HR_EMP_QUACERTINFO SELECT * FROM HR_EMP_QUACERTINFO;
INSERT INTO LAKE_RAW_HR_EMP_EXPERTINFO SELECT * FROM HR_EMP_EXPERTINFO;


/*INSERT INTO LAKE_RAW_PROJECT_MANAGER_PERFORMANCE SELECT * FROM PROJECT_MANAGER_PERFORMANCE;*/

INSERT INTO LAKE_RAW_WAF_AC_ORGAN SELECT * FROM WAF_AC_ORGAN;
INSERT INTO LAKE_RAW_WAF_AC_ORGAN2BIZ SELECT * FROM WAF_AC_ORGAN2BIZ;
INSERT INTO LAKE_RAW_BORG_JGXX_BASEINFO SELECT * FROM BORG_JGXX_BASEINFO;
INSERT INTO LAKE_RAW_BORG_JGXX_CERTIFICATE SELECT * FROM BORG_JGXX_CERTIFICATE;
INSERT INTO LAKE_RAW_BORG_JGXX_DOT SELECT * FROM BORG_JGXX_DOT;
INSERT INTO LAKE_RAW_BORG_JGXX_PATENT SELECT * FROM BORG_JGXX_PATENT;
INSERT INTO LAKE_RAW_BORG_JGXX_QUALIFICATION SELECT * FROM BORG_JGXX_QUALIFICATION;
INSERT INTO LAKE_RAW_BORG_JGXX_SHAREHOLDER SELECT * FROM BORG_JGXX_SHAREHOLDER;


