/*
================================================================================
表结构代码:TB_DTBCG
表结构名称:排车单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCG;
drop index AK_TB_DTBCG;
drop table TB_DTBCG;
create table TB_DTBCG  (
   DTBCG_ID	        INTEGER                 not null,    /*排车单ID        */                  
   DTBCG001	        INTEGER                 not null,    /*排车单别        */                  
   DTBCG002	        VARCHAR2(30)            not null,    /*排车单号        */                  
   DTBCG003         INTEGER                 not null,    /*预排车单ID      */ 
   DTBCG004	        DATE                    not null,    /*排车日期        */ 
   DTBCG005	        INTEGER                 not null,    /*车辆编号        */                  
   DTBCG006	        VARCHAR2(1),                         /*来源类别        */                  
   DTBCG007	        INTEGER,                             /*出货地点        */                  
   DTBCG008	        INTEGER,                             /*运输路径        */                  
   DTBCG009	        INTEGER,                             /*车队            */                  
   DTBCG010	        NUMBER(12,2)            not null,    /*销售总收入      */                  
   DTBCG011	        INTEGER                 not null,    /*营运组织ID      */                  
   DTBCG012	        VARCHAR2(1)             not null,    /*审核状态        */                  
   DTBCG013	        INTEGER,                             /*录入人员        */                  
   DTBCG014	        DATE,                                /*录入日期        */                  
   DTBCG015	        INTEGER,                             /*审核人员        */                  
   DTBCG016	        DATE,                                /*审核日期        */   
   DTBCG017	        INTEGER,                             /*随车人员1        */                  
   DTBCG018	        INTEGER,                             /*随车人员2        */                  
   DTBCG019	        INTEGER,                             /*随车人员3        */                              
   DTBCG020	        INTEGER,                             /*随车人员4        */                                 
   DTBCG021	        INTEGER,                            /*随车人员5        */                                
   CREATE_USER      VARCHAR2(12),                               /*建立人员         */
   USER_GROUP       VARCHAR2(12),                               /*建立人员部门     */                               
   CREATE_DATE      DATE,                                       /*建立日期         */
   MODIFIER         VARCHAR2(12),                               /*修改人员         */
   MODI_DATE        DATE,                                       /*修改日期         */
   FLAG             NUMBER(1),                                  /*资料状态         */
   constraint PK_TB_DTBCG primary key (DTBCG_ID)
);
create unique index AK_TB_DTBCG on TB_DTBCG (DTBCG001,DTBCG002);
create sequence SEQ_TB_DTBCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCG to public;
grant index  on TB_DTBCG to public;
grant update on TB_DTBCG to public; 
grant delete on TB_DTBCG to public;  
grant insert on TB_DTBCG to public; 
grant select on SEQ_TB_DTBCG to public;   