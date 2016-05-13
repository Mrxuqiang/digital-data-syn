/*
================================================================================
表结构代码:TB_PUBGC
表结构名称:证件类型表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGC;
drop index AK_TB_PUBGC;
drop table TB_PUBGC;
create table TB_PUBGC  (
   PUBGC_ID             INTEGER                         not null,  /*证件类型ID         */
   PUBGC001             VARCHAR2(4)                     not null,  /*证件类型代码       */
   PUBGC002             VARCHAR2(30)                    not null,  /*证件类型名称       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGC primary key (PUBGC_ID)
);
create unique index AK_TB_PUBGC on TB_PUBGC (PUBGC001);
create sequence SEQ_TB_PUBGC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGC to public;
grant index  on TB_PUBGC to public;
grant update on TB_PUBGC to public; 
grant delete on TB_PUBGC to public;  
grant insert on TB_PUBGC to public; 
grant select on SEQ_TB_PUBGC to public;   