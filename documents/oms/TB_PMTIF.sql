/*
================================================================================
表结构代码:TB_PMTIF
表结构名称:交款收券单分摊区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTIF;
drop index AK_TB_PMTIF;
drop table TB_PMTIF;
create table TB_PMTIF  (
   PMTIF_ID             INTEGER                         not null,  /*分摊区段ID        */
   PMTIF001             INTEGER                         not null,  /*交款收券单ID      */
   PMTIF002             INTEGER                         not null,  /*分摊范围ID        */
   PMTIF003             NUMBER(12,2) ,                             /*开始金额          */
   PMTIF004             NUMBER(12,2) ,                             /*结束金额          */
   PMTIF005             NUMBER(12,2) ,                             /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTIF primary key (PMTIF_ID)
);
create unique index AK_TB_PMTIF on TB_PMTIF (PMTIF001,PMTIF002,PMTIF003);
create sequence SEQ_TB_PMTIF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIF to public;
grant index  on TB_PMTIF to public;
grant update on TB_PMTIF to public; 
grant delete on TB_PMTIF to public;  
grant insert on TB_PMTIF to public; 
grant select on SEQ_TB_PMTIF to public;   