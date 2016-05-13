/*
================================================================================
表结构代码:TB_CONBK
表结构名称:合同费用优惠表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBK;
drop index AK_TB_CONBK;
drop table TB_CONBK;
create table TB_CONBK  (
   CONBK_ID             INTEGER                         not null,  /*合同费用优惠ID      */
   CONBK001             INTEGER                         not null,  /*合同ID              */
   CONBK002             INTEGER                         not null,  /*优惠ID              */
   CONBK003             INTEGER                         not null,  /*优惠公式ID          */
   CONBK004             INTEGER                         not null,  /*费用ID              */
   CONBK005             DATE                            not null,  /*优惠起日            */
   CONBK006             DATE                            not null,  /*优惠止日            */
   CONBK007             NUMBER(12,2)                    not null,  /*优惠额              */
   CONBK008             NUMBER(12,2),                              /*优惠总金额          */
   CONBK009             INTEGER,                                   /*优惠单ID            */
   CONBK010             INTEGER,                                   /*优惠单明细ID        */
   CONBK011             VARCHAR2(1)                    not null,   /*优惠方式            */
   CONBK012             VARCHAR2(60),                              /*优惠说明            */
   CONBK013             INTEGER,                                   /*场地ID              */ add ouwx 2011/12/18
   CONBK014             INTEGER,                                   /*优惠频率            */ add ouwx 2013/12/08
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONBK primary key (CONBK_ID)
);
create unique index AK_TB_CONBK on TB_CONBK (CONBK001,CONBK002,CONBK004,CONBK005,CONBK010,CONBK013);  modify ouwx 2011/12/18
create sequence SEQ_TB_CONBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBK to public;
grant index  on TB_CONBK to public;
grant update on TB_CONBK to public; 
grant delete on TB_CONBK to public;  
grant insert on TB_CONBK to public; 
grant select on SEQ_TB_CONBK to public;   