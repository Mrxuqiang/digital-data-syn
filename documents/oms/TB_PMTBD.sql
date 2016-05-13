/*
================================================================================
表结构代码:TB_PMTBD
表结构名称:单品特价单分摊表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTBD;
drop index AK_TB_PMTBD;
drop table TB_PMTBD;
create table TB_PMTBD  (
   PMTBD_ID             INTEGER                         not null,  /*折扣分摊ID        */
   PMTBD001             INTEGER                         not null,  /*单品特价单ID      */
   PMTBD002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTBD003             INTEGER,                                   /*分摊对象ID        */
   PMTBD004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTBD005             INTEGER,                                   /*供应商ID          */
   PMTBD006             INTEGER,                                   /*商品引进单ID      */
   PMTBD007             VARCHAR2(1)                     not null,  /*分摊类型          */
   PMTBD008             DATE,                                      /*开始日期          */
   PMTBD009             DATE,                                      /*结束日期          */
   PMTBD010             NUMBER(12,2),                              /*促销采购价        */
   PMTBD011             NUMBER(12,2),                              /*促销结算扣率(%)   */
   PMTBD012             NUMBER(12,2),                              /*供应商分摊比率(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTBD primary key (PMTBD_ID)
);
create unique index AK_TB_PMTBD on TB_PMTBD (PMTBD001,PMTBD002,PMTBD003,PMTBD004);
create sequence SEQ_TB_PMTBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBD to public;
grant index  on TB_PMTBD to public;
grant update on TB_PMTBD to public; 
grant delete on TB_PMTBD to public;  
grant insert on TB_PMTBD to public; 
grant select on SEQ_TB_PMTBD to public;   