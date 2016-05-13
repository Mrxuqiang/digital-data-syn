/*
================================================================================
表结构代码:TB_PMTKF
表结构名称:抽奖活动单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTKF;
drop index AK_TB_PMTKF;
drop table TB_PMTKF;
create table TB_PMTKF  (
   PMTKF_ID             INTEGER                         not null,  /*生效范围ID        */
   PMTKF001             INTEGER                         not null,  /*抽奖活动单ID      */
   PMTKF002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTKF primary key (PMTKF_ID)
);
create unique index AK_TB_PMTKF on TB_PMTKF (PMTKF001,PMTKF002);
create sequence SEQ_TB_PMTKF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKF to public;
grant index  on TB_PMTKF to public;
grant update on TB_PMTKF to public; 
grant delete on TB_PMTKF to public;  
grant insert on TB_PMTKF to public; 
grant select on SEQ_TB_PMTKF to public;   