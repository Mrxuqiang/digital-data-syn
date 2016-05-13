/*
================================================================================
表结构代码:TB_SUPAL
表结构名称:商户引入过程主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAL;
drop index AK_TB_SUPAL;
drop table TB_SUPAL;
create table TB_SUPAL  (
   SUPAL_ID             INTEGER                         not null,  /*登记过程ID          */
   SUPAL001             INTEGER                         not null,  /*登记ID              */
   SUPAL002             INTEGER                         not null,  /*阶段ID              */
   SUPAL003             INTEGER                         not null,  /*步骤ID              */
   SUPAL004             DATE                            not null,  /*完成日期            */
   SUPAL005             VARCHAR2(1),                               /*完成状况            */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAL primary key (SUPAL_ID)
);
create unique index AK_TB_SUPAL on TB_SUPAL (SUPAL001,SUPAL002,SUPAL003);
create sequence SEQ_TB_SUPAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAL to public;
grant index  on TB_SUPAL to public;
grant update on TB_SUPAL to public; 
grant delete on TB_SUPAL to public;  
grant insert on TB_SUPAL to public; 
grant select on SEQ_TB_SUPAL to public;   