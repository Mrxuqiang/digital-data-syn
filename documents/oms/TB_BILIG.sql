/*
================================================================================
表结构代码:TB_BILIG
表结构名称:成本代销对账单调价明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIG;
drop index AK_TB_BILIG;
drop table TB_BILIG;
create table TB_BILIG  (
   BILIG_ID              INTEGER                              not null,             /*成本代销进价调整单据明细ID    */        
   BILIG001              INTEGER                              not null,             /*对账单ID                  */        
   BILIG002              INTEGER                              not null,             /*进价调整明细ID            */        
   BILIG003              VARCHAR2(30)                         not null,             /*调整单号                  */        
   BILIG004              INTEGER                              not null,             /*调整单号明细ID            */        
   BILIG005              INTEGER                              not null,             /*商品编码                  */        
   BILIG006              INTEGER,                                                   /*维度1                     */        
   BILIG007              INTEGER,                                                   /*维度2                     */        
   BILIG008              INTEGER,                                                   /*维度3                     */        
   BILIG009              INTEGER,                                                   /*维度4                     */        
   BILIG010              INTEGER,                                                   /*维度5                     */        
   BILIG011              INTEGER                              not null,             /*仓库                      */        
   BILIG012              INTEGER                              not null,             /*库位                      */        
   BILIG013              INTEGER                              not null,             /*单位                      */        
   BILIG014              NUMBER(12,2)                         not null,             /*单位换算率                */        
   BILIG015              NUMBER(18,3)                         not null,             /*原库存数量                */        
   BILIG016              NUMBER(18,3)                         not null,             /*本次调价数量              */        
   BILIG017              NUMBER(12,2)                         not null,             /*原税前单价                */        
   BILIG018              NUMBER(12,2)                         not null,             /*原含税单价                */        
   BILIG019              NUMBER(12,2)                         not null,             /*新税前单价                */        
   BILIG020              NUMBER(12,2)                         not null,             /*新含税单价                */        
   BILIG021              INTEGER                              not null,             /*税种                      */               
   BILIG022              NUMBER(12,2)                         not null,             /*税率                      */               
   BILIG023              NUMBER(12,2)                         not null,             /*原税前金额                */               
   BILIG024              NUMBER(12,2)                         not null,             /*原含税金额                */               
   BILIG025              NUMBER(12,2)                         not null,             /*调价后税前金额            */               
   BILIG026              NUMBER(12,2)                         not null,             /*调价后含税金额            */               
   BILIG027              NUMBER(12,2)                         not null,             /*已销未结数量              */      
   BILIG028              NUMBER(12,2)                         not null,             /*已销未结调价数量          */             
   BILIG029              NUMBER(12,2)                         not null,             /*已销调整前税前金额        */             
   BILIG030              NUMBER(12,2)                         not null,             /*已销调整前含税金额        */             
   BILIG031              NUMBER(12,2)                         not null,             /*已销调整后税前金额        */             
   BILIG032              NUMBER(12,2)                         not null,             /*已销调整后含税金额        */             
   CREATE_USER          VARCHAR2(12),                                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                                               /*修改人员            */
   MODI_DATE            DATE,                                                       /*修改日期            */
   FLAG                 NUMBER(1),                                                  /*资料状态            */
   constraint PK_TB_BILIG primary key (BILIG_ID)
);
create unique index AK_TB_BILIG on TB_BILIG (BILIG003,BILIG005);
create sequence SEQ_TB_BILIG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIG to public;
grant index  on TB_BILIG to public;
grant update on TB_BILIG to public; 
grant delete on TB_BILIG to public;  
grant insert on TB_BILIG to public; 
grant select on SEQ_TB_BILIG to public;   