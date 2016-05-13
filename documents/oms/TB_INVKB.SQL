/*
================================================================================
表结构代码:TB_INVKB
表结构名称:拣货单子件明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVKB;
drop index AK_TB_INVKB;
drop table TB_INVKB;
create table TB_INVKB(
   INVKB_ID             INTEGER                      not null,     /*拣货子件明细ID            */  
   INVKB001             INTEGER                      not null,     /*拣货单ID                  */  
   INVKB002             INTEGER                      not null,     /*货位ID                    */  
   INVKB003             INTEGER                      not null,     /*子件商品ID                */  
   INVKB004             VARCHAR2(64)                 not null,     /*库存条码                  */  
   INVKB005             INTEGER                      not null,     /*出货数量                  */  
   INVKB006             NUMBER(18,2)                      ,        /*拣货数量                  */   
   INVKB007              NUMBER(18,2)                 ,            /*拣货套件明细ID            */ 
   INVKB008             INTEGER,                                   /*签收单ID                  */
   INVKB009             INTEGER ,                                  /*子件批次ID                */ --20110528 add by xiechun 
   INVKB010             INTEGER,                                   /*收货通知单明细ID          */ --20111107 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                            
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_INVKB primary key (INVKB_ID)
);
create index AK_TB_INVKB on TB_INVKB (INVKB003,INVKB004);
create sequence SEQ_TB_INVKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVKB to public;
grant index  on TB_INVKB to public;
grant update on TB_INVKB to public; 
grant delete on TB_INVKB to public;  
grant insert on TB_INVKB to public; 
grant select on SEQ_TB_INVKB to public;   