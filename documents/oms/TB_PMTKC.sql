/*
================================================================================
表结构代码:TB_PMTKC
表结构名称:抽奖活动单分摊范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTKC;
drop index AK_TB_PMTKC;
drop table TB_PMTKC;
create table TB_PMTKC  (
   PMTKC_ID             INTEGER                         not null,  /*分摊范围ID        */
   PMTKC001             INTEGER                         not null,  /*抽奖活动单ID      */
   PMTKC002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTKC003             INTEGER,                                   /*分摊对象ID        */
   PMTKC004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTKC primary key (PMTKC_ID)
);
create unique index AK_TB_PMTKC on TB_PMTKC (PMTKC001,PMTKC002,PMTKC003);
create sequence SEQ_TB_PMTKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKC to public;
grant index  on TB_PMTKC to public;
grant update on TB_PMTKC to public; 
grant delete on TB_PMTKC to public;  
grant insert on TB_PMTKC to public; 
grant select on SEQ_TB_PMTKC to public;   