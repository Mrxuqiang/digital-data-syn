/*
================================================================================
表结构代码:TB_SEROI
表结构名称:展厅促销申请
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SEROI;
drop index AK_TB_SEROI;
drop table TB_SEROI;
create table TB_SEROI  (
   SEROI_ID             INTEGER                         not null,  /*展厅促销申请明细ID*/
   SEROI001             INTEGER                         not null,  /*展厅促销申请ID    */
   SEROI002             INTEGER                         not null,  /*序号           */
   SEROI003             VARCHAR2(300)                  not null,   /*物料名称       */   
   SEROI004             VARCHAR2(300),                             /*尺寸           */   
   SEROI005             VARCHAR2(300) ,                            /*位置           */ 
   SEROI006             INTEGER ,                                  /*数量           */  
   SEROI007             VARCHAR2(500) ,                            /*材质           */  
   SEROI008             VARCHAR2(2000) ,                           /*备注           */     
   SEROI009             VARCHAR2(500) ,                            /*保留字段1      */  
   SEROI010             VARCHAR2(500),                             /*保留字段2      */  
   SEROI011             VARCHAR2(500),                             /*保留字段3      */  
   SEROI012             VARCHAR2(500),                             /*保留字段4      */  
   SEROI013             VARCHAR2(500),                             /*保留字段5      */  
   SEROI014             VARCHAR2(500),                             /*保留字段6      */  
   SEROI015             VARCHAR2(500),                             /*保留字段7      */  
   SEROI016             VARCHAR2(500),                             /*保留字段8      */  
   SEROI017             VARCHAR2(500),                             /*保留字段9      */  
   SEROI018             VARCHAR2(500),                             /*保留字段10     */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门   */                               
   CREATE_DATE          DATE,                                      /*建立日期       */
   MODIFIER             VARCHAR2(12),                              /*修改人员       */
   MODI_DATE            DATE,                                      /*修改日期       */
   FLAG                 NUMBER(1),                                 /*资料状态       */
   constraint PK_TB_SEROI primary key (SEROI_ID)
);
create unique index AK_TB_SEROI on TB_SEROI (SEROI001,SEROI003,FLAG);
create sequence SEQ_TB_SEROI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROI to public;
grant index  on TB_SEROI to public;
grant update on TB_SEROI to public; 
grant delete on TB_SEROI to public;  
grant insert on TB_SEROI to public; 
grant select on SEQ_TB_SEROI to public;   