/*
20130912 add by gaoxl for 红星：增加巡检结果
*/
/*
================================================================================
表结构代码:TB_SERIF
表结构名称:巡检违规扣分单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIF;
drop index AK_TB_SERIF;
drop table TB_SERIF;
create table TB_SERIF  (                                       
   SERIF_ID           INTEGER                 not null,            /*巡检违规扣分单子ID */   
   SERIF001           INTEGER                 not null,            /*巡检违规扣分单主ID */   
   SERIF002           INTEGER                 not null ,           /*商户ID             */   
   SERIF003           INTEGER,                                     /*展位ID             */   
   SERIF004           INTEGER ,                                    /*合同ID             */   
   SERIF005           INTEGER,                                     /*品牌ID             */   
   SERIF006           INTEGER,                                     /*巡检项目ID         */ 
   SERIF007           VARCHAR2(1),                                 /*是否扣分项         */    
   SERIF008           NUMBER(2),                                   /*扣减分数           */    
   SERIF009           VARCHAR2(255),                               /*扣分说明           */
   SERIF010           VARCHAR2(255),                               /*备注               */
   SERIF011           VARCHAR2(1),                                 /*巡检结果           */   
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERIF primary key (SERIF_ID)                               
); 
create unique index AK_TB_SERIF on TB_SERIF (SERIF001,SERIF002,SERIF003,SERIF004,SERIF005,SERIF006,FLAG);                                                           
create sequence SEQ_TB_SERIF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIF to public;                                     
grant index  on TB_SERIF to public;                                     
grant update on TB_SERIF to public;                                      
grant delete on TB_SERIF to public;                                       
grant insert on TB_SERIF to public;                                      
grant select on SEQ_TB_SERIF to public;                                        