/*
================================================================================
表结构代码:TB_SUPAG
表结构名称:招商活动过程主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAG;
drop index AK_TB_SUPAG;
drop table TB_SUPAG;
create table TB_SUPAG  (
   SUPAG_ID             INTEGER                         not null,  /*招商活动过程ID      */
   SUPAG001             INTEGER                         not null,  /*招商活动ID          */
   SUPAG002             INTEGER                         not null,  /*阶段ID              */
   SUPAG003             INTEGER                         not null,  /*步骤ID              */
   SUPAG004             DATE                            not null,  /*完成日期            */
   SUPAG005             VARCHAR2(1)                     not null,  /*完成状况0.触发 1.跳过  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAG primary key (SUPAG_ID)
);
create unique index AK_TB_SUPAG on TB_SUPAG (SUPAG001,SUPAG002,SUPAG003);
create sequence SEQ_TB_SUPAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAG to public;
grant index  on TB_SUPAG to public;
grant update on TB_SUPAG to public; 
grant delete on TB_SUPAG to public;  
grant insert on TB_SUPAG to public; 
grant select on SEQ_TB_SUPAG to public;   