/*
================================================================================
表结构代码:TB_PUBFF
表结构名称:调整凭证/抵消分录流水号记录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFF;
drop index AK_TB_PUBFF;
drop table TB_PUBFF;
create table TB_PUBFF  (
   PUBFF_ID             INTEGER                         not null,  /*流水码ID            */
   PUBFF001             INTEGER                         not null,  /*公司ID              */
   PUBFF002             DATE                            not null,  /*会计期间            */
   PUBFF003             VARCHAR2(1)                     not null,  /*类型                */
   PUBFF004             INTEGER                         not null,  /*任务ID              */
   PUBFF005             INTEGER                         not null,  /*流水号              */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PUBFF primary key (PUBFF_ID)
);
create unique index AK_TB_PUBFF on TB_PUBFF (PUBFF001,PUBFF002,PUBFF003,PUBFF004,PUBFF005);
create sequence SEQ_TB_PUBFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFF to public;
grant index  on TB_PUBFF to public;
grant update on TB_PUBFF to public; 
grant delete on TB_PUBFF to public;  
grant insert on TB_PUBFF to public; 
grant select on SEQ_TB_PUBFF to public;   
