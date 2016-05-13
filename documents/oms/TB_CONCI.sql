/*
================================================================================
表结构代码:TB_CONCI
表结构名称:合同变更费用优惠表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCI;
drop index AK_TB_CONCI;
drop table TB_CONCI;
create table TB_CONCI  (
   CONCI_ID             INTEGER                         not null,  /*合同变更费用优惠ID  */
   CONCI001             VARCHAR2(16)                    not null,  /*合同变更ID          */
   CONCI002             VARCHAR2(4)                     not null,  /*优惠ID              */
   CONCI003             VARCHAR2(4)                     not null,  /*优惠公式ID          */
   CONCI004             VARCHAR2(10)                    not null,  /*费用ID              */
   CONCI005             DATE                            not null,  /*优惠起日            */
   CONCI006             DATE                            not null,  /*优惠止日            */
   CONCI007             NUMBER(12,4)                    not null,  /*优惠额              */
   CONCI008             NUMBER(12,2),                              /*优惠总金额          */
   CONCI009             INTEGER,                                   /*优惠单ID            */
   CONCI010             INTEGER,                                   /*优惠单明细ID        */
   CONCI011             VARCHAR2(1)                    not null,   /*优惠方式            */
   CONCI012             VARCHAR2(60),                              /*优惠说明            */
   CONCI013             INTEGER,                                   /*场地ID              */ ADD OUWX 2011/12/18
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONCI primary key (CONCI_ID)
);
create unique index AK_TB_CONCI on TB_CONCI (CONCI001,CONCI002,CONCI004,CONCI005); MODIFY OUWX 2011/12/18
create sequence SEQ_TB_CONCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCI to public;
grant index  on TB_CONCI to public;
grant update on TB_CONCI to public; 
grant delete on TB_CONCI to public;  
grant insert on TB_CONCI to public; 
grant select on SEQ_TB_CONCI to public;   