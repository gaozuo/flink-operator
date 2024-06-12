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

INSERT INTO LAKE_RAW_HR_EMP_PROFRESULTPATENTINFO (
    ------------------获奖情况
    select
            'kjxt-hjqk-'|| a.id as profid,
            b.empid as empid,
            a.xmmc as resultname,
            null as resultno,
            null as resultlv,
            c.hr_code as resulttype, --字典
            d.hr_code as resultidenlv,--字典
            bjjg as resultidenorg,
            e.hr_code as completerank, --字典
            null as maincontribution,
            null as role,
            hjsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            null as patenttype,
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_hjqk a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.jxlb =c.technology_code AND c.technology_type ='奖项类别'
            LEFT JOIN technology_hr_mapping d ON a.jxdj =d.technology_code AND d.technology_type ='奖项等级'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='排名'

    UNION
    ------------------专利
    select
            'kjxt-zl-'|| a.id as profid,
            b.empid as empid,
            a.zlmc as resultname,
            null as resultno,
            null as resultlv,
            c.hr_code as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            e.HR_CODE as completerank, --字典
            null as maincontribution,
            null as role,
            null as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            null as patenttype,
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_zl a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.cglb =c.technology_code AND c.technology_type ='成果类别'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='排名'

    UNION
    ------------------标准规范
    select
            'kjxt-bzgf-'|| a.id as profid,
            b.empid as empid,
            a.bzmc as resultname,
            null as resultno,
            d.hr_code as resultlv,
            c.hr_code as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            e.hr_code as completerank, --字典
            null as maincontribution,
            null as role,
            null as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            null as patenttype,
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_bzgf a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.cglb =c.technology_code AND c.technology_type ='成果类别'
            LEFT JOIN technology_hr_mapping d ON a.bzjb =d.technology_code AND d.technology_type ='标准级别'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='排名'

    UNION
    ------------------论文
    select
            'kjxt-lw-'|| a.id as profid,
            b.empid as empid,
            a.lwbt as resultname,
            null as resultno,
            null as resultlv,
            c.hr_code as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            e.hr_code as completerank, --字典
            null as maincontribution,
            null as role,
            fbrq as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            d.hr_code as patenttype, --字典
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_lw a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.cglb =c.technology_code AND c.technology_type ='成果类别'
            LEFT JOIN technology_hr_mapping d ON a.lwfl =d.technology_code AND d.technology_type ='论文分类'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='排名'

    UNION
------------------专著
    select
            'kjxt-zz-'|| a.id as profid,
            b.empid as empid,
            a.zzmc  as resultname,
            null as resultno,
            null as resultlv,
            c.hr_code as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            e.hr_code as completerank, --字典
            null as maincontribution,
            null as role,
            cbrq as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            null as patenttype,
            null as patentappcountry,
            cbs as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_zz a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.cglb =c.technology_code AND c.technology_type ='成果类别'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='排名'

    UNION
    ------------------国家科技计划项目
    select
            'kjxt-gjkjjhxm-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --字典
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --字典
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_gjkjjhxm a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='项目类型-大类'

    UNION
    ------------------中交集团项目库（科研项目管理库）
    select
            'kjxt-zjjtxmk-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --字典
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --字典
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_zjjtxmk a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='项目类型-大类'


    UNION
    ------------------省部级课题
    select
            'kjxt-sbjkt-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --字典
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --字典
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_sbjkt a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='项目类型-大类'

    UNION
    ------------------横向课题基本信息表
    select
            'kjxt-hektjbxx-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --字典
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --字典
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_hektjbxx a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='项目类型-大类'

    UNION
    ------------------自主立项课题
    select
            'kjxt-zzlxkt-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --字典
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --字典
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --字典
            null as patentappcountry,
            null as issuorg,
            null as "project",
            'admin' as optor,
            null as accessory,
            to_char(last_update_time, 'YYYY-MM-DD') as opttime,
            '1' as optorg,
            '1' as status,
            null as note,
            null as projectlevel,
            null as patentunit,
            null as grouppost
    from
        LAKE_RAW_technology_zzlxkt a
            JOIN hr_emp_auth b ON a.rybm = b.aucode
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='项目类型-大类'
);

END;