/*
================================================================================
表结构代码:TB_SALZD
表结构名称:线上支付流水子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALZD;
drop index AK_TB_SALZD;
drop table TB_SALZD;
create table TB_SALZD  (
   SALZD_ID             INTEGER                         not null,  /*流水子表ID         */
   SALZD001             INTEGER,                                   /*流水主表ID         */
   SALZD002             INTEGER                            ,       /*结算方式ID         */
   SALZD003             VARCHAR2(4)                            ,   /*结算方式代码       */
   SALZD004             VARCHAR2(30),                              /*结算方式名称       */
   SALZD005             NUMBER(12,2),                              /*实支付金额         */
   SALZD006             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_SALZD primary key (SALZD_ID)
);
create unique index AK_TB_SALZD on TB_SALZD (SALZD001,SALZD002);
create sequence SEQ_TB_SALZD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALZD to public;
grant index  on TB_SALZD to public;
grant update on TB_SALZD to public; 
grant delete on TB_SALZD to public;  
grant insert on TB_SALZD to public; 
grant select on SEQ_TB_SALZD to public;   