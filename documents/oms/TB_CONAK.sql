/*
================================================================================
表结构代码:TB_CONAK
表结构名称:合同记帐条款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAK;
drop index AK_TB_CONAK;
drop table TB_CONAK;
create table TB_CONAK  (
   CONAK_ID             INTEGER                         not null,  /*合同记帐条款ID      */
   CONAK001             VARCHAR2(4)                     not null,  /*条款编号            */
   CONAK002             VARCHAR2(60)                    not null,  /*条款名称            */
   CONAK003             VARCHAR2(4),				   /*税收类型            */
   CONAK004             VARCHAR2(20),                              /*税收组              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_CONAK primary key (CONAK_ID)
);
create unique index AK_TB_CONAK on TB_CONAK (CONAK001);
create sequence SEQ_TB_CONAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAK to public;
grant index  on TB_CONAK to public;
grant update on TB_CONAK to public; 
grant delete on TB_CONAK to public;  
grant insert on TB_CONAK to public; 
grant select on SEQ_TB_CONAK to public;   