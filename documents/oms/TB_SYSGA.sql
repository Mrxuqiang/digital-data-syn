/*
================================================================================
表结构代码:TB_SYSGA
表结构名称:接口规则定义主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSGA;
drop index AK_TB_SYSGA;
drop table TB_SYSGA;
create table TB_SYSGA  (
   SYSGA_ID             INTEGER                         not null,  /*接口规则ID       */
   SYSGA001             VARCHAR2(4)                     not null,  /*接口规则代码     */
   SYSGA002             VARCHAR2(30)                    not null,  /*接口规则名称     */
   SYSGA003             VARCHAR2(255)                   not null,  /*接口规则说明     */
   SYSGA004             VARCHAR2(2)                     not null,  /*来源数据类型     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSGA primary key (SYSGA_ID)
);
create unique index AK_TB_SYSGA on TB_SYSGA (SYSGA001);
create sequence SEQ_TB_SYSGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSGA to public;
grant index  on TB_SYSGA to public;
grant update on TB_SYSGA to public; 
grant delete on TB_SYSGA to public;  
grant insert on TB_SYSGA to public; 
grant select on SEQ_TB_SYSGA to public;   