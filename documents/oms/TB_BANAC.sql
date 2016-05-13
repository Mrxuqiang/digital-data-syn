/*
================================================================================
表结构代码:TB_BANAC
表结构名称:对账记录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BANAC;
drop index AK_TB_BANAC;
drop table TB_BANAC;
create table TB_BANAC  (
   BANAC_ID             INTEGER                         not null,  /*记录表ID               */
   BANAC001             INTEGER                          not null,  /*账户编号ID             */
   BANAC002             INTEGER,                                    /*单位方对账ID           */
   BANAC003             INTEGER ,                                    /*银行方对账ID           */
   BANAC004             INTEGER,                                   /*对账序号               */
   BANAC005             DATE,                                        /*对账日期               */
   BANAC006             INTEGER,                                   /*对账人                 */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门           */                               
   CREATE_DATE          DATE,                                      /*建立日期               */
   MODIFIER             VARCHAR2(12),                              /*修改人员               */
   MODI_DATE            DATE,                                      /*修改日期               */
   FLAG                 NUMBER(1),                                 /*资料状态               */
   constraint PK_TB_BANAC primary key (BANAC_ID)
);
create unique index AK_TB_BANAC on TB_BANAC (BANAC001,BANAC002,BANAC003,BANAC004);
create sequence SEQ_TB_BANAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANAC to public;
grant index  on TB_BANAC to public;
grant update on TB_BANAC to public; 
grant delete on TB_BANAC to public;  
grant insert on TB_BANAC to public; 
grant select on SEQ_TB_BANAC to public;   