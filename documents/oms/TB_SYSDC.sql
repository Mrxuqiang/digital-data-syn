/*
================================================================================
表结构代码:TB_SYSDC
表结构名称:角色字段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDC;
drop index AK_TB_SYSDC;
drop table TB_SYSDC;
create table TB_SYSDC  (
   SYSDC_ID             INTEGER                         not null,  /*角色字段ID       */
   SYSDC001             INTEGER                         not null,  /*角色程序ID       */
   SYSDC002             INTEGER                         not null,  /*角色ID           */
   SYSDC003             INTEGER                         not null,  /*程序ID           */
   SYSDC004             VARCHAR2(30)                    not null,  /*表名             */
   SYSDC005             VARCHAR2(30)                    not null,  /*字段名           */
   SYSDC006             VARCHAR2(1)                     not null,  /*类型,1:隐藏字段;2:不允许录入字段*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDC primary key (SYSDC_ID)
);
create unique index AK_TB_SYSDC on TB_SYSDC (SYSDC002,SYSDC003,SYSDC004);
create sequence SEQ_TB_SYSDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDC to public;
grant index  on TB_SYSDC to public;
grant update on TB_SYSDC to public; 
grant delete on TB_SYSDC to public;  
grant insert on TB_SYSDC to public; 
grant select on SEQ_TB_SYSDC to public;   