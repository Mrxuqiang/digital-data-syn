/*
================================================================================
表结构代码:TB_DTBDK
表结构名称:样品变更回库条码表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_DTBDK;
drop index AK_TB_DTBDK;
drop table TB_DTBDK;
create table TB_DTBDK  (                                       
   DTBDK_ID           INTEGER                     not null,    /*样品变更回库条码ID   */         
   DTBDK001           INTEGER                     not null,    /*样品变更单回库明细ID */
   DTBDK002           INTEGER                     not null,    /*回库货位             */
   DTBDK003	      VARCHAR2(64) 		  not null,    /*库存条码             */
   DTBDK004           NUMBER(22,0)                not null,    /*回库数量             */
   DTBDK005           INTEGER                     not null,    /*样品变更单主表ID */ -- add by peiyn 2011-11-1
   CREATE_USER        VARCHAR2(12),                            /*建立人员             */
   USER_GROUP         VARCHAR2(12),                            /*建立人员部门         */                              
   CREATE_DATE        DATE,                                    /*建立日期             */
   MODIFIER           VARCHAR2(12),                            /*修改人员             */
   MODI_DATE          DATE,                                    /*修改日期             */
   FLAG               NUMBER,                                 /*资料状态             */
   constraint PK_TB_DTBDK primary key (DTBDK_ID)                               
);                                           
create unique index AK_TB_DTBDK on TB_DTBDK (DTBDK001,DTBDK003,FLAG);               
create sequence SEQ_TB_DTBDK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDK to public;                                     
grant index  on TB_DTBDK to public;                                     
grant update on TB_DTBDK to public;                                      
grant delete on TB_DTBDK to public;                                       
grant insert on TB_DTBDK to public;                                      
grant select on SEQ_TB_DTBDK to public;                                        