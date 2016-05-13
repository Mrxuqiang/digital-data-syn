/*
================================================================================
表结构代码:TB_TAXAG
表结构名称:发票作废单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAG;
drop index AK_TB_TAXAG;
drop table TB_TAXAG;
create table TB_TAXAG  (
   TAXAG_ID             INTEGER                         not null,  /*发票作废单明细ID  */
   TAXAG001             INTEGER                         not null,  /*发票作废单ID      */
   TAXAG002             INTEGER                         not null,  /*发票种类ID        */
   TAXAG003             NUMBER(12)                      not null,  /*开始票号          */
   TAXAG004             NUMBER(12)                      not null,  /*结束票号          */
   TAXAG005             NUMBER(12)                      not null,  /*张数              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_TAXAG primary key (TAXAG_ID)
);
create unique index AK_TB_TAXAG on TB_TAXAG (TAXAG002,TAXAG003,TAXAG004);
create sequence SEQ_TB_TAXAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAG to public;
grant index  on TB_TAXAG to public;
grant update on TB_TAXAG to public; 
grant delete on TB_TAXAG to public;  
grant insert on TB_TAXAG to public; 
grant select on SEQ_TB_TAXAG to public;   