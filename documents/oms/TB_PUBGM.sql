/*
================================================================================
表结构代码:TB_PUBGM
表结构名称:合同分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGM;
drop index AK_TB_PUBGM;
drop table TB_PUBGM;
create table TB_PUBGM  (
   PUBGM_ID             INTEGER                         not null,  /*合同分类ID         */
   PUBGM001             VARCHAR2(4)                     not null,  /*合同分类代码       */
   PUBGM002             VARCHAR2(30)                    not null,  /*合同分类名称       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGM primary key (PUBGM_ID)
);
create unique index AK_TB_PUBGM on TB_PUBGM (PUBGM001);
create sequence SEQ_TB_PUBGM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGM to public;
grant index  on TB_PUBGM to public;
grant update on TB_PUBGM to public; 
grant delete on TB_PUBGM to public;  
grant insert on TB_PUBGM to public; 
grant select on SEQ_TB_PUBGM to public;   