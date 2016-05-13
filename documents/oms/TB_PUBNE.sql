/*
================================================================================
表结构代码:TB_PUBNE
表结构名称:结算中心子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNE;
drop index AK_TB_PUBNE;
drop table TB_PUBNE;
create table TB_PUBNE  (
   PUBNE_ID             INTEGER                         not null,   /*结算中心子ID            */
   PUBNE001             INTEGER                         not null,   /*结算中心主ID            */
   PUBNE002             INTEGER,                                    /*结算单位编码ID            */
   PUBNE003             VARCHAR2(200),                              /*结算单位名称            */
   PUBNE004             VARCHAR2(100),                              /*结算单位简称            */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门            */                               
   CREATE_DATE          DATE,                                       /*建立日期                */
   MODIFIER             VARCHAR2(12),                               /*修改人员                */
   MODI_DATE            DATE,                                       /*修改日期                */
   FLAG                 NUMBER(1),                                  /*资料状态                */
   constraint PK_TB_PUBNE primary key (PUBNE_ID)
);
create unique index AK_TB_PUBNE on TB_PUBNE (PUBNE001);
create sequence SEQ_TB_PUBNE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNE to public;
grant index  on TB_PUBNE to public;
grant update on TB_PUBNE to public; 
grant delete on TB_PUBNE to public;  
grant insert on TB_PUBNE to public; 
grant select on SEQ_TB_PUBNE to public;   