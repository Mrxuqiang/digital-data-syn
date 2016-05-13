/*
================================================================================
表结构代码:TB_PMTKB
表结构名称:抽奖活动单规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTKB;
drop index AK_TB_PMTKB;
drop table TB_PMTKB;
create table TB_PMTKB  (
   PMTKB_ID             INTEGER                         not null,  /*抽奖规则ID        */
   PMTKB001             INTEGER                         not null,  /*抽奖活动单ID      */
   PMTKB002             VARCHAR2(10),                              /*抽奖等级          */
   PMTKB003             INTEGER                         not null,  /*赠品ID            */
   PMTKB004             INTEGER,                                   /*单位ID            */
   PMTKB005             NUMBER(12,2),                              /*单价              */
   PMTKB006             NUMBER(18,3),                              /*数量              */
   PMTKB007             NUMBER(12,2),                              /*金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTKB primary key (PMTKB_ID)
);
create unique index AK_TB_PMTKB on TB_PMTKB (PMTKB001,PMTKB002,PMTKB003);
create sequence SEQ_TB_PMTKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKB to public;
grant index  on TB_PMTKB to public;
grant update on TB_PMTKB to public; 
grant delete on TB_PMTKB to public;  
grant insert on TB_PMTKB to public; 
grant select on SEQ_TB_PMTKB to public;   