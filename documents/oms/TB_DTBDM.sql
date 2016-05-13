/*
================================================================================
表结构代码:TB_DTBDM
表结构名称:打包单条码表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_DTBDM;
drop index AK_TB_DTBDM;
drop table TB_DTBDM;
create table TB_DTBDM  (                                       
   DTBDM_ID           INTEGER                     not null,    /*打包单条码ID         */         
   DTBDM001           INTEGER                     not null,    /*样品变更回库单明细ID */
   DTBDM002           INTEGER                     not null,    /*打包单明细ID         */
   DTBDM003           INTEGER                     not null,    /*打包货位             */
   DTBDM004	      VARCHAR2(64) 		  not null,    /*库存条码             */
   DTBDM005           NUMBER(28,0)                not null,    /*打包数量             */
   DTBDM006           INTEGER                     not null,    /*打包单主表ID*/ --add by peiyn 2011-11-1
   CREATE_USER        VARCHAR2(12),                            /*建立人员             */
   USER_GROUP         VARCHAR2(12),                            /*建立人员部门         */                              
   CREATE_DATE        DATE,                                    /*建立日期             */
   MODIFIER           VARCHAR2(12),                            /*修改人员             */
   MODI_DATE          DATE,                                    /*修改日期             */
   FLAG               NUMBER,                                  /*资料状态             */
   constraint PK_TB_DTBDM primary key (DTBDM_ID)                               
);                                           
create unique index AK_TB_DTBDM on TB_DTBDM (DTBDM002,DTBDM004,FLAG);               
create sequence SEQ_TB_DTBDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDM to public;                                     
grant index  on TB_DTBDM to public;                                     
grant update on TB_DTBDM to public;                                      
grant delete on TB_DTBDM to public;                                       
grant insert on TB_DTBDM to public;                                      
grant select on SEQ_TB_DTBDM to public;                                        