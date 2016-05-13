/*
================================================================================
表结构代码:TB_PUBTD 
表结构名称:特定属性分类表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBTD;
drop index AK_TB_PUBTD;
drop table TB_PUBTD;
create table TB_PUBTD (
   PUBTD_ID             INTEGER                         not null,  /*特定属性ID        */
   PUBTD001             VARCHAR2(30)                    not null,  /*特定属性编号      */
   PUBTD002             VARCHAR2(30)                    not null,  /*特定属性名称      */
   PUBTD003             VARCHAR2(30)                               /*备注              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBTD primary key (PUBTD_ID)
);
create unique index AK_TB_PUBTD on TB_PUBTD (PUBTD001,FLAG);
create sequence SEQ_TB_PUBTD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTD to public;
grant index  on TB_PUBTD to public;
grant update on TB_PUBTD to public; 
grant delete on TB_PUBTD to public;  
grant insert on TB_PUBTD to public; 
grant select on SEQ_TB_PUBTD to public;   