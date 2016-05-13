/*
================================================================================
表结构代码:TB_PMTDE
表结构名称:单品买赠单分摊区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDE;
drop index AK_TB_PMTDE;
drop table TB_PMTDE;
create table TB_PMTDE  (
   PMTDE_ID             INTEGER                         not null,  /*分摊区段ID        */
   PMTDE001             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDE002             INTEGER                         not null,  /*分摊范围ID        */
   PMTDE003             NUMBER(12,2) ,                             /*开始金额          */
   PMTDE004             NUMBER(12,2) ,                             /*结束金额          */
   PMTDE005             NUMBER(12,2) ,                             /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDE primary key (PMTDE_ID)
);
create unique index AK_TB_PMTDE on TB_PMTDE (PMTDE001,PMTDE002,PMTDE003);
create sequence SEQ_TB_PMTDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDE to public;
grant index  on TB_PMTDE to public;
grant update on TB_PMTDE to public; 
grant delete on TB_PMTDE to public;  
grant insert on TB_PMTDE to public; 
grant select on SEQ_TB_PMTDE to public;   