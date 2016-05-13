/*
================================================================================
表结构代码:TB_SALIA
表结构名称:自营报价单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALIA;
drop index AK_TB_SALIA;
drop table TB_SALIA;
create table TB_SALIA  (
   SALIA_ID             INTEGER                          not null,  /*销售单ID         */
   SALIA001             INTEGER                          not null,  /*单别ID           */
   SALIA002             VARCHAR2(30)                     not null,  /*销售单号         */
   SALIA003             DATE                             not null,  /*单据日期         */
   SALIA004             INTEGER                          not null,  /*公司ID           */
   SALIA005             INTEGER                          not null,  /*营运组织ID       */
   SALIA006             INTEGER                                  ,  /*结算客户         */
   SALIA007            INTEGER,                                     /*会员ID           */
   SALIA008             INTEGER                       ,             /*送货客户ID       */
   SALIA009             VARCHAR2(1)                      not null,  /*结算方式         */--2011110 mark by xiechun
   SALIA010             VARCHAR2(30),                               /*顾客姓名         */
   SALIA011             VARCHAR2(30),                               /*联系电话         */
   SALIA012             VARCHAR2(30),                               /*手机号一         */	 
   SALIA013             VARCHAR2(30),                               /*手机号二         */	 
   SALIA014             VARCHAR2(1)                      not null,  /*提货方式         */
   SALIA015             VARCHAR2(255),                              /*送货地址         */
   SALIA016             NUMBER(12,2) ,                              /*楼层             */
   SALIA017             VARCHAR2(1),                                /*是否有电梯       */--0 便是没有， 1表示有  
   SALIA018             INTEGER,                                    /*导购员           */
   SALIA019             INTEGER,                                    /*排车次数         */
   SALIA020             INTEGER,     			            /*出货营运组织     */ --modify 20100413 INTEGER
   SALIA021             INTEGER,                                    /*录入人ID         */
   SALIA022             DATE,                                       /*录入日期         */
   SALIA023             INTEGER,                                    /*审核人ID         */
   SALIA024             DATE,                                       /*审核日期         */
   SALIA025             VARCHAR2(1)                      not null,  /*审核状态         */   
   SALIA026             VARCHAR2(1)                      not null,  /*结案状态         */   
   SALIA027             VARCHAR2(255),                              /*备注             */
   SALIA028             NUMBER(18,2),                               /*折后金额         */
   SALIA029             DATE ,                                      /*送货日期         */ --add by hansf
   --SALIA029             DATE ,                                      /*预排车日期         */ --20111108 modified by zsuny
   SALIA030             VARCHAR2(1),	                            /*是否交完全款     */ --add by hansf 6-2
   SALIA031             VARCHAR2(1),	                            /*特批             */ --add by hansf 6-2
   SALIA032             INTEGER,                                    /*特批人ID         */
   SALIA033             DATE,                                       /*特批日期         */
   SALIA034             INTEGER,                                    /*导购员二         */ --add by hansf
   SALIA035             NUMBER(18,2),                               /*运费             */ --add by hansf
   SALIA036             INTEGER,                                    /*送货区域         */ --add by hansf
   SALIA037             INTEGER,                                    /*小区资料         */ --add by hansf
   SALIA038             VARCHAR2(1),                                /*是否暂订         */ --add by hansf
   SALIA039             DATE                              ,         /*最后交款日期     */ --add by hansf
   SALIA040             NUMBER(18,2),                               /*导购员1分摊比率  */ --add by hansf 0814
   SALIA041             NUMBER(18,2),                               /*导购员2分摊比率  */ --add by hansf 0814
   SALIA042             VARCHAR2(1)                  ,              /*是否现场自提打包 */ --add by xiechun
   SALIA043             INTEGER,                                    /*设计师           */ --20110317 add by xiechun
   SALIA044             VARCHAR2(1)                  ,              /*入户家访         */ --20110317 add by xiechun
   SALIA045             VARCHAR2(255),                              /*送货备注         */ --20110615 add by xiechun
   SALIA046	        INTEGER,                                    /*来源单据ID       */ --20110707 add by xiechun
   SALIA047             INTEGER,                                    /*结算客户         */ --20111110 modify by xiechu 结算客户
   SALIA048             VARCHAR2(1),				    /*采购订单配送方式 */ --20110713 add by xiechun
   SALIA049             VARCHAR2(30),                               /*来源单号         */ --20110720 add by xiechun
   SALIA050             VARCHAR2(1)                  not null,      /*单据来源         */ --20110723 add by xiechun--1.手工录入2.报价单3.采购订单
   SALIA051             INTEGER,                                    /*导购员三         */ --20110725 add by xiechun
   SALIA052             NUMBER(18,2),                               /*导购员3分摊比率  */ --20110725 add by xiechun 
   SALIA053             VARCHAR2(255),                              /*通讯地址         */ --20110727 add by xiechun
   SALIA054             VARCHAR2(30) ,                              /*订单条码         */ --20110920 add by xiechun    
   SALIA055             DATE,                                       /*预约送货日期     */ --20111108 add by zsuny
   SALIA056             INTEGER,                                    /*收货营运组织     */ --20111111 add by xiechun
   CREATE_USER          VARCHAR2(12)                                /*建立人员         */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门     */                               
   CREATE_DATE          DATE,                                       /*建立日期         */
   MODIFIER             VARCHAR2(12),                               /*修改人员         */
   MODI_DATE            DATE,                                       /*修改日期         */
   FLAG                 NUMBER(1),                                 
   constraint PK_TB_SALIA primary key (SALIA_ID)
);
create unique index AK_TB_SALIA on TB_SALIA (SALIA002,SALIA005);
create sequence SEQ_TB_SALIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALIA to public;
grant index  on TB_SALIA to public;
grant update on TB_SALIA to public; 
grant delete on TB_SALIA to public;  
grant insert on TB_SALIA to public; 
grant select on SEQ_TB_SALIA to public;   
