/*
================================================================================
表结构代码:TB_SMSAH
表结构名称:推送任务参数表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SMSAH;
drop index AK_TB_SMSAH;
drop table TB_SMSAH;
create table TB_SMSAH  (
   SMSAH_ID            INTEGER,                 not null,           /*推送任务参数ID  */        
   SMSAH001            INTEGER,                 not null,           /*推送任务定义ID  */ 缺省ID(SMSAG_ID)     
   SMSAH002            VARCHAR2(12),                                /*参数编码        */ 编号以arg+全局序列编号的形式显示，系统自动生成
   SMSAH003            VARCHAR2(1),                                 /*参数类型        */ 1.INTEGER 2.VARCHAR2 3.DATE 4.NUMBER
   SMSAH004            VARCHAR2(30),                                /*参数描述        */ 手动输入，默认取表结构中表字段名称
   CREATE_USER         VARCHAR2(12),                                /*建立人员        */
   USER_GROUP          VARCHAR2(12),                                /*建立人员部门    */                             
   CREATE_DATE         DATE,                                        /*建立日期        */
   MODIFIER            VARCHAR2(12),                                /*修改人员        */
   MODI_DATE           DATE,                                        /*修改日期        */
   FLAG                NUMBER,                                      /*资料状态        */
   constraint PK_TB_SMSAH primary key (SMSAH_ID)
);
create unique index AK_TB_SMSAH on TB_SMSAH (SMSAH001,SMSAH002);
create sequence SEQ_TB_SMSAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAH to public;
grant index  on TB_SMSAH to public;
grant update on TB_SMSAH to public; 
grant delete on TB_SMSAH to public;  
grant insert on TB_SMSAH to public; 
grant select on SEQ_TB_SMSAH to public;   