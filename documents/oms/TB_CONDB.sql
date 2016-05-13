/*
================================================================================
表结构代码:TB_CONDB
表结构名称:合同终止差异帐单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONDB;
drop index AK_TB_CONDB;
drop table TB_CONDB;
create table TB_CONDB  (
   CONDB_ID             INTEGER                         not null,  /*合同终止差异帐单ID  */
   CONDB001             INTEGER                         not null,  /*合同终止ID          */
   CONDB002             VARCHAR2(1)                     not null,  /*结算类型            */
   CONDB003             INTEGER                         not null,  /*费用ID              */
   CONDB004             DATE                            not null,  /*付款日期            */
   CONDB005             DATE                            not null,  /*帐单起日            */
   CONDB006             DATE                            not null,  /*帐单止日            */
   CONDB007             NUMBER(12,2)                    not null,  /*费用金额            */
   CONDB008             NUMBER(12,2)                    not null,  /*优惠金额            */
   CONDB009             NUMBER(12,2)                    not null,  /*预估金额            */
   CONDB010             NUMBER(12,2)                    not null,  /*实际费用金额        */
   CONDB011             INTEGER,                                   /*费用单ID            */
   CONDB012             DATE,                                      /*结帐日期            */
   CONDB013             VARCHAR2(1),                               /*已结                */
   CONDB014             NUMBER(12,2)                    not null,  /*帐单差异金额        */
   CONDB015             INTEGER,                                   /*差异费用单ID        */
   CONDB016             NUMBER(12,2),                              /*费用差异金额        */
   CONDB017             NUMBER(12,2),                              /*标准数量            */
   CONDB018             NUMBER(12,2),                              /*费用标准            */
   CONDB019             NUMBER(12,2),                              /*计算面积            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   RESERVED             INTEGER,                                   /*保留字段            */  
   constraint PK_TB_CONDB primary key (CONDB_ID)
);
create unique index AK_TB_CONDB on TB_CONDB (CONDB001,CONDB002,CONDB003,CONDB005);
create sequence SEQ_TB_CONDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONDB to public;
grant index  on TB_CONDB to public;
grant update on TB_CONDB to public; 
grant delete on TB_CONDB to public;  
grant insert on TB_CONDB to public; 
grant select on SEQ_TB_CONDB to public;   