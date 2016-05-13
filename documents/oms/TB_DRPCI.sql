/*
================================================================================
表结构代码:TB_DRPCI
表结构名称:任务分配表   
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPCI;
drop table TB_DRPCI;
create table TB_DRPCI  (
   DRPCI_ID             INTEGER         NOT NULL,  /*任务分配ID             */ 
   DRPCI001             INTEGER,                   /*任务ID                 */      
   DRPCI002             INTEGER,                   /*公司ID                 */  
   DRPCI003             INTEGER,                   /*分配人ID               */      
   DRPCI004             DATE,                      /*分配时间               */  
   CREATE_USER          VARCHAR2(12),              /*建立人员               */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门           */                               
   CREATE_DATE          DATE,                      /*建立日期               */
   MODIFIER             VARCHAR2(12),              /*修改人员               */
   MODI_DATE            DATE,                      /*修改日期               */
   FLAG                 NUMBER(1),                 /*资料状态               */        
   constraint PK_TB_DRPCI primary key (DRPCI_ID)
);
create sequence SEQ_TB_DRPCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCI to public;
grant index  on TB_DRPCI to public;
grant update on TB_DRPCI to public; 
grant delete on TB_DRPCI to public;  
grant insert on TB_DRPCI to public; 
grant select on SEQ_TB_DRPCI to public; 