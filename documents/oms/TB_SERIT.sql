20140723 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_SERIT
表结构名称:BOM组表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIT;
drop index AK_TB_SERIT;
drop table TB_SERIT;
create table TB_SERIT  (
   SERIT_ID             INTEGER                         not null,  /*BOM组ID             */
   SERIT001             VARCHAR2(50)                    not null,  /*BOM组名称           */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIT primary key (SERIT_ID)
);
create unique index AK_TB_SERIT on TB_SERIT (SERIT001);
create sequence SEQ_TB_SERIT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIT to public;
grant index  on TB_SERIT to public;
grant update on TB_SERIT to public; 
grant delete on TB_SERIT to public;  
grant insert on TB_SERIT to public; 
grant select on SEQ_TB_SERIT to public;   