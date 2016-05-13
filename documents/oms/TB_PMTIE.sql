/*
================================================================================
表结构代码:TB_PMTIE
表结构名称:交款收券单分摊范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTIE;
drop index AK_TB_PMTIE;
drop table TB_PMTIE;
create table TB_PMTIE  (
   PMTIE_ID             INTEGER                         not null,  /*分摊范围ID        */
   PMTIE001             INTEGER                         not null,  /*交款收券单ID      */
   PMTIE002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTIE003             INTEGER,                                   /*分摊对象ID        */
   PMTIE004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTIE005             INTEGER,                                   /*供应商ID          */
   PMTIE006             INTEGER,                                   /*商品引进单ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTIE primary key (PMTIE_ID)
);
create unique index AK_TB_PMTIE on TB_PMTIE (PMTIE001,PMTIE002,PMTIE003);
create sequence SEQ_TB_PMTIE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIE to public;
grant index  on TB_PMTIE to public;
grant update on TB_PMTIE to public; 
grant delete on TB_PMTIE to public;  
grant insert on TB_PMTIE to public; 
grant select on SEQ_TB_PMTIE to public;   