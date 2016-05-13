/*
================================================================================
表结构代码:TB_BANBB
表结构名称:票据购置子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BANBB;
drop index AK_TB_BANBB;
drop table TB_BANBB;
create table TB_BANBB  (
   BANBB_ID             INTEGER                              not null,  /*票据购置子表ID    */
   BANBB001             INTEGER                              not null,  /*票据购置主表ID    */
   BANBB002             VARCHAR2(10),                                   /*票号              */
   BANBB003             VARCHAR2(1),                                    /*状态              */
   CREATE_USER          VARCHAR2(12),                                   /*建立人员              */
   USER_GROUP           VARCHAR2(12),                                   /*建立人员部门          */                               
   CREATE_DATE          DATE,                                           /*建立日期              */
   MODIFIER             VARCHAR2(12),                                   /*修改人员              */
   MODI_DATE            DATE,                                           /*修改日期              */
   FLAG                 NUMBER(1),                                      /*资料状态              */
   constraint PK_TB_BANBB primary key (BANBB_ID)
);
create unique index AK_TB_BANBB on TB_BANBB (BANBB_ID,BANBB002);
create sequence SEQ_TB_BANBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANBB to public;
grant index  on TB_BANBB to public;
grant update on TB_BANBB to public; 
grant delete on TB_BANBB to public;  
grant insert on TB_BANBB to public; 
grant select on SEQ_TB_BANBB to public;   