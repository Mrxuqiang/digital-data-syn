/*
================================================================================
表结构代码:TB_TAXAB
表结构名称:税票号表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAB;
drop index AK_TB_TAXAB;
drop table TB_TAXAB;
create table TB_TAXAB  (
   TAXAB_ID             INTEGER                         not null,  /*税票号ID          */
   TAXAB001             INTEGER                         not null,  /*代征代缴税额标准ID*/
   TAXAB002             VARCHAR2(16)                    not null,  /*税票号            */
   TAXAB003             VARCHAR2(16)                    not null,  /*密码              */
   TAXAB004             DATE                            not null,  /*异动日期          */
   TAXAB005             VARCHAR2(1),                               /*是否已结          */
   TAXAB006             INTEGER,                                   /*补税单明细ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_TAXAB primary key (TAXAB_ID)
);
create unique index AK_TB_TAXAB on TB_TAXAB (TAXAB001,TAXAB002);
create sequence SEQ_TB_TAXAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAB to public;
grant index  on TB_TAXAB to public;
grant update on TB_TAXAB to public; 
grant delete on TB_TAXAB to public;  
grant insert on TB_TAXAB to public; 
grant select on SEQ_TB_TAXAB to public;   