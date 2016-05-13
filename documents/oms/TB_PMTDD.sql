/*
================================================================================
表结构代码:TB_PMTDD
表结构名称:单品买赠单分摊范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDD;
drop index AK_TB_PMTDD;
drop table TB_PMTDD;
create table TB_PMTDD  (
   PMTDD_ID             INTEGER                         not null,  /*分摊范围ID        */
   PMTDD001             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDD002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTDD003             INTEGER,                                   /*分摊对象ID        */
   PMTDD004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTDD005             INTEGER,                                   /*供应商ID          */
   PMTDD006             INTEGER,                                   /*商品引进单ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDD primary key (PMTDD_ID)
);
create unique index AK_TB_PMTDD on TB_PMTDD (PMTDD001,PMTDD002,PMTDD003);
create sequence SEQ_TB_PMTDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDD to public;
grant index  on TB_PMTDD to public;
grant update on TB_PMTDD to public; 
grant delete on TB_PMTDD to public;  
grant insert on TB_PMTDD to public; 
grant select on SEQ_TB_PMTDD to public;   