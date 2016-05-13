/*
================================================================================
表结构代码:TB_CONCH
表结构名称:合同变更其它费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCH;
drop index AK_TB_CONCH;
drop table TB_CONCH;
create table TB_CONCH  (
   CONCH_ID             INTEGER                         not null,  /*合同变更其它费用ID  */
   CONCH001             INTEGER                         not null,  /*合同变更ID          */
   CONCH002             INTEGER                         not null,  /*费用ID              */
   CONCH003             NUMBER(12,2)                    not null,  /*费用金额            */
   CONCH004             DATE                            not null,  /*基准日期            */
   CONCH005             DATE                                    ,  /*开始日期            */
   CONCH006             DATE                                    ,  /*截止日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONCH primary key (CONCH_ID)
);
create unique index AK_TB_CONCH on TB_CONCH (CONCH001,CONCH002,CONCH004);
create sequence SEQ_TB_CONCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCH to public;
grant index  on TB_CONCH to public;
grant update on TB_CONCH to public; 
grant delete on TB_CONCH to public;  
grant insert on TB_CONCH to public; 
grant select on SEQ_TB_CONCH to public;   