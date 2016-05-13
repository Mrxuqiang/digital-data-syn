/*
================================================================================
表结构代码:TB_PUBBA
表结构名称:区域表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBBA;
drop index AK_TB_PUBBA;
drop table TB_PUBBA;
create table TB_PUBBA  (
   PUBBA_ID             INTEGER                         not null,  /*区域ID             */
   PUBBA001             VARCHAR2(4)                     not null,  /*区域代码           */
   PUBBA002             VARCHAR2(20)                    not null,  /*区域名称           */
   PUBBA003             VARCHAR2(100),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBBA primary key (PUBBA_ID)
);
create unique index AK_TB_PUBBA on TB_PUBBA (PUBBA001);
create sequence SEQ_TB_PUBBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBA to public;
grant index  on TB_PUBBA to public;
grant update on TB_PUBBA to public; 
grant delete on TB_PUBBA to public;  
grant insert on TB_PUBBA to public; 
grant select on SEQ_TB_PUBBA to public;   