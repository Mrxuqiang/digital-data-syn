/*
================================================================================
表结构代码:TB_MEMAA
表结构名称:会员分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMAA;
drop index AK_TB_MEMAA;
drop table TB_MEMAA;
create table TB_MEMAA  (
   MEMAA_ID             INTEGER                         not null,  /*会员分类ID         */
   MEMAA001             VARCHAR2(4)                     not null,  /*会员分类代码       */
   MEMAA002             VARCHAR2(30)                    not null,  /*会员分类名称       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMAA primary key (MEMAA_ID)
);
create unique index AK_TB_MEMAA on TB_MEMAA (MEMAA001);
create sequence SEQ_TB_MEMAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAA to public;
grant index  on TB_MEMAA to public;
grant update on TB_MEMAA to public; 
grant delete on TB_MEMAA to public;  
grant insert on TB_MEMAA to public; 
grant select on SEQ_TB_MEMAA to public; 