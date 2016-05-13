/*
================================================================================
表结构代码:TB_PMTEF
表结构名称:交款折扣单分摊区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTEF;
drop index AK_TB_PMTEF;
drop table TB_PMTEF;
create table TB_PMTEF  (
   PMTEF_ID             INTEGER                         not null,  /*分摊区段ID        */
   PMTEF001             INTEGER                         not null,  /*交款折扣单ID      */
   PMTEF002             INTEGER                         not null,  /*分摊范围ID        */
   PMTEF003             NUMBER(12,2) ,                             /*开始金额          */
   PMTEF004             NUMBER(12,2) ,                             /*结束金额          */
   PMTEF005             NUMBER(12,2) ,                             /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTEF primary key (PMTEF_ID)
);
create unique index AK_TB_PMTEF on TB_PMTEF (PMTEF001,PMTEF002,PMTEF003);
create sequence SEQ_TB_PMTEF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEF to public;
grant index  on TB_PMTEF to public;
grant update on TB_PMTEF to public; 
grant delete on TB_PMTEF to public;  
grant insert on TB_PMTEF to public; 
grant select on SEQ_TB_PMTEF to public;   