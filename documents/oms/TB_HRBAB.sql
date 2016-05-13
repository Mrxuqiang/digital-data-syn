/*
================================================================================
表结构代码:TB_HRBAB
表结构名称:所得税率表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAB;
drop index AK_TB_HRBAB;
drop table TB_HRBAB;
create table TB_HRBAB  (
   HRBAB_ID             INTEGER                         not null,  /*所得税率表ID       */
   HRBAB001             VARCHAR2(8)                     not null,  /*编号               */
   HRBAB002             VARCHAR2(30)                    not null,  /*名称               */
   HRBAB003             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAB primary key (HRBAB_ID)
);
create unique index AK_TB_HRAAB on TB_HRBAB (HRBAB001);
create sequence SEQ_TB_HRBAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAB to public;
grant index  on TB_HRBAB to public;
grant update on TB_HRBAB to public; 
grant delete on TB_HRBAB to public;  
grant insert on TB_HRBAB to public; 
grant select on SEQ_TB_HRBAB to public;   