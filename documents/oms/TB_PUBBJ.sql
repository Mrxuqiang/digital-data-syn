/*
================================================================================
表结构代码:TB_PUBBJ
表结构名称:大区表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBJ;
drop index AK_TB_PUBBJ;
drop table TB_PUBBJ;
create table TB_PUBBJ  (
   PUBBJ_ID             INTEGER                         not null,  /*大区ID             */
   PUBBJ001             VARCHAR2(10)                    not null,  /*大区编码           */
   PUBBJ002             VARCHAR2(30)                    not null,  /*大区名称           */
   PUBBJ003             VARCHAR2(255) ,                            /*备注             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBBJ primary key (PUBBJ_ID)
);
create unique index AK_TB_PUBBJ on TB_PUBBJ (PUBBJ001);
create sequence SEQ_TB_PUBBJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBJ to public;
grant index  on TB_PUBBJ to public;
grant update on TB_PUBBJ to public; 
grant delete on TB_PUBBJ to public;  
grant insert on TB_PUBBJ to public; 
grant select on SEQ_TB_PUBBJ to public;   