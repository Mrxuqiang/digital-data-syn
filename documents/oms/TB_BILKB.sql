/*
================================================================================
表结构代码:TB_BILKB
表结构名称:日结应收款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILKB;
drop index AK_TB_BILKB;
drop table TB_BILKB;
create table TB_BILKB  (                                             
   BILKB_ID	        INTEGER                   not null,      /*日结应收款表ID                 */         
   BILKB001	        DATE ,                                   /*日结日期                       */         
   BILKB002	        INTEGER,                                 /*来源营运组织                   */         
   BILKB003	        VARCHAR2(1),                             /*日结单据类型1、销售单 2销退单  */         
   BILKB004	        INTEGER,                                 /*来源单号ID                     */         
   BILKB005	        INTEGER,                                 /*来源明细ID                     */         
   BILKB006	        INTEGER,                                 /*签收单ID                       */ 
   BILKB007	        INTEGER,                                 /*客户ID                         */ 
   BILKB008	        DATE ,                                   /*立账日期                       */ 
   BILKB009	        DATE ,                                   /*应收日期                       */         
   BILKB010	        VARCHAR2(1),                             /*结算方式                       */         
   BILKB011	        INTEGER,                                 /*商品编码      */         
   BILKB012	        INTEGER,                                 /*单位ID        */                
   BILKB013	        NUMBER(18,3),                            /*数量          */        
   BILKB014	        INTEGER,                                 /*税种          */         
   BILKB015	        NUMBER(18,3),                            /*税率          */                 
   BILKB016	        NUMBER(18,3),                            /*原币含税金额  */         
   BILKB017	        NUMBER(18,3),                            /*原币未税金额  */         
   BILKB018	        NUMBER(12,2),                            /*单价          */   
   BILKB019	        NUMBER(12,2),                            /*折扣金额      */  
   BILKB020         INTEGER,                                 /*品牌ID             */ 
   BILKB021         VARCHAR2(30),                            /*应收单号                 */     
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_BILKB primary key (BILKB_ID)                               
);                                                     
create sequence SEQ_TB_BILKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILKB to public;                                     
grant index  on TB_BILKB to public;                                     
grant update on TB_BILKB to public;                                      
grant delete on TB_BILKB to public;                                       
grant insert on TB_BILKB to public;                                      
grant select on SEQ_TB_BILKB to public;                                        