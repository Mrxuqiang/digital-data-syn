/*
================================================================================
表结构代码:TB_PUBGA
表结构名称:企业性质表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGA;
drop index AK_TB_PUBGA;
drop table TB_PUBGA;
create table TB_PUBGA  (
   PUBGA_ID             INTEGER                         not null,  /*性质ID             */
   PUBGA001             VARCHAR2(4)                     not null,  /*性质代码           */
   PUBGA002             VARCHAR2(30)                    not null,  /*性质名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGA primary key (PUBGA_ID)
);
create unique index AK_TB_PUBGA on TB_PUBGA (PUBGA001);
create sequence SEQ_TB_PUBGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGA to public;
grant index  on TB_PUBGA to public;
grant update on TB_PUBGA to public; 
grant delete on TB_PUBGA to public;  
grant insert on TB_PUBGA to public; 
grant select on SEQ_TB_PUBGA to public;   