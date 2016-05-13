/*
================================================================================
表结构代码:TB_SERMH
表结构名称:商户信用扣分子ID
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMH;
drop index AK_TB_SERMH;
drop table TB_SERMH;
create table TB_SERMH  (                                       
   SERMH_ID           INTEGER                 not null,            /*商户信用扣分子ID  */   
   SERMH001           INTEGER                 not null,            /*商户信用扣分主ID  */   
   SERMH002           INTEGER                 not null,            /*扣分项目ID        */   
   SERMH003           NUMBER(4,2),                                 /*扣减分数          */  
   SERMH004           VARCHAR2(255),                               /*备注              */ 
   SERMH005           VARCHAR2(10),                                /*程序编码          */           
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMH primary key (SERMH_ID)                               
);                                           
create unique index AK_TB_SERMH on TB_SERMH (SERMH001,SERMH002,SERMH005,FLAG);               
create sequence SEQ_TB_SERMH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMH to public;                                     
grant index  on TB_SERMH to public;                                     
grant update on TB_SERMH to public;                                      
grant delete on TB_SERMH to public;                                       
grant insert on TB_SERMH to public;                                      
grant select on SEQ_TB_SERMH to public;                                        