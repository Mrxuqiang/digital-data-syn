/*
================================================================================
表结构代码:TB_SERMA
表结构名称:投诉规则设置
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMA;
drop index AK_TB_SERMA;
drop table TB_SERMA;
create table TB_SERMA  (                                       
   SERMA_ID           INTEGER                 not null,            /*投诉规则ID      */     
   SERMA002           NUMBER(2) ,                                  /*低升中时间      */   
   SERMA003           NUMBER(2),                                   /*中升高时间      */   
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERMA primary key (SERMA_ID)                               
);                                                         
create sequence SEQ_TB_SERMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMA to public;                                     
grant index  on TB_SERMA to public;                                     
grant update on TB_SERMA to public;                                      
grant delete on TB_SERMA to public;                                       
grant insert on TB_SERMA to public;                                      
grant select on SEQ_TB_SERMA to public;                                        