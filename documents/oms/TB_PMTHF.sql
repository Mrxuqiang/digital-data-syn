/*
================================================================================
表结构代码:TB_PMTHF
表结构名称:累计赠品单分摊区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHF;
drop index AK_TB_PMTHF;
drop table TB_PMTHF;
create table TB_PMTHF  (
   PMTHF_ID             INTEGER                         not null,  /*分摊区段ID        */
   PMTHF001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHF002             INTEGER                         not null,  /*分摊范围ID        */
   PMTHF003             NUMBER(12,2) ,                             /*开始金额          */
   PMTHF004             NUMBER(12,2) ,                             /*结束金额          */
   PMTHF005             NUMBER(12,2) ,                             /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHF primary key (PMTHF_ID)
);
create unique index AK_TB_PMTHF on TB_PMTHF (PMTHF001,PMTHF002,PMTHF003);
create sequence SEQ_TB_PMTHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHF to public;
grant index  on TB_PMTHF to public;
grant update on TB_PMTHF to public; 
grant delete on TB_PMTHF to public;  
grant insert on TB_PMTHF to public; 
grant select on SEQ_TB_PMTHF to public;   