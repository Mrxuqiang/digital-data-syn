/*
================================================================================
表结构代码:TB_PUBID
表结构名称:楼栋表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBID;
drop index AK_TB_PUBID;
drop table TB_PUBID;
create table TB_PUBID  (
   PUBID_ID             INTEGER                         not null,  /*楼栋ID             */
   PUBID001             INTEGER                         not null,  /*公司ID             */
   PUBID002             INTEGER                         not null,  /*营运组织ID         */
   PUBID003             VARCHAR2(10)                    not null,  /*楼栋代码           */
   PUBID004             VARCHAR2(30)                    not null,  /*楼栋名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBID primary key (PUBID_ID)
);
create unique index AK_TB_PUBID on TB_PUBID (PUBID003);
create sequence SEQ_TB_PUBID minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBID to public;
grant index  on TB_PUBID to public;
grant update on TB_PUBID to public; 
grant delete on TB_PUBID to public;  
grant insert on TB_PUBID to public; 
grant select on SEQ_TB_PUBID to public;   