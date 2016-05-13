/*
================================================================================
表结构代码:TB_GRTCI
表结构名称:任务分配表   
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTCI;
drop table TB_GRTCI;
create table TB_GRTCI  (
   GRTCI_ID             INTEGER         NOT NULL,  /*任务分配ID             */ 
   GRTCI001             INTEGER,                   /*任务ID                 */      
   GRTCI002             INTEGER,                   /*公司ID                 */  
   GRTCI003             INTEGER,                   /*分配人ID               */      
   GRTCI004             DATE,                      /*分配时间               */  
   GRTCI005             VARCHAR2(1),               /*是否当前任务           */     
   CREATE_USER          VARCHAR2(12),              /*建立人员               */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门           */                               
   CREATE_DATE          DATE,                      /*建立日期               */
   MODIFIER             VARCHAR2(12),              /*修改人员               */
   MODI_DATE            DATE,                      /*修改日期               */
   FLAG                 NUMBER(1),                 /*资料状态               */        
   constraint PK_TB_GRTCI primary key (GRTCI_ID)
);
create sequence SEQ_TB_GRTCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCI to public;
grant index  on TB_GRTCI to public;
grant update on TB_GRTCI to public; 
grant delete on TB_GRTCI to public;  
grant insert on TB_GRTCI to public; 
grant select on SEQ_TB_GRTCI to public; 