/*
================================================================================
表结构代码:TB_INVKE
表结构名称:捡货明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVKE;
drop index AK_TB_INVKE;
drop table TB_INVKE;
create table TB_INVKE  (
   INVKE_ID             INTEGER                    not null,   /*拣货明细子表ID            */    
   INVKE001             INTEGER                    not null,   /*捡货明细主表ID            */    
   INVKE002             INTEGER                    not null,   /*商品ID            */    
   INVKE003             VARCHAR2(30)               not null,   /*条码            */    
   INVKE004             NUMBER(12,2)		   not null,   /*出货量            */ 
   INVKE005             NUMBER(12,2),                          /*已拣量            */  
   INVKE006             INTEGER                    not null,   /*来源门店       */   
   INVKE007             VARCHAR2(1)                not null,   /*单据类型            */      
   INVKE008             INTEGER                    not null,   /*单据ID            */
   INVKE009             VARCHAR2(30),                          /*顾客姓名        */    
   INVKE010             VARCHAR2(30),                          /*地址            */   
   INVKE011             VARCHAR2(30),                          /*电话              */   
   INVKE012             INTEGER,                               /*维度1ID            */
   INVKE013             INTEGER,                               /*维度2ID            */
   INVKE014             INTEGER,                               /*维度3D            */
   INVKE015             INTEGER,                               /*维度4ID            */
   INVKE016             INTEGER,                               /*维度5ID            */
   INVKE017             VARCHAR2(30),                          /*来源单号           */
   CREATE_USER          VARCHAR2(12),                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */        
   CREATE_DATE          DATE,                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                          /*修改人员         */
   MODI_DATE            DATE,                                  /*修改日期         */
   FLAG                 NUMBER(1),                             /*资料状态         */
   constraint PK_TB_SERFE primary key (INVKE_ID)
);
create unique index AK_TB_INVKE on TB_INVKE (INVKE001,INVKE002,INVKE003);
create sequence SEQ_TB_INVKE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVKE to public;
grant index  on TB_INVKE to public;
grant update on TB_INVKE to public; 
grant delete on TB_INVKE to public;  
grant insert on TB_INVKE to public; 
grant select on SEQ_TB_INVKE to public;   


