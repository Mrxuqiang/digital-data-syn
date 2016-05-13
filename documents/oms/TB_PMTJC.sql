/*
================================================================================
表结构代码:TB_PMTJC
表结构名称:单品组合单分摊范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTJC;
drop index AK_TB_PMTJC;
drop table TB_PMTJC;
create table TB_PMTJC  (
   PMTJC_ID             INTEGER                         not null,  /*分摊范围ID        */
   PMTJC001             INTEGER                         not null,  /*单品组合单ID      */
   PMTJC002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTJC003             INTEGER,                                   /*分摊对象ID        */
   PMTJC004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTJC005             INTEGER,                                   /*供应商ID          */
   PMTJC006             INTEGER,                                   /*商品引进单ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTJC primary key (PMTJC_ID)
);
create unique index AK_TB_PMTJC on TB_PMTJC (PMTJC001,PMTJC002,PMTJC003);
create sequence SEQ_TB_PMTJC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJC to public;
grant index  on TB_PMTJC to public;
grant update on TB_PMTJC to public; 
grant delete on TB_PMTJC to public;  
grant insert on TB_PMTJC to public; 
grant select on SEQ_TB_PMTJC to public;   