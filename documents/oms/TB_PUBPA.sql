/*
================================================================================
表结构代码:TB_PUBPA
表结构名称:资产分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBPA;
drop index AK_TB_PUBPA;
drop table TB_PUBPA;
create table TB_PUBPA  (
   PUBPA_ID             INTEGER                              not null, /*资产分类ID            */
   PUBPA001             VARCHAR2(4)                          not null, /*资产分类编码          */
   PUBPA002             VARCHAR2(60)                         not null, /*类别名称              */
   PUBPA003             INTEGER,                                       /*类别级次码              */
   PUBPA004             VARCHAR2(1)                         not null, /*计提属性              */
   PUBPA005             VARCHAR2(10) ,                                 /*计提单位              */
   PUBPA006             NUMBER(4) ,                                    /*使用年              */
   PUBPA007             NUMBER(4)  ,                                   /*使用月              */
   PUBPA008             NUMBER(5,4) ,                                  /*净残值率              */
   PUBPA009             VARCHAR2(1)                          not null, /*折旧方法              */
   PUBPA010             VARCHAR2(1)                          not null, /*是否递延资产            */
   PUBPA011             VARCHAR2(1)                          not null, /*折旧属性            */
   PUBPA012             VARCHAR2(1)                          not null, /*停用机器是否折旧      */
   PUBPA013             VARCHAR2(1),                                   /*级次 add by 20090924  */
   CREATE_USER          VARCHAR2(12),                                  /*建立人员              */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门          */                               
   CREATE_DATE          DATE,                                          /*建立日期              */
   MODIFIER             VARCHAR2(12),                                  /*修改人员              */
   MODI_DATE            DATE,                                          /*修改日期              */
   FLAG                 NUMBER(1),                                     /*资料状态              */
   constraint PK_TB_PUBPA primary key (PUBPA_ID)
);
create unique index AK_TB_PUBPA on TB_PUBPA (PUBPA001);
create sequence SEQ_TB_PUBPA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBPA to public;
grant index  on TB_PUBPA to public;
grant update on TB_PUBPA to public; 
grant delete on TB_PUBPA to public;  
grant insert on TB_PUBPA to public; 
grant select on SEQ_TB_PUBPA to public;   