/*
================================================================================
表结构代码:TB_SYSDH
表结构名称:可选择敏感字段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDH;
drop index AK_TB_SYSDH;
drop table TB_SYSDH;
create table TB_SYSDH  (
   SYSDH_ID             INTEGER                         not null,  /*记录ID           */
   SYSDH001             INTEGER                         not null,  /*程序ID           */
   SYSDH002             VARCHAR2(30)                    not null,  /*表名             */
   SYSDH003             VARCHAR2(30)                    not null,  /*字段名           */
   SYSDH004							VARCHAR2(1)											not null,  /*类型,1:隐藏字段;2:不允许录入字段;3:同时选择两个属性*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDH primary key (SYSDH_ID)
);
create unique index AK_TB_SYSDH on TB_SYSDH (SYSDH001,SYSDH002);
create sequence SEQ_TB_SYSDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDH to public;
grant index  on TB_SYSDH to public;
grant update on TB_SYSDH to public; 
grant delete on TB_SYSDH to public;  
grant insert on TB_SYSDH to public; 
grant select on SEQ_TB_SYSDH to public;   