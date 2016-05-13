/*
================================================================================
表结构代码:TB_PUBFG
表结构名称:资产编码流水号表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFG;
drop index AK_TB_PUBFG;
drop table TB_PUBFG;
create table TB_PUBFG  (
   PUBFG_ID             INTEGER                         not null,  /*流水码ID            */
   PUBFG001             INTEGER                         not null,  /*公司ID              */
   PUBFG002             INTEGER ,                                  /*类别ID              */
   PUBFG003             INTEGER ,                                  /*部门ID              */
   PUBFG004             INTEGER                         not null,  /*流水号              */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PUBFG primary key (PUBFG_ID)
);
create unique index AK_TB_PUBFG on TB_PUBFG (PUBFG001,PUBFG002,PUBFG003,PUBFG004,PUBFG005);
create sequence SEQ_TB_PUBFG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFG to public;
grant index  on TB_PUBFG to public;
grant update on TB_PUBFG to public; 
grant delete on TB_PUBFG to public;  
grant insert on TB_PUBFG to public; 
grant select on SEQ_TB_PUBFG to public;   
