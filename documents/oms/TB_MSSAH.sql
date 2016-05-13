/*
================================================================================
表结构代码:TB_MSSAH
表结构名称：标价签打印规则设置子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_MSSAH;
drop index AK_TB_MSSAH;
drop table TB_MSSAH;
create table TB_MSSAH  (
   MSSAH_ID           INTEGER                          not null,         /*标价签打印规则设置子ID */   
   MSSAH001           INTEGER                          not null,         /*标价签打印规则主ID     */   
   MSSAH002           DATE,                                              /*限制调价开始时间       */  
   MSSAH003           DATE ,                                             /*限制调价结束时间       */ 
   MSSAH004           VARCHAR2(256) ,                                    /*备注       */    
   CREATE_USER        VARCHAR2(1),                                       /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                      /*建立人员部门      */                               
   CREATE_DATE        DATE,                                              /*建立日期          */
   MODIFIER           VARCHAR2(12),                                      /*修改人员          */
   MODI_DATE          DATE,                                              /*修改日期          */
   FLAG               NUMBER(1),                                         /*资料状态          */
   constraint PK_TB_MSSAH primary key (MSSAH_ID)
);
create sequence SEQ_TB_MSSAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAH to public;
grant index  on TB_MSSAH to public;
grant update on TB_MSSAH to public; 
grant delete on TB_MSSAH to public;  
grant insert on TB_MSSAH to public; 
grant select on SEQ_TB_MSSAH to public;   