/*
================================================================================
表结构代码:TB_CONBL
表结构名称:合同其它费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBL;
drop index AK_TB_CONBL;
drop table TB_CONBL;
create table TB_CONBL  (
   CONBL_ID             INTEGER                         not null,  /*合同其它费用ID      */
   CONBL001             INTEGER                         not null,  /*合同ID              */
   CONBL002             INTEGER                         not null,  /*费用ID              */
   CONBL003             NUMBER(12,2)                    not null,  /*费用金额            */··
   CONBL004             DATE                            not null,  /*基准日期            */
   CONBL005             DATE                                    ,  /*开始日期            */
   CONBL006             DATE                                    ,  /*截止日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONBL primary key (CONBL_ID)
);
create unique index AK_TB_CONBL on TB_CONBL (CONBL001,CONBL002,CONBL004);
create sequence SEQ_TB_CONBL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBL to public;
grant index  on TB_CONBL to public;
grant update on TB_CONBL to public; 
grant delete on TB_CONBL to public;  
grant insert on TB_CONBL to public; 
grant select on SEQ_TB_CONBL to public;   