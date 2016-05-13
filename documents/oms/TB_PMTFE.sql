/*
================================================================================
表结构代码:TB_PMTFE
表结构名称:交款返券单分摊范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFE;
drop index AK_TB_PMTFE;
drop table TB_PMTFE;
create table TB_PMTFE  (
   PMTFE_ID             INTEGER                         not null,  /*分摊范围ID        */
   PMTFE001             INTEGER                         not null,  /*交款返券单ID      */
   PMTFE002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTFE003             INTEGER,                                   /*分摊对象ID        */
   PMTFE004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTFE005             INTEGER,                                   /*供应商ID          */
   PMTFE006             INTEGER,                                   /*商品引进单ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFE primary key (PMTFE_ID)
);
create unique index AK_TB_PMTFE on TB_PMTFE (PMTFE001,PMTFE002,PMTFE003);
create sequence SEQ_TB_PMTFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFE to public;
grant index  on TB_PMTFE to public;
grant update on TB_PMTFE to public; 
grant delete on TB_PMTFE to public;  
grant insert on TB_PMTFE to public; 
grant select on SEQ_TB_PMTFE to public;   