/*
================================================================================
表结构代码:TB_SERIG
表结构名称:巡场单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIG;
drop index AK_TB_SERIG;
drop table TB_SERIG;
create table TB_SERIG  (                                       
   SERIG_ID           INTEGER                 not null,            /*巡场明细ID             */   
   SERIG001           INTEGER                 not null,            /*单别                   */   
   SERIG002           VARCHAR2(30)            not null ,           /*单号                   */   
   SERIG003           DATE,                                        /*巡场日期               */   
   SERIG004           VARCHAR2(10) ,                               /*巡场开始时间           */ 
   SERIG005           VARCHAR2(10) ,                               /*巡场结束时间           */     
   SERIG006           INTEGER,                                     /*巡场人员               */   
   SERIG007           INTEGER,                                     /*巡场商场               */ 
   SERIG008           INTEGER,                                     /*巡场楼栋               */   
   SERIG009           INTEGER,                                     /*巡场楼层               */
   SERIG010           INTEGER,                                     /*录入人                 */
   SERIG011           DATE,                                        /*录入日期               */
   SERIG012           VARCHAR2(1),                                 /*单据状态               */
   SERIG013           INTEGER,                                     /*审核人                 */
   SERIG014           DATE,                                        /*审核日期               */
   SERIG015           VARCHAR2(255),                               /*备注                   */
   CREATE_USER        VARCHAR2(12),                                /*建立人员                   */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门               */
   CREATE_DATE        DATE,                                        /*建立日期                   */
   MODIFIER           VARCHAR2(12),                                /*修改人员                   */
   MODI_DATE          DATE,                                        /*修改日期                   */
   FLAG               NUMBER(1),                                   /*资料状态                   */
   
   constraint PK_TB_SERIG primary key (SERIG_ID)                               
); 
create unique index AK_TB_SERIG on TB_SERIG (SERIG001,SERIG002,FLAG);                                                           
create sequence SEQ_TB_SERIG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIG to public;                                     
grant index  on TB_SERIG to public;                                     
grant update on TB_SERIG to public;                                      
grant delete on TB_SERIG to public;                                       
grant insert on TB_SERIG to public;                                      
grant select on SEQ_TB_SERIG to public;                                        