/*20141010 CREATE BY SUNDAN 
================================================================================
表结构代码:TB_SERNB
表结构名称:检测任务分解子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERNB;
drop index AK_TB_SERNB;
drop table TB_SERNB;
create table TB_SERNB  (                                       
   SERNB_ID           INTEGER                 not null,            /*检测任务分解子表ID    */   
   SERNB001           INTEGER		      not null,            /*检测任务分解主表ID    */ 
   SERNB002           INTEGER                 not null,            /*营运组织ID            */
   SERNB003           NUMBER(10),				   /*品牌系列基数          */
   SERNB004           NUMBER(3) ,                                  /*检测比例（%）         */
   SERNB005           INTEGER,                                     /*大区ID                */ 
   SERNB006           INTEGER,                                     /*小区ID                */ 
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERNB primary key (SERNB_ID)                               
);                                           
create unique index AK_TB_SERNB on TB_SERNB (SERNB001,SERNB002,FLAG);               
create sequence SEQ_TB_SERNB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERNB to public;                                     
grant index  on TB_SERNB to public;                                     
grant update on TB_SERNB to public;                                      
grant delete on TB_SERNB to public;                                       
grant insert on TB_SERNB to public;                                      
grant select on SEQ_TB_SERNB to public;                                        