/*
20130803 add by gaoxl for 信用分类增加合同id和商户id
*/
/*
================================================================================
表结构代码:TB_SERIC
表结构名称:商检结果主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIC;
drop index AK_TB_SERIC;
drop table TB_SERIC;
create table TB_SERIC  (                                       
   SERIC_ID           INTEGER                 not null,            /*检测结果单主ID */   
   SERIC001           INTEGER                 not null,            /*单别           */   
   SERIC002           VARCHAR2(30)            not null,            /*单号           */   
   SERIC003           DATE                    not null,            /*检测日期       */   
   SERIC004           INTEGER                 not null,            /*检测商场       */   
   SERIC005           INTEGER,                                     /*检测计划编号   */   
   SERIC006           INTEGER,                                     /*检测计划子ID   */ 
   SERIC007           INTEGER,                                     /*楼栋           */ 
   SERIC008           INTEGER,                                     /*楼层           */ 
   SERIC009           INTEGER,                                     /*展位           */ 
   SERIC010           INTEGER,                                     /*品牌           */   
   SERIC011           VARCHAR2(1),                                 /*抽检原因        */
   SERIC012           INTEGER,                                     /*录入人          */
   SERIC013           DATE,                                        /*录入日期        */
   SERIC014           VARCHAR2(1),                                 /*单据状态        */ 
   SERIC015           INTEGER,                                     /*审核人          */
   SERIC016           DATE,                                        /*审核日期        */
   SERIC017           INTEGER,                                     /*商户ID          */
   SERIC018           INTEGER,                                     /*合同ID          */   
   SERIC019           INTEGER,                                     /*抽检月份          */ --20141204 add by sundan
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERIC primary key (SERIC_ID)                               
);                                           
create unique index AK_TB_SERIC on TB_SERIC (SERIC001,SERIC002,SERIC004,SERIC005,SERIC006,SERIC011,FLAG);               
create sequence SEQ_TB_SERIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIC to public;                                     
grant index  on TB_SERIC to public;                                     
grant update on TB_SERIC to public;                                      
grant delete on TB_SERIC to public;                                       
grant insert on TB_SERIC to public;                                      
grant select on SEQ_TB_SERIC to public;                                        