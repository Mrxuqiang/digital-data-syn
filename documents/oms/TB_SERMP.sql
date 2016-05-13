/*
================================================================================
表结构代码:TB_SERMP
表结构名称:纬度总分定义主表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMP;
drop index AK_TB_SERMP;
drop table TB_SERMP;
create table TB_SERMP  (                                       
   SERMP_ID           INTEGER                 not null,            /*纬度总分定义主ID         */   
   SERMP001           NUMBER(4)               not null,            /*年度                     */   
   SERMP002           NUMBER(2)               not null,            /*季度                     */   
   SERMP003           VARCHAR2(255),                               /*备注                     */            
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMP primary key (SERMP_ID)                               
);                                           
create unique index AK_TB_SERMP on TB_SERMP (SERMP001,SERMP002,FLAG);               
create sequence SEQ_TB_SERMP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMP to public;                                     
grant index  on TB_SERMP to public;                                     
grant update on TB_SERMP to public;                                      
grant delete on TB_SERMP to public;                                       
grant insert on TB_SERMP to public;                                      
grant select on SEQ_TB_SERMP to public;                                        