/*
================================================================================
表结构代码:TB_DTBDL
表结构名称:上样单条码表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_DTBDL;
drop index AK_TB_DTBDL;
drop table TB_DTBDL;
create table TB_DTBDL  (                                       
   DTBDL_ID           INTEGER                     not null,    /*上样单条码ID         */         
   DTBDL001           INTEGER                     not null,    /*样品变更单出样明细ID */
   DTBDL002           INTEGER                     not null,    /*上样单明细ID         */
   DTBDL003           INTEGER                     not null,    /*上样货位             */
   DTBDL004	      VARCHAR2(64) 		  not null,    /*库存条码             */
   DTBDL005           NUMBER(28,0)                not null,    /*上样数量             */
   DTBDL006           INTEGER                     not null,    /*上样单主表ID*/ --add by peiyn 2011-11-1
   CREATE_USER        VARCHAR2(12),                            /*建立人员             */
   USER_GROUP         VARCHAR2(12),                            /*建立人员部门         */                              
   CREATE_DATE        DATE,                                    /*建立日期             */
   MODIFIER           VARCHAR2(12),                            /*修改人员             */
   MODI_DATE          DATE,                                    /*修改日期             */
   FLAG               NUMBER,                                  /*资料状态             */
  
   
   constraint PK_TB_DTBDL primary key (DTBDL_ID)                               
);                                           
create unique index AK_TB_DTBDL on TB_DTBDL (DTBDL002,DTBDL003,DTBDL004,DTBDL006,FLAG);               
create sequence SEQ_TB_DTBDL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDL to public;                                     
grant index  on TB_DTBDL to public;                                     
grant update on TB_DTBDL to public;                                      
grant delete on TB_DTBDL to public;                                       
grant insert on TB_DTBDL to public;                                      
grant select on SEQ_TB_DTBDL to public;                                        