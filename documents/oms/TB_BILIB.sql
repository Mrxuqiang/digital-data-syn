/*
================================================================================
表结构代码:TB_BILIB
表结构名称:成本代销对账单销售/销退子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIB;
drop index AK_TB_BILIB;
drop table TB_BILIB;
create table TB_BILIB  (
   BILIB_ID           INTEGER                         not null,    /*销售/销退明细ID    */        
   BILIB001           INTEGER                         not null,    /*对账单ID           */        
   BILIB002           VARCHAR2(1)                     not null,    /*单据类型           */        
   BILIB003           INTEGER                         not null,    /*来源单号ID         */        
   BILIB004           VARCHAR2(30)                    not null,    /*来源单号           */              
   BILIB005           DATE                            not null,    /*审核日期           */        
   BILIB006           NUMBER(12,2)                    not null,    /*单据金额           */        
   BILIB007           NUMBER(12,2)                    not null,    /*未结金额           */        
   BILIB008           NUMBER(12,2)                    not null,    /*已结金额           */        
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILIB primary key (BILIB_ID)
);
create unique index AK_TB_BILIB on TB_BILIB (BILIB003);
create sequence SEQ_TB_BILIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIB to public;
grant index  on TB_BILIB to public;
grant update on TB_BILIB to public; 
grant delete on TB_BILIB to public;  
grant insert on TB_BILIB to public; 
grant select on SEQ_TB_BILIB to public;   