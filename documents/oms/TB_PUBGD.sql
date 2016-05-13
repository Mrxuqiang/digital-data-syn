/*
================================================================================
表结构代码:TB_PUBGD
表结构名称:原因表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGD;
drop index AK_TB_PUBGD;
drop table TB_PUBGD;
create table TB_PUBGD  (
   PUBGD_ID             INTEGER                         not null,  /*原因ID             */
   PUBGD001             VARCHAR2(2)                     not null,  /*原因类型           */
   PUBGD002             VARCHAR2(4)                     not null,  /*原因代码           */
   PUBGD003             VARCHAR2(50)                    not null,  /*原因内容           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGD primary key (PUBGD_ID)
);
create unique index AK_TB_PUBGD on TB_PUBGD (PUBGD001,PUBGD002);
create sequence SEQ_TB_PUBGD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGD to public;
grant index  on TB_PUBGD to public;
grant update on TB_PUBGD to public; 
grant delete on TB_PUBGD to public;  
grant insert on TB_PUBGD to public; 
grant select on SEQ_TB_PUBGD to public;   