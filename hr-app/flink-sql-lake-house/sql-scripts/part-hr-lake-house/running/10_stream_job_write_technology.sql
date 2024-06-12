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
    ------------------�����
    select
            'kjxt-hjqk-'|| a.id as profid,
            b.empid as empid,
            a.xmmc as resultname,
            null as resultno,
            null as resultlv,
            c.hr_code as resulttype, --�ֵ�
            d.hr_code as resultidenlv,--�ֵ�
            bjjg as resultidenorg,
            e.hr_code as completerank, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.jxlb =c.technology_code AND c.technology_type ='�������'
            LEFT JOIN technology_hr_mapping d ON a.jxdj =d.technology_code AND d.technology_type ='����ȼ�'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='����'

    UNION
    ------------------ר��
    select
            'kjxt-zl-'|| a.id as profid,
            b.empid as empid,
            a.zlmc as resultname,
            null as resultno,
            null as resultlv,
            c.hr_code as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            e.HR_CODE as completerank, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.cglb =c.technology_code AND c.technology_type ='�ɹ����'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='����'

    UNION
    ------------------��׼�淶
    select
            'kjxt-bzgf-'|| a.id as profid,
            b.empid as empid,
            a.bzmc as resultname,
            null as resultno,
            d.hr_code as resultlv,
            c.hr_code as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            e.hr_code as completerank, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.cglb =c.technology_code AND c.technology_type ='�ɹ����'
            LEFT JOIN technology_hr_mapping d ON a.bzjb =d.technology_code AND d.technology_type ='��׼����'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='����'

    UNION
    ------------------����
    select
            'kjxt-lw-'|| a.id as profid,
            b.empid as empid,
            a.lwbt as resultname,
            null as resultno,
            null as resultlv,
            c.hr_code as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            e.hr_code as completerank, --�ֵ�
            null as maincontribution,
            null as role,
            fbrq as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            d.hr_code as patenttype, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.cglb =c.technology_code AND c.technology_type ='�ɹ����'
            LEFT JOIN technology_hr_mapping d ON a.lwfl =d.technology_code AND d.technology_type ='���ķ���'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='����'

    UNION
------------------ר��
    select
            'kjxt-zz-'|| a.id as profid,
            b.empid as empid,
            a.zzmc  as resultname,
            null as resultno,
            null as resultlv,
            c.hr_code as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            e.hr_code as completerank, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.cglb =c.technology_code AND c.technology_type ='�ɹ����'
            LEFT JOIN technology_hr_mapping e ON a.pm=e.TECHNOLOGY_CODE AND e.TECHNOLOGY_TYPE ='����'

    UNION
    ------------------���ҿƼ��ƻ���Ŀ
    select
            'kjxt-gjkjjhxm-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --�ֵ�
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='��Ŀ����-����'

    UNION
    ------------------�н�������Ŀ�⣨������Ŀ����⣩
    select
            'kjxt-zjjtxmk-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --�ֵ�
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='��Ŀ����-����'


    UNION
    ------------------ʡ��������
    select
            'kjxt-sbjkt-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --�ֵ�
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='��Ŀ����-����'

    UNION
    ------------------������������Ϣ��
    select
            'kjxt-hektjbxx-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --�ֵ�
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='��Ŀ����-����'

    UNION
    ------------------�����������
    select
            'kjxt-zzlxkt-'|| a.id as profid,
            b.empid as empid,
            a.xmmc  as resultname,
            null as resultno,
            null as resultlv,
            null as resulttype,  --�ֵ�
            null as resultidenlv,
            null as resultidenorg,
            null as completerank, --�ֵ�
            null as maincontribution,
            null as role,
            wcsj as gaintime,
            null as period,
            null as witness,
            null as completeorg,
            null as benefit,
            c.hr_code as patenttype, --�ֵ�
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
            LEFT JOIN technology_hr_mapping c ON a.xmlx =c.technology_code AND c.technology_type ='��Ŀ����-����'
);

END;