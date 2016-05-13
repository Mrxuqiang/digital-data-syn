/*
================================================================================
表结构代码:TB_SYSDJ
表结构名称:审批角色表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SYSDJ;
drop index AK_TB_SYSDJ;
drop table TB_SYSDJ;
create table TB_SYSDJ  (
   SYSDJ_ID             INTEGER                         not null,  /*审批角色ID           */
   SYSDJ001             VARCHAR2(10)                    not null,  /*审批角色代码         */
   SYSDJ002             VARCHAR2(40)                    not null,  /*审批角色名称         */
   SYSDJ003             INTEGER,                                   /*上级审批角色ID       */
   SYSDJ004             VARCHAR2(256),                             /*备注                 */
   SYSDJ005             VARCHAR2(1),                               /*审批角色属性         */
   SYSDJ006             INTEGER,                                   /*作业编号ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER,                                    /*资料状态              */
   constraint PK_TB_SYSDJ primary key (SYSDJ_ID)
);
create unique index AK_TB_SYSDJ on TB_SYSDJ (SYSDJ001);
create sequence SEQ_TB_SYSDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDJ to public;
grant index  on TB_SYSDJ to public;
grant update on TB_SYSDJ to public; 
grant delete on TB_SYSDJ to public;  
grant insert on TB_SYSDJ to public; 
grant select on SEQ_TB_SYSDJ to public;   