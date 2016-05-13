/*
================================================================================
表结构代码:TB_CONCK
表结构名称:合同变更帐单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCK;
drop index AK_TB_CONCK;
drop table TB_CONCK;
create table TB_CONCK  (
   CONCK_ID             INTEGER                         not null,  /*合同变更帐单ID      */
   CONCK001             INTEGER                         not null,  /*合同变更ID          */
   CONCK002             VARCHAR2(1)                     not null,  /*结算类型            */
   CONCK003             INTEGER                         not null,  /*费用ID              */
   CONCK004             DATE                            not null,  /*付款日期            */
   CONCK005             DATE                            not null,  /*帐单起日            */
   CONCK006             DATE                            not null,  /*帐单止日            */
   CONCK007             NUMBER(12,2)                    not null,  /*费用金额            */
   CONCK008             NUMBER(12,2)                    not null,  /*优惠金额            */
   CONCK009             NUMBER(12,2)                    not null,  /*预估金额            */
   CONCK010             NUMBER(12,2)                    not null,  /*实际费用金额        */
   CONCK011             INTEGER,                                   /*费用单ID            */
   CONCK012             DATE,                                      /*结帐日期            */
   CONCK013             VARCHAR2(1),                               /*已结                */
   CONCK014             NUMBER(12,2),                              /*帐单差异金额        */
   CONCK015             INTEGER,                                   /*差异费用单ID        */
   CONCK016             NUMBER(12,2),                              /*费用差异金额        */
   CONCK017             NUMBER(12,2),                              /*标准数量            */
   CONCK018             NUMBER(12,2),                              /*费用标准            */
   CONCK019             NUMBER(12,2),                              /*计算面积            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   RESERVED             INTEGER,                                   /*保留字段            */  
   constraint PK_TB_CONCK primary key (CONCK_ID)
);
create unique index AK_TB_CONCK on TB_CONCK (CONCK001,CONCK002,CONCK003,CONCK005);
create sequence SEQ_TB_CONCK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCK to public;
grant index  on TB_CONCK to public;
grant update on TB_CONCK to public; 
grant delete on TB_CONCK to public;  
grant insert on TB_CONCK to public; 
grant select on SEQ_TB_CONCK to public;   