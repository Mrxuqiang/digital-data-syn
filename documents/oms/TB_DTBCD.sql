O/*
================================================================================
表结构代码:TB_DTBCD
表结构名称:预排车单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCD;
drop index AK_TB_DTBCD;
drop table TB_DTBCD;
create table TB_DTBCD  (
   DTBCD_ID	        INTEGER                 not null,        /*预排单ID        */                  
   DTBCD001	        INTEGER                 not null,        /*预排单别         */                  
   DTBCD002	        VARCHAR2(30)            not null,        /*预排单号         */                  
   DTBCD003	        DATE                    not null,        /*排车日期         */                  
   DTBCD004	        INTEGER                 not null,        /*车辆编号         */                  
   DTBCD005	        VARCHAR2(1),                             /*来源类别         */   -- mark by  hansf              
   DTBCD006	        INTEGER,                                 /*出货地点        */                  
   DTBCD007	        INTEGER,                                 /*运输路径        */     -- mark by（界面隐藏）               
   DTBCD008	        INTEGER,                                 /*司机              */    -- modify by hansf 司机                
   DTBCD009	        NUMBER(12,2)            not null,        /*销售总收入     */                  
   DTBCD010	        INTEGER                 not null,        /*营运组织ID    */                  
   DTBCD011	        VARCHAR2(1)             not null,        /*审核状态         */                  
   DTBCD012	        INTEGER,                                 /*录入人员         */                  
   DTBCD013	        DATE,                                    /*录入日期         */                  
   DTBCD014	        INTEGER,                                 /*审核人员         */                  
   DTBCD015	        DATE,                                    /*审核日期         */        
   DTBCD016	        INTEGER,                                   /*搬运工1         */                  
   DTBCD017	        INTEGER,                                   /*搬运工2        */                  
   DTBCD018	        INTEGER,                                   /*搬运工3        */                              
   DTBCD019	        INTEGER,                                   /*安装工1         */                                 
   DTBCD020	        INTEGER,                                   /*安装工2        */ 
   DTBCD021             INTEGER,			           /*安装工3        */
   DTBCD022            DATE,                   		           /*送货日期      */
   DTBCD023            VARCHAR2(200),			   /*备注         */
   DTBCD024            VARCHAR2(200)			   /*备用         */
   DTBCD025	       VARCHAR2(255),                      /*备用         */  
   DTBCD026             VARCHAR2(1),                             /*单据状态  1.已排车  2.已出车       */  
   DTBCD027	        INTEGER,                                 /*车辆2            */ 
   DTBCD028	        INTEGER,                                 /*车辆3            */ 
   DTBCD029	        INTEGER,                                 /*司机2            */
   DTBCD030	        INTEGER,                                 /*司机3            */
   DTBCD031	        INTEGER,                                 /*搬运工4          */
   DTBCD032	        INTEGER,                                 /*搬运工5          */
   DTBCD033	        INTEGER,                                 /*搬运工6          */
   DTBCD034             INTEGER,                                 /*安装工4          */
   DTBCD035             INTEGER,                                 /*安装工5          */
   DTBCD036             INTEGER,                                 /*安装工6          */
   CREATE_USER      VARCHAR2(12),                          /*建立人员         */
   USER_GROUP       VARCHAR2(12),                          /*建立人员部门     */                               
   CREATE_DATE      DATE,                                       /*建立日期         */
   MODIFIER         VARCHAR2(12),                               /*修改人员         */
   MODI_DATE        DATE,                                       /*修改日期         */
   FLAG             NUMBER(1),                                  /*资料状态         */
   constraint PK_TB_DTBCD primary key (DTBCD_ID)
);
create unique index AK_TB_DTBCD on TB_DTBCD (DTBCD001,DTBCD002);
create sequence SEQ_TB_DTBCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCD to public;
grant index  on TB_DTBCD to public;
grant update on TB_DTBCD to public; 
grant delete on TB_DTBCD to public;  
grant insert on TB_DTBCD to public; 
grant select on SEQ_TB_DTBCD to public;   