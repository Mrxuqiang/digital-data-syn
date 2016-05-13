/*
================================================================================
表结构代码:TB_HRBAG
表结构名称:员工银行账号表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAG;
drop index AK_TB_HRBAG;
drop table TB_HRBAG;
create table TB_HRBAG  (
   HRBAG_ID             INTEGER                         not null,  /*所得地点ID         */
   HRBAG001             INTEGER                         not null,  /*员工ID             */
   HRBAG002             INTEGER                         not null,  /*转账银行ID         */
   HRBAG003             INTEGER,                                   /*开户银行           */
   HRBAG004             VARCHAR2(20)                    not null,  /*银行账号           */
   HRBAG005             VARCHAR2(1)                     not null,  /*账户类型           */
   HRBAG006             DATE,                                      /*失效日期           */
   HRBAG007             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAG primary key (HRBAG_ID)
);
create unique index AK_TB_HRAAG on TB_HRBAG (HRBAG001);
create sequence SEQ_TB_HRBAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAG to public;
grant index  on TB_HRBAG to public;
grant update on TB_HRBAG to public; 
grant delete on TB_HRBAG to public;  
grant insert on TB_HRBAG to public; 
grant select on SEQ_TB_HRBAG to public;   