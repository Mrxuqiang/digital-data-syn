/*                                        
================================================================================
表结构代码:TB_RECAB                       
表结构名称:应收明细表                     
表结构目的:                               
================================================================================
*/                                        
                                          
drop sequence SEQ_TB_RECAB;               
drop index AK_TB_RECAB;                                          
drop table TB_RECAB;                                             
create table TB_RECAB  (                                         
   RECAB_ID             INTEGER                         not null,  /*应收明细ID              */
   RECAB001             INTEGER                         not null,  /*应收单主ID              */
   RECAB002             VARCHAR2(1)                     not null,  /*单据来源                */
   RECAB003             VARCHAR2(30),                              /*来源单号                */
   RECAB004             INTEGER ,                                  /*项目编号ID                */
   RECAB005             INTEGER                         not null,  /*现金流量异动码ID           */
   RECAB006             INTEGER ,                                  /*税种ID                  */
   RECAB007             INTEGER,                                   /*会计科目ID                  */
   RECAB008             NUMBER(5,4),                               /*税率                 */
   RECAB009             NUMBER(5,4) ,                              /*预留字段                    */
   RECAB010             NUMBER(16,2),                              /*原币未税金额            */
   RECAB011             NUMBER(16,2),                              /*本币未税金额            */
   RECAB012             NUMBER(16,2),                              /*原币税额                */
   RECAB013             NUMBER(16,2),                              /*本币税额                */
   RECAB014             NUMBER(16,2) ,                             /*原币含税金额            */
   RECAB015             NUMBER(16,2),                              /*本币含税金额            */
   RECAB016             NUMBER(16,2),                              /*原币含税收款金额        */
   RECAB017             NUMBER(16,2),                              /*本币含税收款金额        */
   RECAB018             VARCHAR2(255),                             /*备注                    */
   RECAB019             INTEGER,                                   /*营运组织ID                */
   RECAB020             INTEGER,                                   /*来源单号ID                */
   RECAB021             INTEGER,                                   /*来源单身ID                */
   RECAB022             NUMBER(12,2),                              /*单价                      */
   RECAB023             NUMBER(18,3),                              /*数量                       */
   RECAB024             INTEGER,                                   /*销售单位ID                */
   RECAB025             NUMBER(16,2),                              /*原币已核销金额         */
   RECAB026             NUMBER(16,2),                              /*本币已核销金额         */  
   RECAB027             NUMBER(22,2),                              /*折扣金额 20100607 add by gaoxl         */         
   RECAB028             INTEGER,                                   /*品牌ID   20100919 add by hansf         */
   RECAB029             INTEGER,                                   /*商品分类id   20110715 add by gaoxl         */
   RECAB030             INTEGER,                                   /*商品系列id   20110715 add by gaoxl         */ 
   RECAB031             VARCHAR2(1),                               /*销售属性   20110715 add by gaoxl        */ 
   RECAB032             NUMBER(22,6),                              /*单位成本   20110715 add by gaoxl         */  
   RECAB033             NUMBER(22,2),                              /*成本金额   20110715 add by gaoxl         */  
   RECAB034             NUMBER(22,7),                              /*毛利率   20110715 add by gaoxl         */  
   RECAB035             INTEGER,                                   /*签收单id   20110715 add by gaoxl         */            
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER,                                 /*资料状态                */
   constraint PK_TB_RECAB primary key (RECAB_ID)                 
);                                                               
create sequence SEQ_TB_RECAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAB to public;                              
grant index  on TB_RECAB to public;                              
grant update on TB_RECAB to public;                              
grant delete on TB_RECAB to public;                              
grant insert on TB_RECAB to public;                              
grant select on SEQ_TB_RECAB to public;                          
                       
                       
                       
                       
                       
                       
                       
                       
                       