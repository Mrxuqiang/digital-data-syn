/*
================================================================================
表结构代码:TB_BILIE
表结构名称:成本代销对账单销售/销退库明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIE;
drop index AK_TB_BILIE;
drop table TB_BILIE;
create table TB_BILIE  (
   BILIE_ID             INTEGER                      not null,        /*成本代销采购销售/销退单据明细ID*/ 
   BILIE001             INTEGER                      not null,        /*对账单ID                   */ 
   BILIE002             INTEGER                      not null,        /*入库/退货明细ID            */ 
   BILIE003             VARCHAR2(30)                 not null,        /*单据号码                   */ 
   BILIE004             INTEGER                      not null,        /*来源单据明细ID             */ 
   BILIE005             INTEGER                      not null,        /*商品编码                   */ 
   BILIE006             INTEGER,                                      /* 维度1                     */  
   BILIE007             INTEGER,                                      /* 维度2                     */  
   BILIE008             INTEGER,                                      /* 维度3                     */     
   BILIE009             INTEGER,                                      /* 维度4                     */  
   BILIE010             INTEGER,                                      /* 维度5                     */  
   BILIE011             INTEGER                      not null,        /*仓库                       */ 
   BILIE012             INTEGER                      not null,        /*仓库                       */ 
   BILIE013             INTEGER                      not null,        /*入库单位                   */ 
   BILIE014             NUMBER(12,2)                 not null,        /*单位换算率                 */ 
   BILIE015             NUMBER(18,3)                 not null,        /*销售量                     */ 
   BILIE016             NUMBER(12,2)                 not null,        /*税前单价                   */ 
   BILIE017             NUMBER(12,2)                 not null,        /*含税单价                   */ 
   BILIE018             INTEGER                      not null,        /*税种                       */ 
   BILIE019             NUMBER(12,2)                 not null,        /*税率                       */ 
   BILIE020             NUMBER(12,2)                 not null,        /*税前金额                   */ 
   BILIE021             NUMBER(12,2)                 not null,        /*含税金额                   */ 
   BILIE022             NUMBER(18,3)                 not null,        /*已结数量                   */  
   CREATE_USER          VARCHAR2(12),                                 /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门        */                               
   CREATE_DATE          DATE,                                         /*建立日期            */
   MODIFIER             VARCHAR2(12),                                 /*修改人员            */
   MODI_DATE            DATE,                                         /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILIE primary key (BILIE_ID)
);
create unique index AK_TB_BILIE on TB_BILIE (BILIE003,BILIE005);
create sequence SEQ_TB_BILIE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIE to public;
grant index  on TB_BILIE to public;
grant update on TB_BILIE to public; 
grant delete on TB_BILIE to public;  
grant insert on TB_BILIE to public; 
grant select on SEQ_TB_BILIE to public;   