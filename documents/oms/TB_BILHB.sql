/*
================================================================================
表结构代码:TB_BILHB
表结构名称:经销对账单入/退子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILHB;
drop index AK_TB_BILHB;
drop table TB_BILHB;
create table TB_BILHB  (
   BILHB_ID           INTEGER                         not null,    /*入库/退货明细ID    */        
   BILHB001           INTEGER                         not null,    /*对账单ID           */        
   BILHB002           VARCHAR2(1)                     not null,    /*单据类型           */        
   BILHB003           INTEGER                         not null,    /*来源单号ID         */        
   BILHB004           VARCHAR2(30)                    not null,    /*来源单号           */        
   BILHB005           INTEGER                         not null,    /*付款方式           */        
   BILHB006           DATE                            not null,    /*审核日期           */        
   BILHB007           NUMBER(12,2)                    not null,    /*单据金额           */        
   BILHB008           NUMBER(12,2)                    not null,    /*未结金额           */        
   BILHB009           NUMBER(12,2)                    not null,    /*已结金额           */        
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILHB primary key (BILHB_ID)
);
create unique index AK_TB_BILHB on TB_BILHB (BILHB003);
create sequence SEQ_TB_BILHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHB to public;
grant index  on TB_BILHB to public;
grant update on TB_BILHB to public; 
grant delete on TB_BILHB to public;  
grant insert on TB_BILHB to public; 
grant select on SEQ_TB_BILHB to public;   