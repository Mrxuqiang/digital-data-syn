/*
================================================================================
表结构代码:TB_PMTCD
表结构名称:单品折扣单分摊表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCD;
drop index AK_TB_PMTCD;
drop table TB_PMTCD;
create table TB_PMTCD  (
   PMTCD_ID             INTEGER                         not null,  /*折扣分摊ID        */
   PMTCD001             INTEGER                         not null,  /*单品折扣单ID      */
   PMTCD002             VARCHAR2(1)                     not null,  /*分摊对象类型      */
   PMTCD003             INTEGER,                                   /*分摊对象ID        */
   PMTCD004             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   PMTCD005             INTEGER,                                   /*供应商ID          */
   PMTCD006             INTEGER,                                   /*商品引进单ID      */
   PMTCD007             VARCHAR2(1)                     not null,  /*分摊类型          */
   PMTCD008             DATE,                                      /*开始日期          */
   PMTCD009             DATE,                                      /*结束日期          */
   PMTCD010             NUMBER(12,2),                              /*促销采购价        */
   PMTCD011             NUMBER(12,2),                              /*促销结算扣率(%)   */
   PMTCD012             NUMBER(12,2),                              /*供应商分摊比率(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCD primary key (PMTCD_ID)
);
create unique index AK_TB_PMTCD on TB_PMTCD (PMTCD001,PMTCD002,PMTCD003);
create sequence SEQ_TB_PMTCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCD to public;
grant index  on TB_PMTCD to public;
grant update on TB_PMTCD to public; 
grant delete on TB_PMTCD to public;  
grant insert on TB_PMTCD to public; 
grant select on SEQ_TB_PMTCD to public;   