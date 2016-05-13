/*
================================================================================
表结构代码:TB_SERME
表结构名称:商户卡号
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERME;
drop index AK_TB_SERME;
drop table TB_SERME;
create table TB_SERME  (                                       
   SERME_ID           INTEGER                 not null,            /*商户卡号ID        */  
   SERME001           INTEGER                 not null,            /*营运组织ID      */
   SERME002           VARCHAR2(30)            not null,            /*卡号              */   
   SERME003           INTEGER                 not null,            /*合同ID             */ 
   SERME004           VARCHAR2(80) ,                               /*商户账户名称             */  
   SERME005           VARCHAR2(80) ,                               /*商户账户账号             */   
   SERME006           VARCHAR2(80) ,                               /*商户开户行名称             */   
   SERME007           VARCHAR2(30) ,                               /*联系人             */ 
   SERME008           VARCHAR2(30) ,                               /*电话             */  
   SERME009           VARCHAR2(80) ,                               /*备注1             */   
   SERME010           VARCHAR2(80) ,                               /*备注2             */  
   SERME011           VARCHAR2(1)             not null,            /*状态  0.正常/1.停用             */ 
   SERME012           INTEGER,                                     /*数据转移id        */          
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERME primary key (SERME_ID)                               
);
create unique index AK_TB_SERME on TB_SERME (SERME002);                                                          
create sequence SEQ_TB_SERME minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERME to public;                                     
grant index  on TB_SERME to public;                                     
grant update on TB_SERME to public;                                      
grant delete on TB_SERME to public;                                       
grant insert on TB_SERME to public;                                      
grant select on SEQ_TB_SERME to public;                                        