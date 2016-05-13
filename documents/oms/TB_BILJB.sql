/*
================================================================================
表结构代码:TB_BILJB
表结构名称:扣率/联营对账单销售/销退子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJB;
drop index AK_TB_BILJB;
drop table TB_BILJB;
create table TB_BILJB  (
   BILJB_ID           INTEGER                         not null,    /*销售/销退明细ID    */        
   BILJB001           INTEGER                         not null,    /*对账单ID           */                                                               
   BILJB002           VARCHAR2(1)                     not null,    /*单据类型           */                                                               
   BILJB003           INTEGER                         not null,    /*来源单号ID         */                                                               
   BILJB004           VARCHAR2(30)                    not null,    /*来源单号           */                                                               
   BILJB005           DATE                            not null,    /*审核日期           */                                                               
   BILJB006           NUMBER(12,2)                    not null,    /*单据金额           */        
   BILJB007           NUMBER(12,2)                    not null,    /*未结金额           */        
   BILJB008           NUMBER(12,2)                    not null,    /*已结金额           */        
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILJB primary key (BILJB_ID)
);
create unique index AK_TB_BILJB on TB_BILJB (BILJB003);
create sequence SEQ_TB_BILJB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJB to public;
grant index  on TB_BILJB to public;
grant update on TB_BILJB to public; 
grant delete on TB_BILJB to public;  
grant insert on TB_BILJB to public; 
grant select on SEQ_TB_BILJB to public;   