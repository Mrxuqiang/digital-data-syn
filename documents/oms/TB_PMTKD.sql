/*
================================================================================
表结构代码:TB_PMTKD
表结构名称:抽奖活动单分摊区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTKD;
drop index AK_TB_PMTKD;
drop table TB_PMTKD;
create table TB_PMTKD  (
   PMTKD_ID             INTEGER                         not null,  /*分摊区段ID        */
   PMTKD001             INTEGER                         not null,  /*抽奖活动单ID      */
   PMTKD002             INTEGER                         not null,  /*分摊范围ID        */
   PMTKD003             NUMBER(12,2) ,                             /*开始金额          */
   PMTKD004             NUMBER(12,2) ,                             /*结束金额          */
   PMTKD005             NUMBER(12,2) ,                             /*分摊比例(%)       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTKD primary key (PMTKD_ID)
);
create unique index AK_TB_PMTKD on TB_PMTKD (PMTKD001,PMTKD002,PMTKD003);
create sequence SEQ_TB_PMTKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKD to public;
grant index  on TB_PMTKD to public;
grant update on TB_PMTKD to public; 
grant delete on TB_PMTKD to public;  
grant insert on TB_PMTKD to public; 
grant select on SEQ_TB_PMTKD to public;   