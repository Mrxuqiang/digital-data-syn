/*
================================================================================
表结构代码:TB_SALHA
表结构名称:自营销售单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHA;
drop index AK_TB_SALHA;
drop table TB_SALHA;
create table TB_SALHA  (
   SALHA_ID             INTEGER                          not null,  /*销售单ID         */
   SALHA001             INTEGER                          not null,  /*单别ID           */
   SALHA002             VARCHAR2(30)                     not null,  /*销售单号         */
   SALHA003             DATE                             not null,  /*单据日期         */
   SALHA004             INTEGER                          not null,  /*公司ID           */
   SALHA005             INTEGER                          not null,  /*营运组织ID       */
   SALHA006             INTEGER                                  ,  /*结算客户         */
   SALHA007             INTEGER,                                    /*会员ID           */  
   SALHA008             INTEGER                       ,             /*送货客户ID       */
   SALHA009             VARCHAR2(1)                      not null,  /*结算方式         */--2011110 mark by xiechun
   SALHA010             VARCHAR2(30),                               /*顾客姓名         */
   SALHA011             VARCHAR2(30),                               /*联系电话         */
   SALHA012             VARCHAR2(30),                               /*手机号一         */	 
   SALHA013             VARCHAR2(30),                               /*手机号二         */	 
   SALHA014             VARCHAR2(1)                      not null,  /*提货方式         */
   SALHA015             VARCHAR2(255),                              /*送货地址         */
   SALHA016             NUMBER(12,2) ,                              /*楼层             */
   SALHA017             VARCHAR2(1),                                /*是否有电梯       */--0 便是没有， 1表示有  
   SALHA018             INTEGER,                                    /*导购员           */
   SALHA019             INTEGER,                                    /*排车次数         */
   SALHA020             INTEGER,     			            /*出货营运组织     */ --modify 20100413 INTEGER
   SALHA021             INTEGER,                                    /*录入人ID         */
   SALHA022             DATE,                                       /*录入日期         */
   SALHA023             INTEGER,                                    /*审核人ID         */
   SALHA024             DATE,                                       /*审核日期         */
   SALHA025             VARCHAR2(1)                      not null,  /*审核状态         */   
   SALHA026             VARCHAR2(1)                      not null,  /*结案状态         */   
   SALHA027             VARCHAR2(255),                              /*备注             */
   SALHA028             NUMBER(18,2),                               /*折后金额         */
   SALHA029             DATE ,                                      /*送货日期         */ --add by hansf
   SALHA029             DATE ,                                      /*预排车日期         */ --20111108 modified by zsuny
   SALHA030             VARCHAR2(1),	                            /*是否交完全款     */ --add by hansf 6-2
   SALHA031             VARCHAR2(1),	                            /*特批             */ --add by hansf 6-2
   SALHA032             INTEGER,                                    /*特批人ID         */
   SALHA033             DATE,                                       /*特批日期         */
   SALHA034             INTEGER,                                    /*导购员二         */ --add by hansf
   SALHA035             NUMBER(18,2),                               /*运费             */ --add by hansf
   SALHA036             INTEGER,                                    /*送货区域         */ --add by hansf
   SALHA037             INTEGER,                                    /*小区资料         */ --add by hansf
   SALHA038             VARCHAR2(1),                                /*是否暂订         */ --add by hansf
   SALHA039             DATE                              ,         /*最后交款日期     */ --add by hansf
   SALHA040             NUMBER(18,2),                               /*导购员1分摊比率  */ --add by hansf 0814
   SALHA041             NUMBER(18,2),                               /*导购员2分摊比率  */ --add by hansf 0814
   SALHA042             VARCHAR2(1)                  ,              /*是否现场自提打包 */ --add by xiechun
   SALHA043             INTEGER,                                    /*设计师           */ --20110317 add by xiechun
   SALHA044             VARCHAR2(1)                  ,              /*入户家访         */ --20110317 add by xiechun
   SALHA045             VARCHAR2(255),                              /*送货备注         */ --20110615 add by xiechun
   SALHA046	        INTEGER,                                    /*来源单据ID       */ --20110707 add by xiechun
   SALHA047             INTEGER,                                    /*结算客户         */ --20111110 modify by xiechu 结算客户
   SALHA048             VARCHAR2(1),				    /*采购订单配送方式 */ --20110713 add by xiechun
   SALHA049             VARCHAR2(30),                               /*来源单号         */ --20110720 add by xiechun
   SALHA050             NUMBER(1)                    not null,      /*单据来源         */ --20110723 add by xiechun--1.手工录入2.报价单3.采购订单
   SALHA051             INTEGER,                                    /*导购员三         */ --20110725 add by xiechun
   SALHA052             NUMBER(18,2),                               /*导购员3分摊比率  */ --20110725 add by xiechun 
   SALHA053             VARCHAR2(255),                              /*通讯地址         */ --20110727 add by xiechun
   SALHA054             VARCHAR2(64) ,                              /*订单条码         */ --20110920 add by xiechun    
   SALHA055             DATE,                                       /*预约送货日期     */ --20111108 add by zsuny
   SALHA056             INTEGER,                                    /*收货营运组织     */ --20111111 add by xiechun
   CREATE_USER          VARCHAR2(12)                                /*建立人员         */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门     */                               
   CREATE_DATE          DATE,                                       /*建立日期         */
   MODIFIER             VARCHAR2(12),                               /*修改人员         */
   MODI_DATE            DATE,                                       /*修改日期         */
   FLAG                 NUMBER(1),                                  /*资料状态         */
   constraint PK_TB_SALHA primary key (SALHA_ID)
);
create unique index AK_TB_SALHA on TB_SALHA (SALHA002,SALHA005);
create sequence SEQ_TB_SALHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHA to public;
grant index  on TB_SALHA to public;
grant update on TB_SALHA to public; 
grant delete on TB_SALHA to public;  
grant insert on TB_SALHA to public; 
grant select on SEQ_TB_SALHA to public;   
