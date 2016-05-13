/*
================================================================================
表结构代码:TB_SYSEE
表结构名称:任务条目消息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSEE;
drop index AK_TB_SYSEE;
drop table TB_SYSEE;
create table TB_SYSEE  (
   SYSEE_ID             INTEGER                         not null,  /*任务条目消息ID   */
   SYSEE001             INTEGER                         not null,  /*任务条目ID       */
   SYSEE002             VARCHAR2(1)                     not null,  /*消息类型         */
   SYSEE003             VARCHAR2(60)                    not null,  /*消息对象         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSEE primary key (SYSEE_ID)
);
create unique index AK_TB_SYSEE on TB_SYSEE (SYSEE001,SYSEE002,SYSEE003);
create sequence SEQ_TB_SYSEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEE to public;
grant index  on TB_SYSEE to public;
grant update on TB_SYSEE to public; 
grant delete on TB_SYSEE to public;  
grant insert on TB_SYSEE to public; 
grant select on SEQ_TB_SYSEE to public;   