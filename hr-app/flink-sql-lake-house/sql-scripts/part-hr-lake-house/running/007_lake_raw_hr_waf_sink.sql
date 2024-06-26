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
INSERT INTO LAKE_RAW_WAF_APP_ATTACH SELECT * FROM CDC_WAF_APP_ATTACH;
INSERT INTO LAKE_RAW_WAF_APP_ATTACHREF SELECT * FROM CDC_WAF_APP_ATTACHREF;
INSERT INTO LAKE_RAW_WAF_AC_USER SELECT * FROM CDC_WAF_AC_USER;
INSERT INTO LAKE_RAW_WAF_CORE_ENTITY SELECT * FROM CDC_WAF_CORE_ENTITY;
INSERT INTO LAKE_RAW_WAF_CORE_ENTITYITEM SELECT * FROM CDC_WAF_CORE_ENTITYITEM;
INSERT INTO LAKE_RAW_WAF_CORE_DICT SELECT * FROM CDC_WAF_CORE_DICT;
INSERT INTO LAKE_RAW_WAF_CORE_DICTITEM SELECT * FROM CDC_WAF_CORE_DICTITEM;
END;


