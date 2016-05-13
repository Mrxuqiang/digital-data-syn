/*
================================================================================
表结构代码:TB_CONEE
表结构名称:供应商合同期间费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONEE;
drop index AK_TB_CONEE;
drop table TB_CONEE;
create table TB_CONEE  (
   CONEE_ID             INTEGER                         not null,  /*合同期间费用ID      */
   CONEE001             INTEGER                         not null,  /*合同ID              */
   CONEE002             INTEGER                         not null,  /*营运组织ID          */
   CONEE003             INTEGER                         not null,  /*费用ID              */
   CONEE004             VARCHAR2(1)                     not null,  /*费用周期            */
   CONEE005             VARCHAR2(1)                     not null,  /*费用产生时间        */
   CONEE006             DATE,                                      /*费用日期            */
   CONEE007             VARCHAR2(1)                     not null,  /*基准营运组织        */
   CONEE008             VARCHAR2(1)                     not null,  /*基准费用            */
   CONEE009             NUMBER(12,2),                              /*费用金额            */
   CONEE010             NUMBER(12,2),                              /*基准费用比率(%)     */
   CONEE011             NUMBER(12,2),                              /*费用计提比例(%)     */
   CONEE012             DATE,                                      /*开始日期            */
   CONEE013             DATE,                                      /*截止日期            */
   CONEE014             NUMBER(12,2),                              /*费用下限            */
   CONEE015             NUMBER(12,2),                              /*费用上限            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONEE primary key (CONEE_ID)
);
create unique index AK_TB_CONEE on TB_CONEE (CONEE001,CONEE002,CONEE003,CONEE004,CONEE005);
create sequence SEQ_TB_CONEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEE to public;
grant index  on TB_CONEE to public;
grant update on TB_CONEE to public; 
grant delete on TB_CONEE to public;  
grant insert on TB_CONEE to public; 
grant select on SEQ_TB_CONEE to public;   