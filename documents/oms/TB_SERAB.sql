/*
================================================================================
表结构代码:TB_SERAB
表结构名称:销售凭证入库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAB;
drop index AK_TB_SERAB;
drop table TB_SERAB;
create table TB_SERAB  (
   SERAB_ID             INTEGER                         not null,  /*销售凭证入库单明细ID*/
   SERAB001             INTEGER                         not null,  /*销售凭证入库单ID    */
   SERAB002             INTEGER                         not null,  /*凭证种类ID          */
   SERAB003             NUMBER(12)                      not null,  /*开始号码            */
   SERAB004             NUMBER(12)                      not null,  /*结束号码            */
   SERAB005             NUMBER(12)                      not null,  /*张数                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SERAB primary key (SERAB_ID)
);
create unique index AK_TB_SERAB on TB_SERAB (SERAB001,SERAB002,SERAB003);
create sequence SEQ_TB_SERAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAB to public;
grant index  on TB_SERAB to public;
grant update on TB_SERAB to public; 
grant delete on TB_SERAB to public;  
grant insert on TB_SERAB to public; 
grant select on SEQ_TB_SERAB to public;   