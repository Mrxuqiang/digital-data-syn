/*
================================================================================
表结构代码:TB_SUPAH
表结构名称:招商活动过程记录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAH;
drop index AK_TB_SUPAH;
drop table TB_SUPAH;
create table TB_SUPAH  (
   SUPAH_ID             INTEGER                         not null,  /*招商活动过程联系ID  */
   SUPAH001             INTEGER                         not null,  /*招商活动ID          */
   SUPAH002             INTEGER                         not null,  /*阶段ID              */
   SUPAH003             INTEGER                         not null,  /*步骤ID              */
   SUPAH004             DATE                            not null,  /*执行日期            */
   SUPAH005             INTEGER                         not null,  /*执行人ID            */
   SUPAH006             VARCHAR2(255)                   not null,  /*执行内容            */
   SUPAH007             VARCHAR2(255)                   not null,  /*执行结果            */
   SUPAH008             VARCHAR2(255),                             /*结果总结            */
   SUPAH009             VARCHAR2(255),                             /*下期行动内容        */
   SUPAH010             VARCHAR2(255),                             /*下期行动目标        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAH primary key (SUPAH_ID)
);
create unique index AK_TB_SUPAH on TB_SUPAH (SUPAH_ID,SUPAH001,SUPAH002,SUPAH003,SUPAH004);
create sequence SEQ_TB_SUPAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAH to public;
grant index  on TB_SUPAH to public;
grant update on TB_SUPAH to public; 
grant delete on TB_SUPAH to public;  
grant insert on TB_SUPAH to public; 
grant select on SEQ_TB_SUPAH to public;   