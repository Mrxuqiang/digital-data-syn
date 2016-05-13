/*
================================================================================
表结构代码:TB_BILJE
表结构名称:扣率/联营对账单销售/销退库明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJE;
drop index AK_TB_BILJE;
drop table TB_BILJE;
create table TB_BILJE  (
   BILJE_ID             INTEGER                      not null,        /*扣率/联营采购销售/销退单据明细ID*/ 
   BILJE001             INTEGER                      not null,        /*对账单ID                   */ 
   BILJE002             INTEGER                      not null,        /*销售/销退明细ID            */ 
   BILJE003             INTEGER                      not null,        /*单据号码ID                 */ 
   BILJE004             INTEGER                      not null,        /*来源单据明细ID             */ 
   BILJE005             INTEGER                      not null,        /*商品编码                   */ 
   BILJE006             INTEGER,                                      /* 维度1                     */  
   BILJE007             INTEGER,                                      /* 维度2                     */  
   BILJE008             INTEGER,                                      /* 维度3                     */     
   BILJE009             INTEGER,                                      /* 维度4                     */  
   BILJE010             INTEGER,                                      /* 维度5                     */  
   BILJE011             INTEGER                      not null,        /*仓库                       */ 
   BILJE012             INTEGER                      not null,        /*仓库                       */ 
   BILJE013             INTEGER                      not null,        /*入库单位                   */ 
   BILJE014             NUMBER(12,2)                 not null,        /*单位换算率                 */ 
   BILJE015             NUMBER(18,3)                 not null,        /*销售量                     */ 
   BILJE016             NUMBER(12,2)                 not null,        /*税前单价                   */ 
   BILJE017             NUMBER(12,2)                 not null,        /*含税单价                   */ 
   BILJE018             INTEGER                      not null,        /*税种                       */ 
   BILJE019             NUMBER(12,2)                 not null,        /*税率                       */ 
   BILJE020             NUMBER(12,2)                 not null,        /*税前金额                   */ 
   BILJE021             NUMBER(12,2)                 not null,        /*含税金额                   */
   BILJE022             NUMBER(18,3)                 not null,        /*已结数量                  */
   CREATE_USER          VARCHAR2(12),                                 /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门        */                               
   CREATE_DATE          DATE,                                         /*建立日期            */
   MODIFIER             VARCHAR2(12),                                 /*修改人员            */
   MODI_DATE            DATE,                                         /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILJE primary key (BILJE_ID)
);
create unique index AK_TB_BILJE on TB_BILJE (BILJE003,BILJE005);
create sequence SEQ_TB_BILJE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJE to public;
grant index  on TB_BILJE to public;
grant update on TB_BILJE to public; 
grant delete on TB_BILJE to public;  
grant insert on TB_BILJE to public; 
grant select on SEQ_TB_BILJE to public;   