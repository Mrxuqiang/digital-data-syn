/*
================================================================================
表结构代码:TB_SERIE
表结构名称:巡检违规扣分单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIE;
drop index AK_TB_SERIE;
drop table TB_SERIE;
create table TB_SERIE  (                                       
   SERIE_ID           INTEGER                 not null,            /*巡检违规扣分单主ID     */   
   SERIE001           INTEGER                 not null,            /*单别                   */   
   SERIE002           VARCHAR2(30)            not null ,           /*单号                   */   
   SERIE003           DATE,                                        /*巡检日期               */   
   SERIE004           VARCHAR2(10) ,                               /*巡检开始时间           */ 
   SERIE005           VARCHAR2(10) ,                               /*巡检结束时间           */     
   SERIE006           INTEGER,                                     /*巡检人员               */   
   SERIE007           INTEGER,                                     /*巡检商场               */ 
   SERIE008           INTEGER,                                     /*巡检楼栋               */   
   SERIE009           INTEGER,                                     /*巡检楼层               */
   SERIE010           INTEGER,                                     /*录入人                 */
   SERIE011           DATE,                                        /*录入日期               */
   SERIE012           VARCHAR2(1),                                 /*单据状态               */
   SERIE013           INTEGER,                                     /*审核人                 */
   SERIE014           DATE,                                        /*审核日期               */
   SERIE015           VARCHAR2(255),                               /*备注                   */
   CREATE_USER        VARCHAR2(12),                                /*建立人员               */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门           */
   CREATE_DATE        DATE,                                        /*建立日期               */
   MODIFIER           VARCHAR2(12),                                /*修改人员               */
   MODI_DATE          DATE,                                        /*修改日期               */
   FLAG               NUMBER(1),                                   /*资料状态               */
   
   constraint PK_TB_SERIE primary key (SERIE_ID)                               
); 
create unique index AK_TB_SERIE on TB_SERIE (SERIE001,SERIE002);                                                           
create sequence SEQ_TB_SERIE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIE to public;                                     
grant index  on TB_SERIE to public;                                     
grant update on TB_SERIE to public;                                      
grant delete on TB_SERIE to public;                                       
grant insert on TB_SERIE to public;                                      
grant select on SEQ_TB_SERIE to public;                                        