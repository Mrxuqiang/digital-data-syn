/*
================================================================================
表结构代码:TB_PUBND
表结构名称:结算中心主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBND;
drop index AK_TB_PUBND;
drop table TB_PUBND;
create table TB_PUBND  (
   PUBND_ID             INTEGER                         not null,   /*结算中心主ID            */
   PUBND001             VARCHAR2(20)                    not null,   /*结算中心编码            */
   PUBND002             VARCHAR2(200)                   not null,   /*结算中心名称            */
   PUBND003             VARCHAR2(20),                               /*助记码                  */
   PUBND004             INTEGER                         not null ,  /*对应公司ID              */   
   PUBND005             INTEGER ,                                   /*上级结算中心ID          */
   PUBND006             VARCHAR2(1),                                /*封存标志                */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门            */                               
   CREATE_DATE          DATE,                                       /*建立日期                */
   MODIFIER             VARCHAR2(12),                               /*修改人员                */
   MODI_DATE            DATE,                                       /*修改日期                */
   FLAG                 NUMBER(1),                                  /*资料状态                */
   constraint PK_TB_PUBND primary key (PUBND_ID)
);
create unique index AK_TB_PUBND on TB_PUBND (PUBND001);
create sequence SEQ_TB_PUBND minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBND to public;
grant index  on TB_PUBND to public;
grant update on TB_PUBND to public; 
grant delete on TB_PUBND to public;  
grant insert on TB_PUBND to public; 
grant select on SEQ_TB_PUBND to public;   