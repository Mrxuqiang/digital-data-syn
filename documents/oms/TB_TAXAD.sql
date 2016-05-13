/*
================================================================================
表结构代码:TB_TAXAD
表结构名称:发票入库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAD;
drop index AK_TB_TAXAD;
drop table TB_TAXAD;
create table TB_TAXAD  (
   TAXAD_ID             INTEGER                         not null,  /*发票入库单明细ID  */
   TAXAD001             INTEGER                         not null,  /*发票入库单ID      */
   TAXAD002             INTEGER                         not null,  /*发票种类ID        */
   TAXAD003             NUMBER(12)                      not null,  /*开始票号          */
   TAXAD004             NUMBER(12)                      not null,  /*结束票号          */
   TAXAD005             NUMBER(12)                      not null,  /*张数              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_TAXAD primary key (TAXAD_ID)
);
create unique index AK_TB_TAXAD on TB_TAXAD (TAXAD001,TAXAD002,TAXAD003);
create sequence SEQ_TB_TAXAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAD to public;
grant index  on TB_TAXAD to public;
grant update on TB_TAXAD to public; 
grant delete on TB_TAXAD to public;  
grant insert on TB_TAXAD to public; 
grant select on SEQ_TB_TAXAD to public;   