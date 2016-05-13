/*
================================================================================
表结构代码:TB_SYSEF
表结构名称:任务运行日志表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSEF;
drop index AK_TB_SYSEF;
drop table TB_SYSEF;
create table TB_SYSEF  (
   SYSEF_ID             INTEGER                         not null,  /*任务运行日志ID   */
   SYSEF001             INTEGER                         not null,  /*任务条目ID       */
   SYSEF002             DATE                            not null,  /*开始日期         */
   SYSEF003             DATE                            not null,  /*开始时间         */
   SYSEF004             DATE                            not null,  /*结束日期         */
   SYSEF005             DATE                            not null,  /*结束时间         */
   SYSEF006             NUMBER(12)                      not null,  /*耗时(秒)         */
   SYSEF007             INTEGER                         not null,  /*运行营运组织ID   */
   SYSEF008             VARCHAR2(1)                     not null,  /*结果             */
   SYSEF009             VARCHAR2(255),                             /*说明             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSEF primary key (SYSEF_ID)
);
create unique index AK_TB_SYSEF on TB_SYSEF (SYSEF001,SYSEF002,SYSEF003,SYSEF007);
create sequence SEQ_TB_SYSEF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEF to public;
grant index  on TB_SYSEF to public;
grant update on TB_SYSEF to public; 
grant delete on TB_SYSEF to public;  
grant insert on TB_SYSEF to public; 
grant select on SEQ_TB_SYSEF to public;   