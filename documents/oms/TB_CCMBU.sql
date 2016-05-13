/*
================================================================================
表结构代码:TB_CCMBU
表结构名称:卡交易明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBU;
drop index AK_TB_CCMBU;
drop table TB_CCMBU;
create table TB_CCMBU  (
   CCMBU_ID             INTEGER                         not null,  /*卡交易明细ID        */
   CCMBU001             INTEGER                         not null,  /*卡种ID              */
   CCMBU002             NUMBER(30)                      not null,  /*卡号                */
   CCMBU003             INTEGER                         not null,  /*营运组织ID          */
   CCMBU004             DATE                            not null,  /*交易时间:带日期时间 */
   CCMBU005             VARCHAR2(1)                     not null,  /*来源单据1.销售订单 2.销售 3.订单销退 4.销退 5.充值 6.退值  7.补积分*/
   CCMBU006             INTEGER                         not null,  /*来源单据ID          */
   CCMBU007             VARCHAR2(30)                    not null,  /*来源单号            */
   CCMBU008             VARCHAR2(20)                    not null,  /*交易功能1.会员价 2.折扣 3积分  4消费卡 5消费券卡           */
   CCMBU009             NUMBER(12,2),                              /*交易金额            */
   CCMBU010             NUMBER(12,2),                              /*功能金额            */
   CCMBU011             NUMBER(12,0),                              /*发生积分            */
   CCMBU012             NUMBER(12,2),                              /*手续费金额          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBU primary key (CCMBU_ID)
);
create unique index AK_TB_CCMBU on TB_CCMBU (CCMBU001,CCMBU002,CCMBU003,CCMBU005,CCMBU006);
create sequence SEQ_TB_CCMBU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBU to public;
grant index  on TB_CCMBU to public;
grant update on TB_CCMBU to public; 
grant delete on TB_CCMBU to public;  
grant insert on TB_CCMBU to public; 
grant select on SEQ_TB_CCMBU to public;   