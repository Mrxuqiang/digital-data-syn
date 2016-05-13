/*
================================================================================
表结构代码:TB_PMTGF
表结构名称:累计返券单分摊区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGF;
drop index AK_TB_PMTGF;
drop table TB_PMTGF;
create table TB_PMTGF  (
   PMTGF_ID             INTEGER                         not null,  /*分摊区段ID        */
   PMTGF001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGF002             INTEGER                         not null,  /*分摊范围ID        */
   PMTGF003             NUMBER(12,2) ,                             /*开始金额          */
   PMTGF004             NUMBER(12,2) ,                             /*结束金额          */
   PMTGF005             NUMBER(12,2) ,                             /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGF primary key (PMTGF_ID)
);
create unique index AK_TB_PMTGF on TB_PMTGF (PMTGF001,PMTGF002,PMTGF003);
create sequence SEQ_TB_PMTGF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGF to public;
grant index  on TB_PMTGF to public;
grant update on TB_PMTGF to public; 
grant delete on TB_PMTGF to public;  
grant insert on TB_PMTGF to public; 
grant select on SEQ_TB_PMTGF to public;   