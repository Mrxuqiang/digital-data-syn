/*
================================================================================
表结构代码:TB_PMTGE
表结构名称:累计返券单分摊范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGE;
drop index AK_TB_PMTGE;
drop table TB_PMTGE;
create table TB_PMTGE  (
   PMTGE_ID             INTEGER                         not null,  /*分摊范围ID        */
   PMTGE001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGE002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTGE003             INTEGER,                                   /*分摊对象ID        */
   PMTGE004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTGE005             INTEGER,                                   /*供应商ID          */
   PMTGE006             INTEGER,                                   /*商品引进单ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGE primary key (PMTGE_ID)
);
create unique index AK_TB_PMTGE on TB_PMTGE (PMTGE001,PMTGE002,PMTGE003);
create sequence SEQ_TB_PMTGE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGE to public;
grant index  on TB_PMTGE to public;
grant update on TB_PMTGE to public; 
grant delete on TB_PMTGE to public;  
grant insert on TB_PMTGE to public; 
grant select on SEQ_TB_PMTGE to public;   