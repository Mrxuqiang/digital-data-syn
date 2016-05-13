/*
================================================================================
表结构代码:TB_BILJG
表结构名称:扣率/联营对账单调价明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJG;
drop index AK_TB_BILJG;
drop table TB_BILJG;
create table TB_BILJG  (
   BILJG_ID              INTEGER                              not null,             /*扣率/联营进价调整单据明细ID    */        
   BILJG001              INTEGER                              not null,             /*对账单ID                  */        
   BILJG002              INTEGER                              not null,             /*进价调整明细ID            */        
   BILJG003              VARCHAR2(30)                         not null,             /*调整单号                  */        
   BILJG004              INTEGER                              not null,             /*调整单号明细ID            */        
   BILJG005              INTEGER                              not null,             /*商品编码                  */        
   BILJG006              INTEGER,                                                   /*维度1                     */        
   BILJG007              INTEGER,                                                   /*维度2                     */        
   BILJG008              INTEGER,                                                   /*维度3                     */        
   BILJG009              INTEGER,                                                   /*维度4                     */        
   BILJG010              INTEGER,                                                   /*维度5                     */        
   BILJG011              INTEGER                              not null,             /*仓库                      */        
   BILJG012              INTEGER                              not null,             /*库位                      */        
   BILJG013              INTEGER                              not null,             /*单位                      */        
   BILJG014              NUMBER(12,2)                         not null,             /*单位换算率                */        
   BILJG015              NUMBER(18,3)                         not null,             /*原销售数量           */        
   BILJG016              NUMBER(18,3)                         not null,             /*本次调价数量         */        
   BILJG017              NUMBER(12,2)                         not null,             /*销售单价             */        
   BILJG018              NUMBER(12,2)                         not null,             /*销售金额             */        
   BILJG019              NUMBER(12,2)                         not null,             /*原扣率               */        
   BILJG020              NUMBER(12,2)                         not null,             /*新扣率               */        
   BILJG021              NUMBER(12,2)                         not null,             /*原销售成本           */               
   BILJG022              NUMBER(12,2)                         not null,             /*新销售成本           */               
   BILJG023              NUMBER(12,2)                         not null,             /*调整成本差           */               
   BILJG024              NUMBER(12,2)                         not null,             /*已结数量             */               
   BILJG025              INTEGER                              not null,             /*供应商               */               
   CREATE_USER          VARCHAR2(12),                                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                                               /*修改人员            */
   MODI_DATE            DATE,                                                       /*修改日期            */
   FLAG                 NUMBER(1),                                                  /*资料状态            */
   constraint PK_TB_BILJG primary key (BILJG_ID)
);
create unique index AK_TB_BILJG on TB_BILJG (BILJG003,BILJG005);
create sequence SEQ_TB_BILJG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJG to public;
grant index  on TB_BILJG to public;
grant update on TB_BILJG to public; 
grant delete on TB_BILJG to public;  
grant insert on TB_BILJG to public; 
grant select on SEQ_TB_BILJG to public;   