/*
================================================================================
表结构代码:TB_SALHD
表结构名称:自营销退单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHD;
drop index AK_TB_SALHD;
drop table TB_SALHD;
create table TB_SALHD  (
   SALHD_ID             INTEGER                         not null,      /*销退单ID        */
   SALHD001             INTEGER                         not null,      /*单别ID          */
   SALHD002             VARCHAR2(30)                    not null,      /*销退单号        */
   SALHD003             DATE                            not null,      /*销退日期        */
   SALHD004             INTEGER                         not null,      /*公司ID          */
   SALHD005             INTEGER                         not null,      /*销退组织ID      */
   SALHD006             INTEGER                         ,              /*结算客户        */
   SALHD007            INTEGER,                                        /*会员ID          */
   SALHD008             INTEGER                         ,              /*送货客户ID      */
   SALHD009             VARCHAR2(1)                     not null,      /*结算方式        */
   SALHD010             INTEGER                                        /*销售单ID        */
   SALHD011             VARCHAR2(30),                                  /*顾客姓名        */
   SALHD012             VARCHAR2(30),                                  /*联系电话        */
   SALHD013             VARCHAR2(30),                                  /*取货地址        */
   SALHD014             INTEGER,                                       /*导购员          */
   SALHD015             VARCHAR2(255),                                 /*备注            */
   SALHD016             INTEGER,                                       /*退货原因ID      */
   SALHD017             INTEGER,                                       /*录入人ID        */
   SALHD018             DATE,                                          /*录入日期        */
   SALHD019             INTEGER,                                       /*审核人ID        */
   SALHD020             DATE,                                          /*审核日期        */
   SALHD021             VARCHAR2(1)                     not null,      /*审核状态        */
   SALHD022             DATE,                                          /*提货日期        */
   SALHD023             NUMBER(18,2),                                  /*退货费用        */--add by hansf
   SALHD024             INTEGER,                                       /*区域            */ --add by hansf
   SALHD025             VARCHAR2(1)                     not null,      /*结案码          */ --add by hansf 0623
   SALHD026             VARCHAR2(255)                     not null,    /*退货原因        */ 
   SALHD027             VARCHAR2(30),                                  /*手机号一        */
   SALHD028             VARCHAR2(30),                                  /*手机号二        */
   SALHD029             INTEGER,                                       /*小区资料        */
   SALHD030             DATE,                                          /*最后退款日期    */
   SALHD031             NUMBER(18,2)                    not null,      /*本次可退款金额  */--add by xiechun 
   SALHD032             NUMBER(18,2)                    not null,      /*本次退款金额    */--add by xiechun
   SALHD033             VARCHAR2(1)                     not null,      /*退款类型        */ --1 虚退款 2 实退款
   SALHD034             INTEGER  ,                                     /*设计师          */--add by xiechun 20110321
   SALHD035             NUMBER(12,2) ,                                 /*送货楼层        */--add by xiechun 20110401
   SALHD036             VARCHAR2(1),                                   /*是否有电梯      */-- 0.没有，1.有  add by xiechun 20110401
   SALHD037             VARCHAR2(1)           not null,                /*来源单据类型    */--1.手工录入 2.采购退货单3.采购订单作废单
   SALHD038             VARCHAR2(30)          not null,                /*来源单号        */--20111020 add by xiechun
   SALHD039             INTEGER ,                                      /*来源单ID        */--20111020 add by xiechun
   SALHD040             VARCHAR2(1),                                   /*配送方式        */ --20111104 add by xiechun1.统配2.直配
   SALHD041             VARCHAR2(30),                                  /*会员卡号        */ --20120426 add by xiechun
   SALHD042             INTEGER,                                       /*销退仓库        */ --20121219 add by xiechun
   CREATE_USER      VARCHAR2(12),                                      /*建立人员        */
   USER_GROUP        VARCHAR2(12),                                     /*建立人员部门    */                               
   CREATE_DATE      DATE,                                              /*建立日期        */
   MODIFIER            VARCHAR2(12),                                   /*修改人员        */
   MODI_DATE         DATE,                                             /*修改日期        */
   FLAG                     NUMBER(1),                                 /*资料状态        */
   constraint PK_TB_SALHD primary key (SALHD_ID)
);
create unique index AK_TB_SALHD on TB_SALHD (SALHD002,SALHD005);
create sequence SEQ_TB_SALHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHD to public;
grant index  on TB_SALHD to public;
grant update on TB_SALHD to public; 
grant delete on TB_SALHD to public;  
grant insert on TB_SALHD to public; 
grant select on SEQ_TB_SALHD to public;   