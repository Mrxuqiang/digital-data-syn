20141106 CREATE BY SUNDAN
20141111 modi by gaoxl 修改唯一索引 create unique index AK_TB_SERMO on TB_SERMO (SERMO_ID)
20141205 mod by gaoxl for  信用等级SERMO009 VARCHAR2(10)修改为 INTEGER ，add SERMO018，SERMO019                               
/*
================================================================================
表结构代码:TB_SERMO
表结构名称:商户信用等级表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERMO;
drop index AK_TB_SERMO;
drop table TB_SERMO;
create table TB_SERMO  (                                       
   SERMO_ID           INTEGER                 not null,            /*商户信用等级ID  */   
   SERMO001           INTEGER                 not null,            /*商户ID          */   
   SERMO002           INTEGER                 not null,            /*展厅ID          */   
   SERMO003           INTEGER,                                     /*品牌id          */  
   SERMO004           INTEGER,                                     /*楼层id          */ 
   SERMO005           INTEGER,                                     /*品类id          */   
   SERMO006           VARCHAR2(30),                                /*门牌号          */
   SERMO007           VARCHAR2(4),                                 /*年度            */
   SERMO008           VARCHAR2(4),                                 /*季度            */
   SERMO009           INTEGER,                                     /*信用等级        */
   SERMO010           INTEGER,                                     /*摘星次数        */
   SERMO011           INTEGER,                                     /*降星次数        */
   SERMO012           NUMBER(12,2),                                /*顾客喜爱度      */
   SERMO013           NUMBER(12,2),                                /*售后服务        */
   SERMO014           NUMBER(12,2),                                /*商品价格        */
   SERMO015           NUMBER(12,2),                                /*质量管理        */
   SERMO016           NUMBER(12,2),                                /*综合管理        */
   SERMO017           INTEGER,                                     /*商场id          */ 
   SERMO018           NUMBER(12),                                  /*商品质量得分    */   
   SERMO019           NUMBER(12),                                  /*送货服务得分    */     
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMO primary key (SERMO_ID)                               
);                                           
create unique index AK_TB_SERMO on TB_SERMO (SERMO017,SERMO001,SERMO002,SERMO007,SERMO008,SERMO003,SERMO005,flag);               
create sequence SEQ_TB_SERMO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMO to public;                                     
grant index  on TB_SERMO to public;                                     
grant update on TB_SERMO to public;                                      
grant delete on TB_SERMO to public;                                       
grant insert on TB_SERMO to public;                                      
grant select on SEQ_TB_SERMO to public;                                        