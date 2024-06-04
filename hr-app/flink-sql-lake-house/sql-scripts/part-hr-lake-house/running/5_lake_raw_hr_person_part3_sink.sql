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
INSERT INTO LAKE_RAW_HR_WORK_LABCONTRACT SELECT * FROM HR_WORK_LABCONTRACT;
INSERT INTO LAKE_RAW_HR_EMP_SOCIALRELATIONINFO SELECT * FROM HR_EMP_SOCIALRELATIONINFO;
INSERT INTO LAKE_RAW_HR_EMP_VALIDPASSPORT SELECT * FROM HR_EMP_VALIDPASSPORT;
INSERT INTO LAKE_RAW_HR_EMP_PROFRESULTPATENTINFO SELECT * FROM HR_EMP_PROFRESULTPATENTINFO;
INSERT INTO LAKE_RAW_HR_EMP_MAINTHESISWORKINFO SELECT * FROM HR_EMP_MAINTHESISWORKINFO;
INSERT INTO LAKE_RAW_HR_EMP_TRAININFO SELECT * FROM HR_EMP_TRAININFO;
INSERT INTO LAKE_RAW_HR_EMP_REWARDINFO SELECT * FROM HR_EMP_REWARDINFO;
END;