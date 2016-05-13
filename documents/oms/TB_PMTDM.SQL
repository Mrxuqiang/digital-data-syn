/*
================================================================================
表结构代码:TB_PMTDM
表结构名称:单品买赠单分摊规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDM;
drop index AK_TB_PMTDM;
drop table TB_PMTDM;
create table TB_PMTDM  (
   PMTDM_ID             INTEGER                         not null,  /*买赠分摊ID        */
   PMTDM001             INTEGER                         not null,  /*买赠单ID      */
   PMTDM002             INTEGER                         not null,  /*供应商ID        */
   PMTDM003             VARCHAR2(1) ,                             /*分摊对象类型          */
   PMTDM004             INTEGER ,	                             /*分摊对象ID       */
   PMTDM005             NUMBER(12,2) ,                             /*供应商分摊比例(%) */
   PMTDM006            NUMBER(5)                       not null,  /*分摊优先顺序 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDM primary key (PMTDM_ID)
);
create unique index AK_TB_PMTDM on TB_PMTDM (PMTDM001,PMTDM002,PMTDM003);
create sequence SEQ_TB_PMTDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDM to public;
grant index  on TB_PMTDM to public;
grant update on TB_PMTDM to public; 
grant delete on TB_PMTDM to public;  
grant insert on TB_PMTDM to public; 
grant select on SEQ_TB_PMTDM to public;   