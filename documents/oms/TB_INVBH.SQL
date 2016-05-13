/*
================================================================================
表结构代码:TB_INVBH
表结构名称:调拨发货条码表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_INVBH;
drop index AK_TB_INVBH;
drop table TB_INVBH;
create table TB_INVBH  (                                       
   INVBH_ID           INTEGER                     not null,    /*调拨发货条码ID         */         
   INVBH001           INTEGER                     not null,    /*调拨发货明细ID         */
   INVBH002           INTEGER                     not null,    /*调拨主表ID             */
   INVBH003           INTEGER                     not null,    /*货位ID                 */
   INVBH004	      VARCHAR2(64) 		  not null,    /*库存条码               */
   INVBH005           NUMBER(28,0)                not null,    /*调出数量               */
   INVBH006           NUMBER(28,0)                not null,   /* 签收数量               */ 
   CREATE_USER        VARCHAR2(12),                            /*建立人员               */
   USER_GROUP         VARCHAR2(12),                            /*建立人员部门           */                            
   CREATE_DATE        DATE,                                    /*建立日期               */
   MODIFIER           VARCHAR2(12),                            /*修改人员               */
   MODI_DATE          DATE,                                    /*修改日期               */
   FLAG               NUMBER,                                  /*资料状态               */
  
   
   constraint PK_TB_INVBH primary key (INVBH_ID)                               
);                                           
create unique index AK_TB_INVBH on TB_INVBH (INVBH001,INVBH003,FALG);               
create sequence SEQ_TB_INVBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBH to public;                                     
grant index  on TB_INVBH to public;                                     
grant update on TB_INVBH to public;                                      
grant delete on TB_INVBH to public;                                       
grant insert on TB_INVBH to public;                                      
grant select on SEQ_TB_INVBH to public;                                        