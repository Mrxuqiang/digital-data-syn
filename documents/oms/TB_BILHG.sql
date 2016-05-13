/*
================================================================================
表结构代码:TB_BILHG
表结构名称:经销对账单调价明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILHG;
drop index AK_TB_BILHG;
drop table TB_BILHG;
create table TB_BILHG  (
   BILHG_ID              INTEGER                              not null,             /*经销进价调整单据明细ID    */        
   BILHG001              INTEGER                              not null,             /*对账单ID                  */        
   BILHG002              INTEGER                              not null,             /*进价调整明细ID            */        
   BILHG003              VARCHAR2(30)                         not null,             /*调整单号                  */        
   BILHG004              INTEGER                              not null,             /*调整单号明细ID            */        
   BILHG005              INTEGER                              not null,             /*商品编码                  */        
   BILHG006              INTEGER,                                                   /*维度1                     */        
   BILHG007              INTEGER,                                                   /*维度2                     */        
   BILHG008              INTEGER,                                                   /*维度3                     */        
   BILHG009              INTEGER,                                                   /*维度4                     */        
   BILHG010              INTEGER,                                                   /*维度5                     */        
   BILHG011              INTEGER                              not null,             /*仓库                      */        
   BILHG012              INTEGER                              not null,             /*库位                      */        
   BILHG013              INTEGER                              not null,             /*单位                      */        
   BILHG014              NUMBER(12,2)                         not null,             /*单位换算率                */        
   BILHG015              NUMBER(18,3)                         not null,             /*原库存数量                */        
   BILHG016              NUMBER(18,3)                         not null,             /*本次调价数量              */        
   BILHG017              NUMBER(12,2)                         not null,             /*原税前单价                */        
   BILHG018              NUMBER(12,2)                         not null,             /*原含税单价                */        
   BILHG019              NUMBER(12,2)                         not null,             /*新税前单价                */        
   BILHG020              NUMBER(12,2)                         not null,             /*新含税单价                */        
   BILHG021              INTEGER                              not null,             /*税种                      */               
   BILHG022              NUMBER(12,2)                         not null,             /*税率                      */               
   BILHG023              NUMBER(12,2)                         not null,             /*原税前金额                */               
   BILHG024              NUMBER(12,2)                         not null,             /*原含税金额                */               
   BILHG025              NUMBER(12,2)                         not null,             /*调价后税前金额            */               
   BILHG026              NUMBER(12,2)                         not null,             /*调价后含税金额            */               
   BILHG027              NUMBER(12,2)                         not null,             /*已销未结数量              */      
   BILHG028              NUMBER(12,2)                         not null,             /*已销未结调价数量          */             
   BILHG029              NUMBER(12,2)                         not null,             /*已销调整前税前金额        */             
   BILHG030              NUMBER(12,2)                         not null,             /*已销调整前含税金额        */             
   BILHG031              NUMBER(12,2)                         not null,             /*已销调整后税前金额        */             
   BILHG032              NUMBER(12,2)                         not null,             /*已销调整后含税金额        */             
   CREATE_USER          VARCHAR2(12),                                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                                               /*修改人员            */
   MODI_DATE            DATE,                                                       /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILHG primary key (BILHG_ID)
);
create unique index AK_TB_BILHG on TB_BILHG (BILHG003,BILHG005);
create sequence SEQ_TB_BILHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHG to public;
grant index  on TB_BILHG to public;
grant update on TB_BILHG to public; 
grant delete on TB_BILHG to public;  
grant insert on TB_BILHG to public; 
grant select on SEQ_TB_BILHG to public;   