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
INSERT INTO LAKE_RAW_WAF_AC_ORGAN SELECT * FROM CDC_WAF_AC_ORGAN;
INSERT INTO LAKE_RAW_WAF_AC_ORGAN2BIZ SELECT * FROM CDC_WAF_AC_ORGAN2BIZ;
INSERT INTO LAKE_RAW_BORG_JGXX_BASEINFO SELECT * FROM CDC_BORG_JGXX_BASEINFO;
INSERT INTO LAKE_RAW_BORG_JGXX_CERTIFICATE SELECT * FROM CDC_BORG_JGXX_CERTIFICATE;
INSERT INTO LAKE_RAW_BORG_JGXX_DOT SELECT * FROM CDC_BORG_JGXX_DOT;
INSERT INTO LAKE_RAW_BORG_JGXX_PATENT SELECT * FROM CDC_BORG_JGXX_PATENT;
INSERT INTO LAKE_RAW_BORG_JGXX_QUALIFICATION SELECT * FROM CDC_BORG_JGXX_QUALIFICATION;
INSERT INTO LAKE_RAW_BORG_JGXX_SHAREHOLDER SELECT * FROM CDC_BORG_JGXX_SHAREHOLDER;
END;


