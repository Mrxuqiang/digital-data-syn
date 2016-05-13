/*
================================================================================
表结构代码:TB_CONCJ
表结构名称:合同变更销售保底表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCJ;
drop index AK_TB_CONCJ;
drop table TB_CONCJ;
create table TB_CONCJ  (
   CONCJ_ID             INTEGER                         not null,  /*合同变更销售保底ID  */
   CONCJ001             INTEGER                         not null,  /*合同变更ID          */
   CONCJ002             DATE                            not null,  /*开始日期            */
   CONCJ003             DATE                            not null,  /*结束日期            */
   CONCJ004             NUMBER(12,4)                    not null,  /*销售保底            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONCJ primary key (CONCJ_ID)
);
create unique index AK_TB_CONCJ on TB_CONCJ (CONCJ001,CONCJ002);
create sequence SEQ_TB_CONCJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCJ to public;
grant index  on TB_CONCJ to public;
grant update on TB_CONCJ to public; 
grant delete on TB_CONCJ to public;  
grant insert on TB_CONCJ to public; 
grant select on SEQ_TB_CONCJ to public;   