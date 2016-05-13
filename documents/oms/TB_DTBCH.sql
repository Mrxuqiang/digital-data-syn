/*
================================================================================
表结构代码:TB_DTBCH
表结构名称:排车单客户子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCH;
drop index AK_TB_DTBCH;
drop table TB_DTBCH;
create table TB_DTBCH  (                                       
   DTBCH_ID	         INTEGER                       not null,   /*客户列表ID       */           
   DTBCH001	         INTEGER                       not null,   /*排车单ID       */           
   DTBCH002	         INTEGER                       not null,   /*客户ID           */           
   DTBCH003	         INTEGER                       not null,   /*来源单号         */           
   DTBCH004	         VARCHAR2(255)                 not null,   /*送货地址         */           
   DTBCH005	         DATE                          not null,   /*送货日期         */           
   DTBCH006	         VARCHAR2(30),                             /*顾客姓名         */           
   DTBCH007	         VARCHAR2(30),                             /*顾客电话         */           
   DTBCH008	         NUMBER(12,2)                  not null,   /*销售收入         */           
   DTBCH009	         VARCHAR2(10),                             /*预约时间         */           
   DTBCH010	         VARCHAR2(10),                             /*楼层             */           
   DTBCH011	         NUMBER(12,2),                             /*体积             */           
   DTBCH012	         NUMBER(12,2),                             /*重量             */           
   DTBCH013	         NUMBER(4)                     not null,   /*排单顺序         */                     
   DTBCH014	         VARCHAR2(1)                   not null,   /*送货状态         */    
   DTBCH015	         VARCHAR2(1)                   not null,   /*来源类别         */  --2010.1.20 add by hansf
   DTBCH016	         INTEGER                       not null,   /*来源门店         */    --2010-01-26 add by hansf
   DTBCH017              INTEGER                       NOT NULL,   /*排车次数         */	
   DTBCH018              VARCHAR2(255)                 NOT NULL,   /*手机号一        */
   DTBCH019              VARCHAR2(255)                 NOT NULL,   /*手机号二        */
   DTBCH020              VARCHAR2(255)                 NOT NULL,   /*备注            */  
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */             
   CREATE_DATE        DATE,                                        /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                /*修改人员        */             
   MODI_DATE          DATE,                                        /*修改日期        */             
   FLAG               NUMBER(1),                                   /*资料状态        */            


  constraint PK_TB_DTBCH primary key (DTBCH_ID)                               
);                                           
create unique index AK_TB_DTBCH on TB_DTBCH (DTBCH002,DTBCH003);               
create sequence SEQ_TB_DTBCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCH to public;                                     
grant index  on TB_DTBCH to public;                                     
grant update on TB_DTBCH to public;                                      
grant delete on TB_DTBCH to public;                                       
grant insert on TB_DTBCH to public;                                      
grant select on SEQ_TB_DTBCH to public;                                        