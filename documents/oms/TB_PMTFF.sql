/*
================================================================================
表结构代码:TB_PMTFF
表结构名称:交款返券单分摊区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFF;
drop index AK_TB_PMTFF;
drop table TB_PMTFF;
create table TB_PMTFF  (
   PMTFF_ID             INTEGER                         not null,  /*分摊区段ID        */
   PMTFF001             INTEGER                         not null,  /*交款返券单ID      */
   PMTFF002             INTEGER                         not null,  /*分摊范围ID        */
   PMTFF003             NUMBER(12,2) ,                             /*开始金额          */
   PMTFF004             NUMBER(12,2) ,                             /*结束金额          */
   PMTFF005             NUMBER(12,2) ,                             /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFF primary key (PMTFF_ID)
);
create unique index AK_TB_PMTFF on TB_PMTFF (PMTFF001,PMTFF002,PMTFF003);
create sequence SEQ_TB_PMTFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFF to public;
grant index  on TB_PMTFF to public;
grant update on TB_PMTFF to public; 
grant delete on TB_PMTFF to public;  
grant insert on TB_PMTFF to public; 
grant select on SEQ_TB_PMTFF to public;   