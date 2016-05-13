/*
================================================================================
表结构代码:TB_PUBBK
表结构名称:小区表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBK;
drop index AK_TB_PUBBK;
drop table TB_PUBBK;
create table TB_PUBBK  (
   PUBBK_ID             INTEGER                         not null,  /*小区ID             */
   PUBBK001             VARCHAR2(10)                    not null,  /*小区编码           */
   PUBBK002             VARCHAR2(30)                    not null,  /*小区名称           */
   PUBBK003             INTEGER                         not null,  /*大区ID          */
   PUBBK004             VARCHAR2(255),                             /*备注           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBBK primary key (PUBBK_ID)
);
create unique index AK_TB_PUBBK on TB_PUBBK (PUBBK001);
create sequence SEQ_TB_PUBBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBK to public;
grant index  on TB_PUBBK to public;
grant update on TB_PUBBK to public; 
grant delete on TB_PUBBK to public;  
grant insert on TB_PUBBK to public; 
grant select on SEQ_TB_PUBBK to public;   