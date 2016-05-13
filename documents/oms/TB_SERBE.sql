/*
================================================================================
表结构代码:TB_SERBE
表结构名称:投诉受罚单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERBE;
drop index AK_TB_SERBE;
drop table TB_SERBE;
create table TB_SERBE  (                           
   SERBE_ID             INTEGER                         not null,  /*受罚单ID            */
   SERBE001             INTEGER                         not null,  /*受罚单别            */
   SERBE002             VARCHAR2(30)                    not null,  /*受罚单号            */
   SERBE003             INTEGER                         not null,  /*投诉单ID            */
   SERBE004             INTEGER                         not null,  /*罚款商户ID          */
   SERBE005             NUMBER(12,2)                    not null,  /*罚款金额            */
   SERBE006             VARCHAR2(255)                   not null,  /*罚款原因            */
   SERBE007             DATE                            not null,  /*罚款日期            */
   SERBE008             NUMBER(1)                       not null,  /*当前状态            */
   SERBE009             INTEGER                         not null,  /*受理人              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */ 
   MODI_DATE            DATE,                                      /*修改日期            */ 
   FLAG                 NUMBER(1),                                 /*资料状态            */ 

   constraint PK_TB_SERBE primary key (SERBE_ID)
);
create unique index AK_TB_SERBE on TB_SERBE (SERBE001,SERBE002);
create sequence SEQ_TB_SERBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBE to public;
grant index  on TB_SERBE to public;
grant update on TB_SERBE to public; 
grant delete on TB_SERBE to public;  
grant insert on TB_SERBE to public; 
grant select on SEQ_TB_SERBE to public;   