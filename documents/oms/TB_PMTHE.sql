/*
================================================================================
表结构代码:TB_PMTHE
表结构名称:累计赠品单分摊范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHE;
drop index AK_TB_PMTHE;
drop table TB_PMTHE;
create table TB_PMTHE  (
   PMTHE_ID             INTEGER                         not null,  /*分摊范围ID        */
   PMTHE001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHE002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTHE003             INTEGER,                                   /*分摊对象ID        */
   PMTHE004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTHE005             INTEGER,                                   /*供应商ID          */
   PMTHE006             INTEGER,                                   /*商品引进单ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHE primary key (PMTHE_ID)
);
create unique index AK_TB_PMTHE on TB_PMTHE (PMTHE001,PMTHE002,PMTHE003);
create sequence SEQ_TB_PMTHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHE to public;
grant index  on TB_PMTHE to public;
grant update on TB_PMTHE to public; 
grant delete on TB_PMTHE to public;  
grant insert on TB_PMTHE to public; 
grant select on SEQ_TB_PMTHE to public;   