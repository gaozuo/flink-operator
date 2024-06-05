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

CREATE TABLE `LAKE_RAW_PROJECT_MANAGER_PERFORMANCE` (
   `ts`                 TIMESTAMP(3),
   `_id` VARCHAR(2147483647) NOT NULL,
   `approveStatus` VARCHAR(2147483647),
   `createdAt` TIMESTAMP(3),
   `updatedAt` TIMESTAMP(3),
   `certNo` VARCHAR(2147483647),
   `complete_projects` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>,
   `accumulated_years` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>,
   `overseas_years` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>,
   `constructor_major` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>,
   `safe_pro_certificate` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>,
   `other_qualification` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>,
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
   `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>,
   `personal_honor_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `honorary_title` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `rewardlv` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `prizetime` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `apporg` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>,
   `work_performance_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `job_performance_category` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `project_situation` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>,
   `project_performance_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `projname` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `postions` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `appointtime` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `contract_amount` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `industry_categories` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `businessarea` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `projectattribute` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `end_time` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `contract_duration` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `work_time` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `delivery_time` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `delivery_contract_amount` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `project_income` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `revenue_proportion` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `is_reach` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `excess` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `country` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `construct` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `construction_control_unit` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `reward_punishment_info` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `credit_evaluation` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `projectStatus` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `projectSummary` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `actualProfitSettled` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `project_results` ARRAY<ROW<`dataId` VARCHAR(2147483647), `prizename` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `prizetype` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `certorg` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `prizetime` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `prizelv` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>, `operating_performance_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `projectname` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `contract_amount` ROW<`text` ARRAY<DOUBLE>, `value` ARRAY<VARCHAR(2147483647)>>, `certification_unit_person` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `project_winning_time` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `winning_project_owner_unit` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>, `safety_quality_list` ARRAY<ROW<`dataId` VARCHAR(2147483647), `accident_type` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `has_accident` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `project_situation` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>, `applyStatus` VARCHAR(2147483647), `applyText` VARCHAR(2147483647), `fileIds` ROW<`text` ARRAY<VARCHAR(2147483647)>, `value` ARRAY<VARCHAR(2147483647)>>>>>>,
   PRIMARY KEY (`_id`) NOT ENFORCED
)
    COMMENT ''
WITH (
    'connector' = 'hudi',
    'path' = 's3a://hudilakehouse/project_manager/raw_layer/project_manager_performance',
    'table.type' = 'COPY_ON_WRITE',
    'read.streaming.enabled' = 'true', -- this option enable the streaming read
    'read.streaming.check-interval' = '4', -- specifies the check interval for finding new source commits, default 60s.
    'read.start-commit' = 'earliest',
    'cdc.enabled' = 'true',
    'compaction.delta_seconds' = '340',
    'compaction.max_memory' = '100',
    --'compaction.tasks' = '4',
    'compaction.trigger.strategy' = 'num_or_time'
    --'write.tasks' = '6',
    --'read.tasks' = '4',
    --'write.task.max.size' = '256.0'
);
