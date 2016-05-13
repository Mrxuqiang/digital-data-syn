/*
================================================================================
表结构代码:TB_PMTVE
表结构名称:满减促销单分摊表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTVE;
drop index AK_TB_PMTVE;
drop table TB_PMTVE;
create table TB_PMTVE  (
   PMTVE_ID             INTEGER                         not null,  /*分摊ID        */
   PMTVE001             INTEGER                         not null,  /*满减促销单ID      */
   PMTVE002             INTEGER,                                   /*供应商ID          */
   PMTVE003             VARCHAR2(1)                             ,  /*对象类型      */
   PMTVE004             INTEGER,                                   /*对象ID        */
   PMTVE005             NUMBER(12,2),                              /*供应商分摊比率(%) */
   PMTVE006             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTVE primary key (PMTVE_ID)
);
create unique index AK_TB_PMTVE on TB_PMTVE (PMTVE001,PMTVE002,PMTVE003);
create sequence SEQ_TB_PMTVE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTVE to public;
grant index  on TB_PMTVE to public;
grant update on TB_PMTVE to public; 
grant delete on TB_PMTVE to public;  
grant insert on TB_PMTVE to public; 
grant select on SEQ_TB_PMTVE to public;   