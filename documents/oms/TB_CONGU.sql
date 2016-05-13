/*
================================================================================
表结构代码:TB_CONGU
表结构名称:评审活动主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONGU;
drop index AK_TB_CONGU;
drop table TB_CONGU;
create table TB_CONGU  (
   CONGU_ID             INTEGER                         not null,  /*评审活动过程ID      */
   CONGU001             INTEGER                         not null,  /*评审活动ID          */
   CONGU002             INTEGER                         not null,  /*阶段ID              */
   CONGU003             INTEGER                         not null,  /*步骤ID              */
   CONGU004             DATE                            not null,  /*完成日期            */
   CONGU005             VARCHAR2(1)                     not null,  /*完成状况0.触发 1.跳过  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONGU primary key (CONGU_ID)
);
create unique index AK_TB_CONGU on TB_CONGU (CONGU001,CONGU002,CONGU003);
create sequence SEQ_TB_CONGU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONGU to public;
grant index  on TB_CONGU to public;
grant update on TB_CONGU to public; 
grant delete on TB_CONGU to public;  
grant insert on TB_CONGU to public; 
grant select on SEQ_TB_CONGU to public;   