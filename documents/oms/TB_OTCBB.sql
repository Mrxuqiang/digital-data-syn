================================================================================
表结构代码:TB_OTCBB
表结构名称:投诉受理单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_OTCBB;
drop index AK_TB_OTCBB;
drop table TB_OTCBB;
create table TB_OTCBB  (       
   OTCBB_ID             INTEGER                        not null,   /*自动增长ID            */                                                     
   OTCBB001             VARCHAR2(30)                   not null,   /*投诉单编号          */            
   OTCBB002             DATE                           not null,   /*投诉日期            */            
   OTCBB003             INTEGER                        not null,   /*商场编号            */   
   OTCBB004             VARCHAR2(1000)，               not null,   /*投诉内容            */ 
   OTCBB005             VARCHAR2(255) ,                            /*顾客姓名            */
   OTCBB006             VARCHAR2(30),                              /*顾客电话            */
   OTCBB007             VARCHAR2(30),                              /*投诉人姓名                  */  
   OTCBB008             VARCHAR2(30),                              /*投诉人电话                  */     
   OTCBB009             VARCHAR2(1000),                            /*投诉要求            */ 
   OTCBB010             INTEGER,                                   /*投诉原因ID          */  
   OTCBB011             INTEGER,                                   /*摊位ID              */ 
   OTCBB012             VARCHAR2(255),                             /*品牌名称              */ 
   OTCBB013             INTEGER,                                   /*销售单ID            */  
   OTCBB014             DATE,                                      /*销售日期            */ 
   OTCBB015             VARCHAR2(1),                               /*投诉等级            */ 
   OTCBB016             INTEGER,                                   /*处理方式                */ 
   OTCBB017             DATE,                                      /*处理时间                */ 
   OTCBB018             INTEGER,                                   /*处理人                */
   OTCBB019             INTEGER,                                   /*商户                */
   OTCBB020             INTEGER,                                   /*投诉方式                */ 
   OTCBB021             VARCHAR2(2000),                            /*处理结果描述            */ 
   OTCBB022             VARCHAR2(1),                               /*建议不回访              */ 
   OTCBB023             VARCHAR2(256),                             /*建议不回访原因            */ 
   OTCBB024             VARCHAR2(1),                               /*已回访                  */ 
   OTCBB025             DATE,                                      /*回访日期                */ 
   OTCBB026             INTEGER,                                   /*回访人员                */
   OTCBB027             VARCHAR2(30),                              /*投诉人与顾客关系          */      
   SY_STATE             VARCHAR2(1),                               /*状态   0：表示CC待接收的数据、1：表示CC已经接收的数据*/
   constraint PK_TB_OTCBB primary key (OTCBB_ID)                               
);                                           
create unique index AK_TB_OTCBB on TB_OTCBB (OTCBB001,OTCBB003);               
create sequence SEQ_TB_OTCBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTCBB to public;                                     
grant index  on TB_OTCBB to public;                                     
grant update on TB_OTCBB to public;                                      
grant delete on TB_OTCBB to public;                                       
grant insert on TB_OTCBB to public;                                      
grant select on SEQ_TB_OTCBB to public;                                        