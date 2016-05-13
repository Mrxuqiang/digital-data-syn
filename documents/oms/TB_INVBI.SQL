/*
================================================================================
表结构代码:TB_INVBI
表结构名称:调拨收货条码表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_INVBI;
drop index AK_TB_INVBI;
drop table TB_INVBI;
create table TB_INVBI  (                                       
   INVBI_ID           INTEGER                     not null,    /*调拨收货条码ID         */         
   INVBI001           INTEGER                     not null,    /*调拨收货明细ID         */
   INVBI002           INTEGER                     not null,    /*调拨收货主表ID         */
   INVBI002           INTEGER                     not null,    /*调拨发货条码明细表ID    */
   INVBI003           INTEGER                     not null,    /*货位ID                 */
   INVBI004	      VARCHAR2(64) 		   not null,   /*库存条码               */
   INVBI006           NUMBER(28,0)                not null,   /* 签收数量               */ 
   CREATE_USER        VARCHAR2(12),                            /*建立人员               */
   USER_GROUP         VARCHAR2(12),                            /*建立人员部门           */                            
   CREATE_DATE        DATE,                                    /*建立日期               */
   MODIFIER           VARCHAR2(12),                            /*修改人员               */
   MODI_DATE          DATE,                                    /*修改日期               */
   FLAG               NUMBER,                                  /*资料状态               */
  
   
   constraint PK_TB_INVBI primary key (INVBI_ID)                               
);                                           
create unique index AK_TB_INVBI on TB_INVBI (INVBI001,INVBI004,FALG);               
create sequence SEQ_TB_INVBI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBI to public;                                     
grant index  on TB_INVBI to public;                                     
grant update on TB_INVBI to public;                                      
grant delete on TB_INVBI to public;                                       
grant insert on TB_INVBI to public;                                      
grant select on SEQ_TB_INVBI to public;        