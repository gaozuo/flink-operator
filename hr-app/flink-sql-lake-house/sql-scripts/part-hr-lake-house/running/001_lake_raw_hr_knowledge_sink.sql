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
INSERT INTO LAKE_RAW_HR_TV2_TAG_INS SELECT * FROM CDC_HR_TV2_TAG_INS;
INSERT INTO LAKE_RAW_HR_TV2_EMP_TAG_INS SELECT * FROM CDC_HR_TV2_EMP_TAG_INS;
INSERT INTO LAKE_RAW_MV_HR_DICTV2_RULE SELECT * FROM CDC_MV_HR_DICTV2_RULE;
END;
