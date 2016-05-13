/*
================================================================================
表结构代码:TB_SMSAE
表结构名称:推送任务执行表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SMSAE;
drop index AK_TB_SMSAE;
drop table TB_SMSAE;
create table TB_SMSAE  ( 
   SMSAE001            INTEGER,                                     /*任务执行批号     */  系统自动生成 
   SMSAE002            INTEGER,                                     /*推送任务单号     */  job实际执行的任务单号
   SMSAE003            VARCHAR2(255),                               /*推送任务简述     */  根据job执行的任务单号找到对应的任务简述
   SMSAE004            VARCHAR2(6),                                 /*推送任务层级     */  根据job执行的任务单号找到对应的任务层级
   SMSAE005            DATE,                                        /*开始日期         */  显示job实际开始执行的系统日期，系统自动赋值
   SMSAE006            DATE,                                        /*开始时间         */  显示job实际开始执行的系统时分秒，系统自动赋值
   SMSAE007            DATE,                                        /*结束日期         */  显示job实际执行结束的系统日期，系统自动赋值
   SMSAE008            DATE,                                        /*结束时间         */  显示job实际执行结束的系统时分秒，系统自动赋值
   SMSAE009            INTEGER,                                     /*耗时（秒）       */  结束时间-开始时间，换算到秒
   SMSAE010            INTEGER,                                     /*推送数量         */  该任务执行批号中包含的明细条数
   CREATE_USER         VARCHAR2(12),                                /*建立人员         */
   USER_GROUP          VARCHAR2(30),                                /*建立人员部门     */                             
   CREATE_DATE         DATE,                                        /*建立日期         */
   MODIFIER            VARCHAR2(12),                                /*修改人员         */
   MODI_DATE           DATE,                                        /*修改日期         */
   FLAG                NUMBER,                                      /*资料状态         */
   constraint PK_TB_SMSAE primary key (SMSAE001)
);
create unique index AK_TB_SMSAE on TB_SMSAE (SMSAE001);
create sequence SEQ_TB_SMSAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAE to public;
grant index  on TB_SMSAE to public;
grant update on TB_SMSAE to public; 
grant delete on TB_SMSAE to public;  
grant insert on TB_SMSAE to public; 
grant select on SEQ_TB_SMSAE to public;   