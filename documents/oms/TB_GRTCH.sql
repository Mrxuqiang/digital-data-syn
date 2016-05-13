/*
================================================================================
表结构代码:TB_GRTCH
表结构名称:任务报表表   
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTCH;
drop table TB_GRTCH;
create table TB_GRTCH  (
   GRTCH_ID             INTEGER         NOT NULL,  /*任务报表ID            */ 
   GRTCH001             INTEGER,                   /*任务ID                */      
   GRTCH002             VARCHAR2(30),              /*报表编码               */   
   CREATE_USER          VARCHAR2(12),              /*建立人员               */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门           */                               
   CREATE_DATE          DATE,                      /*建立日期               */
   MODIFIER             VARCHAR2(12),              /*修改人员               */
   MODI_DATE            DATE,                      /*修改日期               */
   FLAG                 NUMBER(1),                 /*资料状态               */        
   constraint PK_TB_GRTCH primary key (GRTCH_ID)
);
create sequence SEQ_TB_GRTCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCH to public;
grant index  on TB_GRTCH to public;
grant update on TB_GRTCH to public; 
grant delete on TB_GRTCH to public;  
grant insert on TB_GRTCH to public; 
grant select on SEQ_TB_GRTCH to public; 