/*
================================================================================
表结构代码:TB_PMTHM
表结构名称:满赠促销单分摊表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHM;
drop index AK_TB_PMTHM;
drop table TB_PMTHM;
create table TB_PMTHM  (
   PMTHM_ID             INTEGER                         not null,  /*分摊ID        */
   PMTHM001             INTEGER                         not null,  /*满赠促销单ID      */
   PMTHM002             INTEGER,                                   /*供应商ID          */
   PMTHM003             VARCHAR2(1)                             ,  /*对象类型      */
   PMTHM004             INTEGER,                                   /*对象ID        */
   PMTHM005             NUMBER(12,2),                              /*供应商分摊比率(%) */
   PMTHM006             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHM primary key (PMTHM_ID)
);
create unique index AK_TB_PMTHM on TB_PMTHM (PMTHM001,PMTHM002,PMTHM003);
create sequence SEQ_TB_PMTHM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHM to public;
grant index  on TB_PMTHM to public;
grant update on TB_PMTHM to public; 
grant delete on TB_PMTHM to public;  
grant insert on TB_PMTHM to public; 
grant select on SEQ_TB_PMTHM to public;   