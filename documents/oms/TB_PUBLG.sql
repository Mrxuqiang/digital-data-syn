/*
================================================================================
表结构代码:TB_PUBLG
表结构名称:会计主体主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLG;
drop index AK_TB_PUBLG;
drop table TB_PUBLG;
create table TB_PUBLG  (
   PUBLG_ID             INTEGER                         not null,  /*会计主体ID                 */
   PUBLG001             VARCHAR2(16)                    not null,  /*会计主体代码               */
   PUBLG002             VARCHAR2(30)                    not null,  /*会计主体名称               */
   PUBLG003             VARCHAR2(2)                     not null,  /*核算对象类型               */
   PUBLG004             INTEGER                         not null,  /*核算对象ID                 */
   PUBLG005             INTEGER ,                                  /*上级会计主体ID             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBLG primary key (PUBLG_ID)
);
create unique index AK_TB_PUBLG on TB_PUBLG (PUBLG001);
create sequence SEQ_TB_PUBLG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLG to public;
grant index  on TB_PUBLG to public;
grant update on TB_PUBLG to public; 
grant delete on TB_PUBLG to public;  
grant insert on TB_PUBLG to public; 
grant select on SEQ_TB_PUBLG to public;   