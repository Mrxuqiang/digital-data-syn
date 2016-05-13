/*
================================================================================
表结构代码:TB_BILID
表结构名称:成本代销对账单调价子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILID;
drop index AK_TB_BILID;
drop table TB_BILID;
create table TB_BILID  (
   BILID_ID             INTEGER                             not null,      /*进价调整明细ID       */                        
   BILID001             INTEGER                             not null,      /*对账单ID             */      
   BILID002             INTEGER                             not null,      /*调整单号ID           */      
   BILID003             VARCHAR2(30)                        not null,      /*调整单号             */      
   BILID004             DATE                                not null,      /*调整日期             */      
   BILID005             NUMBER(12,2)                        not null,      /*调整金额             */      
   BILID006             NUMBER(12,2)                        not null,      /*已结金额             */      
   BILID007             NUMBER(12,2)                        not null,      /*未结金额             */     
   CREATE_USER          VARCHAR2(12),                                      /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                      /*建立人员部门        */                               
   CREATE_DATE          DATE,                                              /*建立日期            */
   MODIFIER             VARCHAR2(12),                                      /*修改人员            */
   MODI_DATE            DATE,                                              /*修改日期            */
   FLAG                 NUMBER(1),                                         /*资料状态            */
   constraint PK_TB_BILID primary key (BILID_ID)
);
create unique index AK_TB_BILID on TB_BILID (BILID003);
create sequence SEQ_TB_BILID minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILID to public;
grant index  on TB_BILID to public;
grant update on TB_BILID to public; 
grant delete on TB_BILID to public;  
grant insert on TB_BILID to public; 
grant select on SEQ_TB_BILID to public;   