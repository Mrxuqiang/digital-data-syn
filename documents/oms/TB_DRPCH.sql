/*
================================================================================
表结构代码:TB_DRPCH
表结构名称:任务报表表   
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPCH;
drop table TB_DRPCH;
create table TB_DRPCH  (
   DRPCH_ID             INTEGER         NOT NULL,  /*任务报表ID            */ 
   DRPCH001             INTEGER,                   /*任务ID                */      
   DRPCH002             VARCHAR2(30),              /*报表编码               */   
   CREATE_USER          VARCHAR2(12),              /*建立人员               */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门           */                               
   CREATE_DATE          DATE,                      /*建立日期               */
   MODIFIER             VARCHAR2(12),              /*修改人员               */
   MODI_DATE            DATE,                      /*修改日期               */
   FLAG                 NUMBER(1),                 /*资料状态               */        
   constraint PK_TB_DRPCH primary key (DRPCH_ID)
);
create sequence SEQ_TB_DRPCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCH to public;
grant index  on TB_DRPCH to public;
grant update on TB_DRPCH to public; 
grant delete on TB_DRPCH to public;  
grant insert on TB_DRPCH to public; 
grant select on SEQ_TB_DRPCH to public; 