/*
================================================================================
表结构代码:TB_SERML
表结构名称:店铺信息维护
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERML;
drop index AK_TB_SERML;
drop table TB_SERML;
create table TB_SERML  (                                       
   SERML_ID           INTEGER                 not null,            /*店铺id    */   
   SERML001           INTEGER                 not null,            /*商场id    */   
   SERML002           INTEGER                 not null,            /*品牌id    */  
   SERML003           INTEGER                 not null,            /*商户id    */ 
   SERML004           INTEGER                 not null,            /*展位id    */ 
   SERML005           INTEGER,                                     /*合同id    */            
   SERML006           DATE,                                        /*创店日期  */
   SERML007           VARCHAR2(100),                               /*店铺位置  */
   SERML008           VARCHAR2(100),                               /*门头      */
   SERML009           INTEGER,                                     /*楼层id    */
   SERML010           VARCHAR2(255),                               /*备注      */              
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERML primary key (SERML_ID)                               
);                                           
create unique index AK_TB_SERML on TB_SERML (SERML001,SERML002,SERML003,SERML004,FLAG);               
create sequence SEQ_TB_SERML minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERML to public;                                     
grant index  on TB_SERML to public;                                     
grant update on TB_SERML to public;                                      
grant delete on TB_SERML to public;                                       
grant insert on TB_SERML to public;                                      
grant select on SEQ_TB_SERML to public;                                        