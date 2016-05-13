/*
================================================================================
表结构代码:TB_MEDAA
表结构名称:媒体分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDAA;
drop index AK_TB_MEDAA;
drop table TB_MEDAA;
create table TB_MEDAA  (
   MEDAA_ID             INTEGER                         not null,  /*媒体分类ID         */
   MEDAA001             VARCHAR2(4)                     not null,  /*媒体分类代码       */
   MEDAA002             VARCHAR2(30)                    not null,  /*媒体分类名称       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEDAA primary key (MEDAA_ID)
);
create unique index AK_TB_MEDAA on TB_MEDAA (MEDAA001);
create sequence SEQ_TB_MEDAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDAA to public;
grant index  on TB_MEDAA to public;
grant update on TB_MEDAA to public; 
grant delete on TB_MEDAA to public;  
grant insert on TB_MEDAA to public; 
grant select on SEQ_TB_MEDAA to public;   