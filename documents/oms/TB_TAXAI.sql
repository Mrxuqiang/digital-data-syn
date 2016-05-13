/*
================================================================================
表结构代码:TB_TAXAI
表结构名称:补税单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAI;
drop index AK_TB_TAXAI;
drop table TB_TAXAI;
create table TB_TAXAI  (
   TAXAI_ID             INTEGER                         not null,  /*补税单明细ID      */
   TAXAI001             INTEGER                         not null,  /*补税单ID          */
   TAXAI002             INTEGER                         not null,  /*税票号ID          */
   TAXAI003             INTEGER                         not null,  /*摊位ID            */
   TAXAI004             INTEGER                         not null,  /*合同ID            */
   TAXAI005             INTEGER                         not null,  /*客商ID            */
   TAXAI006             NUMBER(12,2)                    not null,  /*发票金额          */
   TAXAI007             NUMBER(12,2)                    not null,  /*实开票金额        */
   TAXAI008             NUMBER(12,2)                    not null,  /*超开票金额        */
   TAXAI009             NUMBER(12,2)                    not null,  /*超额税率(%)       */
   TAXAI010             NUMBER(12,2)                    not null,  /*应补税金额        */
   TAXAI011             NUMBER(12,2)                    not null,  /*实补税金额        */
   TAXAI012             VARCHAR2(1),                               /*已结              */
   TAXAI013             INTEGER,                                   /*费用单ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_TAXAI primary key (TAXAI_ID)
);
create unique index AK_TB_TAXAI on TB_TAXAI (TAXAI001,TAXAI002);
create sequence SEQ_TB_TAXAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAI to public;
grant index  on TB_TAXAI to public;
grant update on TB_TAXAI to public; 
grant delete on TB_TAXAI to public;  
grant insert on TB_TAXAI to public; 
grant select on SEQ_TB_TAXAI to public;   