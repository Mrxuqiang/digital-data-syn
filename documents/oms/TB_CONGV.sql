/*
================================================================================
表结构代码:TB_CONGV
表结构名称:评审活动过程记录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONGV;
drop index AK_TB_CONGV;
drop table TB_CONGV;
create table TB_CONGV  (
   CONGV_ID             INTEGER                         not null,  /*评审活动过程联系ID  */
   CONGV001             INTEGER                         not null,  /*评审活动ID          */
   CONGV002             INTEGER                         not null,  /*阶段ID              */
   CONGV003             INTEGER                         not null,  /*步骤ID              */
   CONGV004             DATE                            not null,  /*执行日期            */
   CONGV005             INTEGER                         not null,  /*执行人ID            */
   CONGV006             VARCHAR2(255)                   not null,  /*执行内容            */
   CONGV007             VARCHAR2(255)                   not null,  /*执行结果            */
   CONGV008             VARCHAR2(255),                             /*结果总结            */
   CONGV009             VARCHAR2(255),                             /*下期行动内容        */
   CONGV010             VARCHAR2(255),                             /*下期行动目标        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONGV primary key (CONGV_ID)
);
create unique index AK_TB_CONGV on TB_CONGV (CONGV001,CONGV002,CONGV003,CONGV004);
create sequence SEQ_TB_CONGV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONGV to public;
grant index  on TB_CONGV to public;
grant update on TB_CONGV to public; 
grant delete on TB_CONGV to public;  
grant insert on TB_CONGV to public; 
grant select on SEQ_TB_CONGV to public;   