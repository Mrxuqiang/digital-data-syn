/*
================================================================================
表结构代码:TB_SYSED
表结构名称:任务条目实参表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSED;
drop index AK_TB_SYSED;
drop table TB_SYSED;
create table TB_SYSED  (
   SYSED_ID             INTEGER                         not null,  /*任务条目实参ID   */
   SYSED001             INTEGER                         not null,  /*任务条目ID       */
   SYSED002             INTEGER                         not null,  /*任务参数ID       */
   SYSED003             VARCHAR2(16)                    not null,  /*操作符           */
   SYSED004             VARCHAR2(30)                    not null,  /*设置值           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSED primary key (SYSED_ID)
);
create unique index AK_TB_SYSED on TB_SYSED (SYSED001,SYSED002);
create sequence SEQ_TB_SYSED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSED to public;
grant index  on TB_SYSED to public;
grant update on TB_SYSED to public; 
grant delete on TB_SYSED to public;  
grant insert on TB_SYSED to public; 
grant select on SEQ_TB_SYSED to public;   