/*
================================================================================
表结构代码:TB_SYSBC
表结构名称:表结构索引表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSBC;
drop index AK_TB_SYSBC;
drop table TB_SYSBC;
create table TB_SYSBC  (
   SYSBC_ID             INTEGER                         not null,  /*表索引ID         */
   SYSBC001             INTEGER                         not null,  /*表结构ID         */
   SYSBC002             VARCHAR2(15)                    not null,  /*索引代码         */
   SYSBC003             VARCHAR2(150)                   not null,  /*索引字段         */
   SYSBC004             VARCHAR2(1)                     not null,  /*属性             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSBC primary key (SYSBC_ID)
);
create unique index AK_TB_SYSBC on TB_SYSBC (SYSBC001,SYSBC002);
create sequence SEQ_TB_SYSBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSBC to public;
grant index  on TB_SYSBC to public;
grant update on TB_SYSBC to public; 
grant delete on TB_SYSBC to public;  
grant insert on TB_SYSBC to public; 
grant select on SEQ_TB_SYSBC to public;   