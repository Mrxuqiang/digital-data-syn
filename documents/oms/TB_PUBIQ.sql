/*
================================================================================
表结构代码:TB_PUBIQ
表结构名称:excel导出模板字段定义表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PUBIQ;
drop index AK_TB_PUBIQ;
drop table TB_PUBIQ;
create table TB_PUBIQ  (
   PUBIQ_ID             INTEGER                         not null,  /*excel模板ID */
   PUBIQ001             VARCHAR2(100)                   not null,  /*字段        */
   PUBIQ002             VARCHAR2(1),                               /*字段类型    */
   PUBIQ003             VARCHAR2(200),                             /*字段长度    */
   PUBIQ004             VARCHAR2(200),                             /*映射字段    */ 
   PUBIQ005             VARCHAR2(200),                             /*为空检查    */  
   PUBIQ006             VARCHAR2(200),                             /*导入检查    */  
   PUBIQ007             VARCHAR2(4000),                            /*表名        */  
   PUBIQ008             VARCHAR2(200),                             /*重复检查    */  
   PUBIQ009             VARCHAR2(200),                             /*标题        */  
   PUBIQ010             VARCHAR2(200),                              /*备用1*/  
   PUBIQ011             VARCHAR2(200),                              /*备用1*/  
   PUBIQ012             VARCHAR2(200),                              /*备用1*/ 
   PUBIQ013             VARCHAR2(200),                              /*备用1*/ 
   PUBIQ014             VARCHAR2(100),                              /*备用1*/ 
   PUBIQ015             VARCHAR2(200),                              /*备用1*/ 
   PUBIQ016             VARCHAR2(200),                              /*备用1*/     
   PUBIQ017             VARCHAR2(200),                              /*备用1*/    
   PUBIQ018             VARCHAR2(200),                              /*备用1*/  
   PUBIQ019             VARCHAR2(200),                              /*备用1*/   
   PUBIQ020             VARCHAR2(200),                              /*备用1*/ 
   PUBIQ021             VARCHAR2(200),                              /*备用1*/    
   PUBIQ022             VARCHAR2(200),                              /*备用1*/  
   PUBIQ023             VARCHAR2(200),                              /*备用1*/  
   PUBIQ024             VARCHAR2(200),                              /*备用1*/  
   PUBIQ025             VARCHAR2(200),                              /*备用1*/                                             
   CREATE_USER          VARCHAR2(12),                               /*建立人员           */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门       */                               
   CREATE_DATE          DATE,                                       /*建立日期           */
   MODIFIER             VARCHAR2(12),                               /*修改人员           */
   MODI_DATE            DATE,                                       /*修改日期           */
   FLAG                 NUMBER,                                     /*资料状态           */
   constraint PK_TB_PUBIQ primary key (PUBIQ_ID)
);
create unique index AK_TB_PUBIQ on TB_PUBIQ(PUBIQ031,PUBIQ032,FLAG);
create sequence SEQ_TB_PUBIQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIQ to public;
grant index  on TB_PUBIQ to public;
grant update on TB_PUBIQ to public; 
grant delete on TB_PUBIQ to public;  
grant insert on TB_PUBIQ to public;  
grant select on SEQ_TB_PUBIQ to public;   
