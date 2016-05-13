/*
================================================================================
表结构代码:TB_DTBDO
表结构名称:样品变更单出样条码表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_DTBDO;
drop index AK_TB_DTBDO;
drop table TB_DTBDO;
create table TB_DTBDO  (                                       
   DTBDO_ID           INTEGER                     not null,    /*样品变更出样条码ID   */         
   DTBDO001           INTEGER                     not null,    /*样品变更单出样明细ID */
   DTBDO002           INTEGER                     not null,    /*出样货位             */
   DTBDO003	      VARCHAR2(64) 		  not null,    /*库存条码             */
   DTBDO004           NUMBER(28,0)                not null,    /*出样数量             */
   DTBDO005           INTEGER                     not null,    /*样品变更单主表ID*/--add by peiyn 2011-11-1
   CREATE_USER        VARCHAR2(12),                            /*建立人员             */
   USER_GROUP         VARCHAR2(12),                            /*建立人员部门         */                              
   CREATE_DATE        DATE,                                    /*建立日期             */
   MODIFIER           VARCHAR2(12),                            /*修改人员             */
   MODI_DATE          DATE,                                    /*修改日期             */
   FLAG               NUMBER,                                  /*资料状态             */
   constraint PK_TB_DTBDO primary key (DTBDO_ID)                               
);                                           
create unique index AK_TB_DTBDL on TB_DTBDL (DTBDL001,DTBDL002,DTBDL003,DTBDL004,DTBDL006,flag);      
create sequence SEQ_TB_DTBDO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDO to public;                                     
grant index  on TB_DTBDO to public;                                     
grant update on TB_DTBDO to public;                                      
grant delete on TB_DTBDO to public;                                       
grant insert on TB_DTBDO to public;                                      
grant select on SEQ_TB_DTBDO to public;                                        