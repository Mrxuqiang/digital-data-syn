/*
================================================================================
表结构代码:TB_MSSAD
表结构名称：标价签打印规则设置子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_MSSAD;
drop index AK_TB_MSSAD;
drop table TB_MSSAD;
create table TB_MSSAD  (
   MSSAD_ID           INTEGER                          not null,         /*标价签打印规则设置子ID */   
   MSSAD001           INTEGER                          not null,         /*标价签打印规则主ID     */   
   MSSAD002           DATE,                                              /*限制调价开始时间       */  
   MSSAD003           DATE ,                                             /*限制调价结束时间       */ 
   MSSAD004           VARCHAR2(256) ,                                    /*备注       */    
   CREATE_USER        VARCHAR2(1),                                       /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                      /*建立人员部门      */                               
   CREATE_DATE        DATE,                                              /*建立日期          */
   MODIFIER           VARCHAR2(12),                                      /*修改人员          */
   MODI_DATE          DATE,                                              /*修改日期          */
   FLAG               NUMBER(1),                                         /*资料状态          */
   constraint PK_TB_MSSAD primary key (MSSAD_ID)
);
create sequence SEQ_TB_MSSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAD to public;
grant index  on TB_MSSAD to public;
grant update on TB_MSSAD to public; 
grant delete on TB_MSSAD to public;  
grant insert on TB_MSSAD to public; 
grant select on SEQ_TB_MSSAD to public;   