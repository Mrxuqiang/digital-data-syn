/*
================================================================================
表结构代码:TB_BANAB
表结构名称:对账表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BANAB;
drop index AK_TB_BANAB;
drop table TB_BANAB;
create table TB_BANAB  (
   BANAB_ID             INTEGER                         not null,  /*对账表ID          */
   BANAB001             INTEGER                         not null,  /*账户ID            */
   BANAB002             DATE                            not null,  /*日期              */
   BANAB003             INTEGER,                                   /*单别ID            */
   BANAB004             VARCHAR2(30),                              /*单据号           */
   BANAB005             VARCHAR2(1)                     not null,  /*收付款方式        */
   BANAB006             VARCHAR2(255),                             /*摘要              */
   BANAB007             NUMBER(16,2),                              /*借方              */
   BANAB008             NUMBER(16,2),                              /*贷方              */
   BANAB009             VARCHAR2(1) ,                              /*来源              */  
   BANAB010             VARCHAR2(1) ,                              /*是否勾对          */ 
   BANAB011             INTEGER ,                                  /*会计核算账套       */
   BANAB012             INTEGER ,                                  /*来源单号ID       */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_BANAB primary key (BANAB_ID)
);
create unique index AK_TB_BANAB on TB_BANAB (BANAB_ID,BANAB001,BANAB002,BANAB004,BANAB005);
create sequence SEQ_TB_BANAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANAB to public;
grant index  on TB_BANAB to public;
grant update on TB_BANAB to public; 
grant delete on TB_BANAB to public;  
grant insert on TB_BANAB to public; 
grant select on SEQ_TB_BANAB to public;   