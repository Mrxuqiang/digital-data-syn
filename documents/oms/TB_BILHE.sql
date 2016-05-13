/*
================================================================================
表结构代码:TB_BILHE
表结构名称:经销对账单入/退库明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILHE;
drop index AK_TB_BILHE;
drop table TB_BILHE;
create table TB_BILHE  (
   BILHE_ID             INTEGER                      not null,        /*经销采购入库/退库单据明细ID*/ 
   BILHE001             INTEGER                      not null,        /*对账单ID                   */ 
   BILHE002             INTEGER                      not null,        /*入库/退货明细ID            */ 
   BILHE003             VARCHAR2(30)                 not null,        /*单据号码                   */ 
   BILHE004             INTEGER                      not null,        /*来源单据明细ID             */ 
   BILHE005             INTEGER                      not null,        /*商品编码                   */ 
   BILHE006             INTEGER,                                      /* 维度1                     */  
   BILHE007             INTEGER,                                      /* 维度2                     */  
   BILHE008             INTEGER,                                      /* 维度3                     */     
   BILHE009             INTEGER,                                      /* 维度4                     */  
   BILHE010             INTEGER,                                      /* 维度5                     */  
   BILHE011             INTEGER                      not null,        /*仓库                       */ 
   BILHE012             INTEGER                      not null,        /*仓库                       */ 
   BILHE013             INTEGER                      not null,        /*入库单位                   */ 
   BILHE014             NUMBER(12,2)                 not null,        /*单位换算率                 */ 
   BILHE015             NUMBER(18,3)                 not null,        /*入库量                     */ 
   BILHE016             NUMBER(18,3)                 not null,        /*折扣率                     */ 
   BILHE017             NUMBER(18,3)                 not null,        /*搭赠量                     */ 
   BILHE018             NUMBER(12,2)                 not null,        /*税前单价                   */ 
   BILHE019             NUMBER(12,2)                 not null,        /*含税单价                   */ 
   BILHE020             INTEGER                      not null,        /*税种                       */ 
   BILHE021             NUMBER(12,2)                 not null,        /*税率                       */ 
   BILHE022             NUMBER(12,2)                 not null,        /*税前金额                   */ 
   BILHE023             NUMBER(12,2)                 not null,        /*含税金额                   */ 
   CREATE_USER          VARCHAR2(12),                                 /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门        */                               
   CREATE_DATE          DATE,                                         /*建立日期            */
   MODIFIER             VARCHAR2(12),                                 /*修改人员            */
   MODI_DATE            DATE,                                         /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILHE primary key (BILHE_ID)
);
create unique index AK_TB_BILHE on TB_BILHE (BILHE003,BILHE005);
create sequence SEQ_TB_BILHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHE to public;
grant index  on TB_BILHE to public;
grant update on TB_BILHE to public; 
grant delete on TB_BILHE to public;  
grant insert on TB_BILHE to public; 
grant select on SEQ_TB_BILHE to public;   