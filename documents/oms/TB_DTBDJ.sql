/*
================================================================================
表结构代码:TB_DTBDJ
表结构名称:排车单修改日期信息表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_DTBDJ;
drop index AK_TB_DTBDJ;
drop table TB_DTBDJ;
create table TB_DTBDJ  (                                       
   DTBDJ_ID         INTEGER                not null,             /*信息表ID          */
   DTBDJ001         INTEGER                not null,             /*排车单主表ID      */
   DTBDJ002         INTEGER                not null,             /*排车单客户子表ID  */
   DTBDJ003         DATE,                                        /*修改日期          */
   DTBDJ004         INTEGER,                                     /*修改次数          */
   DTBDJ005         VARCHAR2(255),                               /*修改原因          */
   CREATE_USER      VARCHAR2(12),                                /*建立人员          */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门      */             
   CREATE_DATE      DATE,                                        /*建立日期          */             
   MODIFIER         VARCHAR2(12),                                /*修改人员          */             
   MODI_DATE        DATE,                                        /*修改日期          */             
   FLAG             NUMBER(1),                                   /*资料状态          */            


  constraint PK_TB_DTBDJ primary key (DTBDJ_ID)                               
);
create unique index AK_TB_DTBDJ on TB_DTBDJ (DTBDJ001,DTBDJ002);                                                    
create sequence SEQ_TB_DTBDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDJ to public;                                     
grant index  on TB_DTBDJ to public;                                     
grant update on TB_DTBDJ to public;                                      
grant delete on TB_DTBDJ to public;                                       
grant insert on TB_DTBDJ to public;                                      
grant select on SEQ_TB_DTBDJ to public;                                        