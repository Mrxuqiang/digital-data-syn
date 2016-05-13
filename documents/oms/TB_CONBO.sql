/*
================================================================================
表结构代码:TB_CONBO
表结构名称:合同帐单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBO;
drop index AK_TB_CONBO;
drop table TB_CONBO;
create table TB_CONBO  (
   CONBO_ID             INTEGER                         not null,  /*合同帐单ID          */
   CONBO001             INTEGER                         not null,  /*合同ID              */
   CONBO002             VARCHAR2(1)                     not null,  /*结算类型            */
   CONBO003             INTEGER                         not null,  /*费用ID              */
   CONBO004             DATE                            not null,  /*付款日期            */
   CONBO005             DATE                            not null,  /*帐单起日            */
   CONBO006             DATE                            not null,  /*帐单止日            */
   CONBO007             NUMBER(12,2)                    not null,  /*费用金额            */
   CONBO008             NUMBER(12,2)                    not null,  /*优惠金额            */
   CONBO009             NUMBER(12,2)                    not null,  /*预估金额            */
   CONBO010             NUMBER(12,2)                    not null,  /*实际费用金额        */
   CONBO011             INTEGER,                                   /*费用单ID            */
   CONBO012             DATE,                                      /*结帐日期            */
   CONBO013             VARCHAR2(1),                               /*已结                */
   CONBO014             NUMBER(12,2)                            ,  /*标准数量            */
   CONBO015             NUMBER(12,2)                            ,  /*费用标准            */
   CONBO016             NUMBER(12,2),                              /*计算面积            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   RESERVED             INTEGER,                                   /*保留字段            */  
   constraint PK_TB_CONBO primary key (CONBO_ID)
);
create unique index AK_TB_CONBO on TB_CONBO (CONBO001,CONBO003,CONBO005);
create sequence SEQ_TB_CONBO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBO to public;
grant index  on TB_CONBO to public;
grant update on TB_CONBO to public; 
grant delete on TB_CONBO to public;  
grant insert on TB_CONBO to public; 
grant select on SEQ_TB_CONBO to public;   