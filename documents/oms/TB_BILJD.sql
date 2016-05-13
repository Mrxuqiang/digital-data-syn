/*
================================================================================
表结构代码:TB_BILJD
表结构名称:扣率/联营对账单调价子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJD;
drop index AK_TB_BILJD;
drop table TB_BILJD;
create table TB_BILJD  (
   BILJD_ID             INTEGER                             not null,      /*进价调整明细ID       */                        
   BILJD001             INTEGER                             not null,      /*对账单ID             */      
   BILJD002             INTEGER                             not null,      /*调整单号ID           */      
   BILJD003             VARCHAR2(30)                        not null,      /*调整单号             */      
   BILJD004             DATE                                not null,      /*调整日期             */      
   BILJD005             NUMBER(12,2)                        not null,      /*调整金额             */      
   BILJD006             NUMBER(12,2)                        not null,      /*已结金额             */      
   BILJD007             NUMBER(12,2)                        not null,      /*未结金额             */     
   CREATE_USER          VARCHAR2(12),                                      /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                      /*建立人员部门        */                               
   CREATE_DATE          DATE,                                              /*建立日期            */
   MODIFIER             VARCHAR2(12),                                      /*修改人员            */
   MODI_DATE            DATE,                                              /*修改日期            */
   FLAG                 NUMBER(1),                                         /*资料状态            */
   constraint PK_TB_BILJD primary key (BILJD_ID)
);
create unique index AK_TB_BILJD on TB_BILJD (BILJD003);
create sequence SEQ_TB_BILJD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJD to public;
grant index  on TB_BILJD to public;
grant update on TB_BILJD to public; 
grant delete on TB_BILJD to public;  
grant insert on TB_BILJD to public; 
grant select on SEQ_TB_BILJD to public;   