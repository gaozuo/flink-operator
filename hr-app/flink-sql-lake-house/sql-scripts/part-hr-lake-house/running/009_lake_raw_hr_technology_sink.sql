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
INSERT INTO LAKE_RAW_TECHNOLOGY_HJQK SELECT * FROM CDC_TECHNOLOGY_HJQK;
INSERT INTO LAKE_RAW_TECHNOLOGY_ZL SELECT * FROM CDC_TECHNOLOGY_ZL;
INSERT INTO LAKE_RAW_TECHNOLOGY_BZGF SELECT * FROM CDC_TECHNOLOGY_BZGF;
INSERT INTO LAKE_RAW_TECHNOLOGY_LW SELECT * FROM CDC_TECHNOLOGY_LW;
INSERT INTO LAKE_RAW_TECHNOLOGY_ZZ SELECT * FROM CDC_TECHNOLOGY_ZZ;
INSERT INTO LAKE_RAW_TECHNOLOGY_GJKJJHXM SELECT * FROM CDC_TECHNOLOGY_GJKJJHXM;
INSERT INTO LAKE_RAW_TECHNOLOGY_ZJJTXMK SELECT * FROM CDC_TECHNOLOGY_ZJJTXMK;
INSERT INTO LAKE_RAW_TECHNOLOGY_SBJKT SELECT * FROM CDC_TECHNOLOGY_SBJKT;
INSERT INTO LAKE_RAW_TECHNOLOGY_HEKTJBXX SELECT * FROM CDC_TECHNOLOGY_HEKTJBXX;
INSERT INTO LAKE_RAW_TECHNOLOGY_ZZLXKT SELECT * FROM CDC_TECHNOLOGY_ZZLXKT;
END;