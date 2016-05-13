/*
================================================================================
表结构代码:TB_SYSDK
表结构名称:审批角色子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SYSDK;
drop index AK_TB_SYSDK;
drop table TB_SYSDK;
create table TB_SYSDK  (
   SYSDK_ID             INTEGER                         not null,  /*审批角色子ID           */
   SYSDK001             INTEGER                         not null,  /*审批角色主id         */
   SYSDK002             INTEGER                         not null,  /*员工id               */
   SYSDK003             VARCHAR2(256),                             /*备注                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER,                                    /*资料状态              */
   constraint PK_TB_SYSDK primary key (SYSDK_ID)
);
create unique index AK_TB_SYSDK on TB_SYSDK (SYSDK001,SYSDK002,FLAG);
create sequence SEQ_TB_SYSDK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDK to public;
grant index  on TB_SYSDK to public;
grant update on TB_SYSDK to public; 
grant delete on TB_SYSDK to public;  
grant insert on TB_SYSDK to public; 
grant select on SEQ_TB_SYSDK to public;   