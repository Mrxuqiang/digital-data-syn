/*
================================================================================
表结构代码:TB_CONDD
表结构名称:合同终止帐单优惠明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONDD;
drop index AK_TB_CONDD;
drop table TB_CONDD;
create table TB_CONDD  (
   CONDD_ID             INTEGER                         not null,  /*合同终止帐单优惠明细ID*/
   CONDD001             INTEGER                         not null,  /*合同终止ID          */
   CONDD002             INTEGER                         not null,  /*合同终止差异帐单ID  */
   CONDD003             INTEGER                         not null,  /*费用ID              */
   CONDD004             INTEGER                         not null,  /*优惠代码ID          */
   CONDD005             DATE                            not null,  /*帐单日期            */
   CONDD006             NUMBER(12,4)                    not null,  /*优惠金额            */
   CONDD007             INTEGER,                                   /*合同费用优惠ID      */
   CONDD008             NUMBER(12,4)                    not null,  /*优惠额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONDD primary key (CONDD_ID)
);
create unique index AK_TB_CONDD on TB_CONDD (CONDD001,CONDD002,CONDD003,CONDD004,CONDD005);
create sequence SEQ_TB_CONDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONDD to public;
grant index  on TB_CONDD to public;
grant update on TB_CONDD to public; 
grant delete on TB_CONDD to public;  
grant insert on TB_CONDD to public; 
grant select on SEQ_TB_CONDD to public;   