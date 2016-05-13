/*
================================================================================
表结构代码:TB_CONCM
表结构名称:合同变更帐单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCM;
drop index AK_TB_CONCM;
drop table TB_CONCM;
create table TB_CONCM  (
   CONCM_ID             INTEGER                         not null,  /*合同变更帐单优惠明细ID*/
   CONCM001             INTEGER                         not null,  /*合同变更ID          */
   CONCM002             INTEGER                         not null,  /*合同变更帐单ID      */
   CONCM003             INTEGER                         not null,  /*费用ID              */
   CONCM004             INTEGER                         not null,  /*优惠代码ID          */
   CONCM005             DATE                            not null,  /*帐单日期            */
   CONCM006             NUMBER(12,2)                    not null,  /*优惠金额            */
   CONCM007             INTEGER,                                   /*合同费用优惠ID      */
   CONCM008             NUMBER(12,2)                    not null,  /*优惠额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONCM primary key (CONCM_ID)
);
create unique index AK_TB_CONCM on TB_CONCM (CONCM001,CONCM002,CONCM003,CONCM004,CONCM005);
create sequence SEQ_TB_CONCM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCM to public;
grant index  on TB_CONCM to public;
grant update on TB_CONCM to public; 
grant delete on TB_CONCM to public;  
grant insert on TB_CONCM to public; 
grant select on SEQ_TB_CONCM to public;   