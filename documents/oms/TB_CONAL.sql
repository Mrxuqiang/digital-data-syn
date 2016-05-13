/*
================================================================================
表结构代码:TB_CONAL
表结构名称:合同科目确认值表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAL;
drop index AK_TB_CONAL;
drop table TB_CONAL;
create table TB_CONAL  (
   CONAL_ID             INTEGER                         not null,  /*合同记帐条款ID      */
   CONAL001             VARCHAR2(4)                     not null,  /*科目确认值编号      */
   CONAL002             VARCHAR2(60)                    not null,  /*科目确认值名称      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_CONAL primary key (CONAL_ID)
);
create unique index AK_TB_CONAL on TB_CONAL (CONAL001);
create sequence SEQ_TB_CONAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAL to public;
grant index  on TB_CONAL to public;
grant update on TB_CONAL to public; 
grant delete on TB_CONAL to public;  
grant insert on TB_CONAL to public; 
grant select on SEQ_TB_CONAL to public;   