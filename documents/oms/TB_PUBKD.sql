/*
================================================================================
表结构代码:TB_PUBKD
表结构名称:年龄区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKD;
drop index AK_TB_PUBKD;
drop table TB_PUBKD;
create table TB_PUBKD  (
   PUBKD_ID             INTEGER                         not null,  /*年龄区段ID         */
   PUBKD001             VARCHAR2(4)                     not null,  /*区段代码           */
   PUBKD002             VARCHAR2(40)                    not null,  /*区段名称           */
   PUBKD003             NUMBER(5,0)                     not null,  /*开始年龄           */
   PUBKD004             NUMBER(5,0)                     not null,  /*结束年龄           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBKD primary key (PUBKD_ID)
);
create unique index AK_TB_PUBKD on TB_PUBKD (PUBKD001);
create sequence SEQ_TB_PUBKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKD to public;
grant index  on TB_PUBKD to public;
grant update on TB_PUBKD to public; 
grant delete on TB_PUBKD to public;  
grant insert on TB_PUBKD to public; 
grant select on SEQ_TB_PUBKD to public;   