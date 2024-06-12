CREATE TABLE `RAW_HR_EMP_PROFRESULTPATENTINFO`
(
    `PROFID`              VARCHAR(2147483647) NOT NULL,
    `EMPID`               VARCHAR(2147483647),
    `RESULTNAME`          VARCHAR(2147483647),
    `RESULTNO`            VARCHAR(2147483647),
    `RESULTLV`            VARCHAR(2147483647),
    `RESULTTYPE`          VARCHAR(2147483647),
    `RESULTIDENLV`        VARCHAR(2147483647),
    `RESULTIDENORG`       VARCHAR(2147483647),
    `COMPLETERANK`        VARCHAR(2147483647),
    `MAINCONTRIBUTION`    VARCHAR(2147483647),
    `ROLE`                VARCHAR(2147483647),
    `GAINTIME`            VARCHAR(2147483647),
    `PERIOD`              VARCHAR(2147483647),
    `WITNESS`             VARCHAR(2147483647),
    `COMPLETEORG`         VARCHAR(2147483647),
    `BENEFIT`             VARCHAR(2147483647),
    `PATENTTYPE`          VARCHAR(2147483647),
    `PATENTAPPCOUNTRY`    VARCHAR(2147483647),
    `ISSUORG`             VARCHAR(2147483647),
    `PROJECT`             VARCHAR(2147483647),
    `OPTOR`               VARCHAR(2147483647),
    `OPTTIME`             VARCHAR(2147483647),
    `OPTORG`              VARCHAR(2147483647),
    `STATUS`              VARCHAR(2147483647),
    `NOTE`                VARCHAR(2147483647),
    `PROJECTLEVEL`        VARCHAR(2147483647),
    `PATENTUNIT`          VARCHAR(2147483647),
    `GROUPPOST`           VARCHAR(2147483647),
    PRIMARY KEY (`PROFID`) NOT ENFORCED
)
    WITH (
        'connector'  = 'jdbc' ,
        'driver'  = 'oracle.jdbc.driver.OracleDriver' ,
        'url'  = 'jdbc:oracle:thin:@10.201.218.54:1521/hr' ,
        'table-name'  = 'hr_emp_profresultpatentinfo'  ,
        'username' ='hrorg_1217' ,
        'password' ='rx5Hog'
        );

CREATE TABLE `TECHNOLOGY_HR_MAPPING`
(
    `ID`                VARCHAR(2147483647) NOT NULL,
    `TECHNOLOGY_TYPE`   VARCHAR(2147483647),
    `TECHNOLOGY_CODE`   VARCHAR(2147483647),
    `HR_TYPE`           VARCHAR(2147483647),
    `HR_CODE`           VARCHAR(2147483647),
    `HR_NAME`           VARCHAR(2147483647),
    PRIMARY KEY (`ID`)  NOT ENFORCED
)
    WITH (
        'connector'  = 'jdbc' ,
        'driver'  = 'oracle.jdbc.driver.OracleDriver' ,
        'url'  = 'jdbc:oracle:thin:@10.201.218.54:1521/hr' ,
        'table-name'  = 'hr_emp_profresultpatentinfo'  ,
        'username' ='hrorg_1217' ,
        'password' ='rx5Hog'
        );
