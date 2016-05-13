/*
================================================================================
表结构代码:TB_BILHD
表结构名称:经销对账单调价子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILHD;
drop index AK_TB_BILHD;
drop table TB_BILHD;
create table TB_BILHD  (
   BILHD_ID             INTEGER                             not null,      /*进价调整明细ID       */                        
   BILHD001             INTEGER                             not null,      /*对账单ID             */      
   BILHD002             INTEGER                             not null,      /*调整单号ID           */      
   BILHD003             VARCHAR2(30)                        not null,      /*调整单号             */      
   BILHD004             DATE                                not null,      /*调整日期             */      
   BILHD005             NUMBER(12,2)                        not null,      /*调整金额             */      
   BILHD006             NUMBER(12,2)                        not null,      /*已结金额             */      
   BILHD007             NUMBER(12,2)                        not null,      /*未结金额             */     
   CREATE_USER          VARCHAR2(12),                                      /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                      /*建立人员部门        */                               
   CREATE_DATE          DATE,                                              /*建立日期            */
   MODIFIER             VARCHAR2(12),                                      /*修改人员            */
   MODI_DATE            DATE,                                              /*修改日期            */
   FLAG                 NUMBER(1),                                         /*资料状态            */
   constraint PK_TB_BILHD primary key (BILHD_ID)
);
create unique index AK_TB_BILHD on TB_BILHD (BILHD003);
create sequence SEQ_TB_BILHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHD to public;
grant index  on TB_BILHD to public;
grant update on TB_BILHD to public; 
grant delete on TB_BILHD to public;  
grant insert on TB_BILHD to public; 
grant select on SEQ_TB_BILHD to public;   