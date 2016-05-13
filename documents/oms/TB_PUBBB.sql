/*
================================================================================
表结构代码:TB_PUBBB
表结构名称:国家表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBBB;
drop index AK_TB_PUBBB;
drop table TB_PUBBB;
create table TB_PUBBB  (
   PUBBB_ID             INTEGER                         not null,  /*国家ID             */
   PUBBB001             VARCHAR2(4)                     not null,  /*国家代码           */
   PUBBB002             VARCHAR2(20)                    not null,  /*国家名称           */
   PUBBB003             INTEGER                         not null,  /*区域ID             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBBB primary key (PUBBB_ID)
);
create unique index AK_TB_PUBBB on TB_PUBBB (PUBBB001);
create sequence SEQ_TB_PUBBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBB to public;
grant index  on TB_PUBBB to public;
grant update on TB_PUBBB to public; 
grant delete on TB_PUBBB to public;  
grant insert on TB_PUBBB to public; 
grant select on SEQ_TB_PUBBB to public;   