/*
================================================================================
表结构代码:TB_MEMAF
表结构名称:兴趣爱好表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMAF;
drop index AK_TB_MEMAF;
drop table TB_MEMAF;
create table TB_MEMAF  (
   MEMAF_ID             INTEGER                         not null,  /*兴趣ID             */
   MEMAF001             VARCHAR2(4)                     not null,  /*兴趣代码           */
   MEMAF002             VARCHAR2(30)                    not null,  /*兴趣名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMAF primary key (MEMAF_ID)
);
create unique index AK_TB_MEMAF on TB_MEMAF (MEMAF001);
create sequence SEQ_TB_MEMAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAF to public;
grant index  on TB_MEMAF to public;
grant update on TB_MEMAF to public; 
grant delete on TB_MEMAF to public;  
grant insert on TB_MEMAF to public; 
grant select on SEQ_TB_MEMAF to public;   