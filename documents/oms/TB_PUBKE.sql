/*
================================================================================
表结构代码:TB_PUBKE
表结构名称:销退扣减项表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKE;
drop index AK_TB_PUBKE;
drop table TB_PUBKE;
create table TB_PUBKE  (
   PUBKE_ID             INTEGER                         not null,  /*扣减项ID           */
   PUBKE001             VARCHAR2(4)                     not null,  /*扣减代码           */
   PUBKE002             VARCHAR2(40)                    not null,  /*扣减名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBKE primary key (PUBKE_ID)
);
create unique index AK_TB_PUBKE on TB_PUBKE (PUBKE001);
create sequence SEQ_TB_PUBKE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKE to public;
grant index  on TB_PUBKE to public;
grant update on TB_PUBKE to public; 
grant delete on TB_PUBKE to public;  
grant insert on TB_PUBKE to public; 
grant select on SEQ_TB_PUBKE to public;   