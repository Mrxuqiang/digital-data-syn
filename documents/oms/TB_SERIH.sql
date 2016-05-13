/*
================================================================================
表结构代码:TB_SERIH
表结构名称:巡场单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIH;
drop index AK_TB_SERIH;
drop table TB_SERIH;
create table TB_SERIH  (                                       
   SERIH_ID           INTEGER                 not null,            /*巡场子ID               */   
   SERIH001           INTEGER                 not null,            /*巡场主ID               */   
   SERIH002           INTEGER                 not null ,           /*巡场项目ID             */   
   SERIH003           VARCHAR2(1),                                 /*巡场结果               */   
   SERIH004           VARCHAR2(255) ,                              /*巡场说明               */ 
   SERIH005           VARCHAR2(255) ,                              /*备注                   */     
   CREATE_USER        VARCHAR2(12),                                /*建立人员                   */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门               */
   CREATE_DATE        DATE,                                        /*建立日期                   */
   MODIFIER           VARCHAR2(12),                                /*修改人员                   */
   MODI_DATE          DATE,                                        /*修改日期                   */
   FLAG               NUMBER(1),                                   /*资料状态                   */
   
   constraint PK_TB_SERIH primary key (SERIH_ID)                               
); 
create unique index AK_TB_SERIH on TB_SERIH (SERIH001,SERIH002,FLAG);                                                           
create sequence SEQ_TB_SERIH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIH to public;                                     
grant index  on TB_SERIH to public;                                     
grant update on TB_SERIH to public;                                      
grant delete on TB_SERIH to public;                                       
grant insert on TB_SERIH to public;                                      
grant select on SEQ_TB_SERIH to public;                                        