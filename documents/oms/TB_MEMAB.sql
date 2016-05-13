/*
================================================================================
表结构代码:TB_MEMAB
表结构名称:会员等级表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMAB;
drop index AK_TB_MEMAB;
drop table TB_MEMAB;
create table TB_MEMAB  (
   MEMAB_ID             INTEGER                         not null,  /*会员等级ID         */
   MEMAB001             VARCHAR2(4)                     not null,  /*会员等级代码       */
   MEMAB002             VARCHAR2(30)                    not null,  /*会员等级名称       */
   MEMAB003             NUMBER(12)                      not null,  /*积分下限           */
   MEMAB004             NUMBER(12)                      not null,  /*积分上限           */
   MEMAB005             VARCHAR2(60),                              /*说明               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMAB primary key (MEMAB_ID)
);
create unique index AK_TB_MEMAB on TB_MEMAB (MEMAB001);
create sequence SEQ_TB_MEMAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAB to public;
grant index  on TB_MEMAB to public;
grant update on TB_MEMAB to public; 
grant delete on TB_MEMAB to public;  
grant insert on TB_MEMAB to public; 
grant select on SEQ_TB_MEMAB to public;   