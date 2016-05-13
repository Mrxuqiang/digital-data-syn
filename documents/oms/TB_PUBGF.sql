/*
================================================================================
表结构代码:TB_PUBGF
表结构名称:税种表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGF;
drop index AK_TB_PUBGF;
drop table TB_PUBGF;
create table TB_PUBGF  (
   PUBGF_ID             INTEGER                         not null,  /*税种ID             */
   PUBGF001             VARCHAR2(4)                     not null,  /*税种代码           */
   PUBGF002             VARCHAR2(30)                    not null,  /*税种名称           */
   PUBGF003             VARCHAR2(2)                     not null,  /*发票种类           */
   PUBGF004             VARCHAR2(1)                     not null,  /*性质               */
   PUBGF005             NUMBER(12,2)                    not null,  /*税率               */
   PUBGF006             VARCHAR2(1),                               /*含税               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGF primary key (PUBGF_ID)
);
create unique index AK_TB_PUBGF on TB_PUBGF (PUBGF001);
create sequence SEQ_TB_PUBGF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGF to public;
grant index  on TB_PUBGF to public;
grant update on TB_PUBGF to public; 
grant delete on TB_PUBGF to public;  
grant insert on TB_PUBGF to public; 
grant select on SEQ_TB_PUBGF to public;   