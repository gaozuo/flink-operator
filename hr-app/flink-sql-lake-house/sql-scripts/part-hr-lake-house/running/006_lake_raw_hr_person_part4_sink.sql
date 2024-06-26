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
INSERT INTO LAKE_RAW_HR_EMP_PROJPREFINFO SELECT * FROM CDC_HR_EMP_PROJPREFINFO;
INSERT INTO LAKE_RAW_HR_WORK_CHECKRESULT SELECT * FROM CDC_HR_WORK_CHECKRESULT;
INSERT INTO LAKE_RAW_HR_EMP_TECHPROGRADE SELECT * FROM CDC_HR_EMP_TECHPROGRADE;
INSERT INTO LAKE_RAW_HR_EMP_SEAMANCERTINFO SELECT * FROM CDC_HR_EMP_SEAMANCERTINFO;
INSERT INTO LAKE_RAW_HR_EMP_QUACERTINFO SELECT * FROM CDC_HR_EMP_QUACERTINFO;
INSERT INTO LAKE_RAW_HR_EMP_EXPERTINFO SELECT * FROM CDC_HR_EMP_EXPERTINFO;
END;