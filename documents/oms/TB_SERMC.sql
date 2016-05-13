/*
================================================================================
表结构代码:TB_SERMC
表结构名称:商户信用等级分类
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMC;
drop index AK_TB_SERMC;
drop table TB_SERMC;
create table TB_SERMC  (                                       
   SERMC_ID           INTEGER                 not null,            /*信用等级分类ID  */   
   SERMC001           VARCHAR2(10)            not null,            /*信用分类编码    */   
   SERMC002           VARCHAR2(30) ,                               /*信用分类名称    */   
   SERMC003           NUMBER(2),                                   /*最低分数        */   
   SERMC004           NUMBER(3) ,                                  /*最高分数        */   
   SERMC005           VARCHAR2(255),                               /*备注            */     
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERMC primary key (SERMC_ID)                               
);                                           
create unique index AK_TB_SERMC on TB_SERMC (SERMC001,FLAG);               
create sequence SEQ_TB_SERMC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMC to public;                                     
grant index  on TB_SERMC to public;                                     
grant update on TB_SERMC to public;                                      
grant delete on TB_SERMC to public;                                       
grant insert on TB_SERMC to public;                                      
grant select on SEQ_TB_SERMC to public;                                        