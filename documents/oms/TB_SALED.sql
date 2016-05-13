/*
================================================================================
表结构代码:TB_SALED
表结构名称:日结摊位商品销售表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALED;
drop index AK_TB_SALED;
drop table TB_SALED;
create table TB_SALED  (
   SALED_ID             INTEGER                         not null,  /*日结摊位交款ID        */
   SALED001             INTEGER                         not null,  /*营运组织ID            */
   SALED002             DATE                            not null,  /*销售日期              */
   SALED003             VARCHAR2(1)                     not null,  /*交易类型              */
   SALED004             INTEGER                         not null,  /*合同号ID              */
   SALED005             INTEGER                         not null,  /*商品ID                */
   SALED006             INTEGER                         not null,  /*商品品牌ID            */
   SALED007             NUMBER(12,2)                    not null,  /*销售金额              */
   SALED008             INTEGER                         not null,  /*摊位ID                */
   SALED009             INTEGER                         not null,  /*主品牌ID              */
   SALED010             INTEGER                         not null,  /*商户ID                */
   SALED011             INTEGER                         not null,  /*楼栋ID                */
   SALED012             INTEGER                         not null,  /*楼层ID                */
   SALED013             INTEGER                         not null,  /*经营大类ID            */
   SALED014             INTEGER                         not null,  /*经营中类ID            */
   SALED015             INTEGER                         not null,  /*经营小类ID            */
   SALED016             VARCHAR2(30),                              /*参考单号一            */
   SALED017             VARCHAR2(30),                              /*参考单号二            */
   SALED018             VARCHAR2(30),                              /*参考单号三            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_SALED primary key (SALED_ID)
);
create unique index AK_TB_SALED on TB_SALED (SALED001,SALED002,SALED003,SALED004,SALED005);
create sequence SEQ_TB_SALED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALED to public;
grant index  on TB_SALED to public;
grant update on TB_SALED to public; 
grant delete on TB_SALED to public;  
grant insert on TB_SALED to public; 
grant select on SEQ_TB_SALED to public;   