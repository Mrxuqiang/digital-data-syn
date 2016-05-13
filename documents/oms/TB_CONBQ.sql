/*
================================================================================
表结构代码:TB_CONBQ
表结构名称:合同帐单优惠明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBQ;
drop index AK_TB_CONBQ;
drop table TB_CONBQ;
create table TB_CONBQ  (
   CONBQ_ID             INTEGER                         not null,  /*合同帐单优惠明细ID  */
   CONBQ001             INTEGER                         not null,  /*合同ID              */
   CONBQ002             INTEGER                         not null,  /*合同帐单ID          */
   CONBQ003             INTEGER                         not null,  /*费用ID              */
   CONBQ004             INTEGER                         not null,  /*优惠ID              */
   CONBQ005             DATE                            not null,  /*帐单日期            */
   CONBQ006             NUMBER(12,2)                    not null,  /*优惠金额            */
   CONBQ007             INTEGER,                                   /*合同费用优惠ID      */
   CONBQ008             NUMBER(12,2)                    not null,  /*优惠额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBQ primary key (CONBQ_ID)
);
create unique index AK_TB_CONBQ on TB_CONBQ (CONBQ001,CONBQ002,CONBQ003,CONBQ004,CONBQ005);
create sequence SEQ_TB_CONBQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBQ to public;
grant index  on TB_CONBQ to public;
grant update on TB_CONBQ to public; 
grant delete on TB_CONBQ to public;  
grant insert on TB_CONBQ to public; 
grant select on SEQ_TB_CONBQ to public;   