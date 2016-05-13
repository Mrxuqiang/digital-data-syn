/*
20121030 add by gaoxl for 15512：增加整单优惠金额字段SALBH057
20130727 add by gaoxl for ：红星 add SALBH058~SALBH060
20130809 add by gaoxl for ：SALBH062~SALBH064
20130812 add by gaoxl for ：add SALBH069~SALBH075
*/
/*
================================================================================
表结构代码:TB_SALBH
表结构名称:销售单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBH;
drop index AK_TB_SALBH;
drop table TB_SALBH;
create table TB_SALBH  (
   SALBH_ID             INTEGER                         not null,  /*销售单ID         */
   SALBH001             INTEGER                         not null,  /*单别ID           */
   SALBH002             VARCHAR2(30)                    not null,  /*销售单号         */
   SALBH003             DATE                            not null,  /*销售日期         */
   SALBH004             INTEGER                         not null,  /*公司ID           */
   SALBH005             INTEGER                         not null,  /*销售组织ID       */
   SALBH006             INTEGER,                                   /*销售订单ID       */
   SALBH007             VARCHAR2(1)                     not null,  /*销售类型         */
   SALBH008             VARCHAR2(1),                               /*单据来源         */
   SALBH009             INTEGER,                                   /*销售凭证种类ID   */
   SALBH010             NUMBER(12),                                /*销售凭证号       */
   SALBH011             INTEGER,                                   /*摊位ID           */
   SALBH012             VARCHAR2(1),                               /*摊位类型         */
   SALBH013             INTEGER ,                                  /*租赁合同ID       */
   SALBH014             INTEGER,                                   /*租赁商户ID       */
   SALBH015             INTEGER                         not null,  /*主品牌ID         */
   SALBH016             INTEGER,                                   /*经营小类ID       */
   SALBH017             INTEGER                         not null,  /*客户ID           */
   SALBH018             INTEGER,                                   /*客户合同号ID     */
   SALBH019             VARCHAR2(1)                     not null,  /*结算方式         */
   SALBH020             VARCHAR2(1)                     not null,  /*提货方式         */
   SALBH021             DATE                            not null,  /*提货日期         */
   SALBH022             INTEGER                         not null,  /*送货客户ID       */
   SALBH023             VARCHAR2(255),                             /*送货地址         */
   SALBH024             VARCHAR2(30),                              /*顾客姓名         */
   SALBH025             VARCHAR2(30),                              /*联系电话         */
   SALBH026             INTEGER,                                   /*导购员           */
   SALBH027             INTEGER,                                   /*折扣人           */
   SALBH028             INTEGER,                                   /*证件类型ID       */
   SALBH029             VARCHAR2(30),                              /*证件号码(星易家单号)         */
   SALBH030             NUMBER(30),                                /*会员卡号         */
   SALBH031             VARCHAR2(1),                               /*是否参加促销     */
   SALBH032             VARCHAR2(1),                               /*是否指定采购     */
   SALBH033             VARCHAR2(255),                             /*备注             */
   SALBH034             VARCHAR2(25),                              /*机号             */
   SALBH035             VARCHAR2(25),                              /*交易序号         */
   SALBH036             INTEGER,                                   /*录入人ID         */
   SALBH037             DATE,                                      /*录入日期         */
   SALBH038             INTEGER,                                   /*审核人ID         */
   SALBH039             DATE,                                      /*审核日期         */
   SALBH040             VARCHAR2(1)                     not null,  /*审核状态         */
   SALBH041             VARCHAR2(1),                               /*是否签核         */
   SALBH042             VARCHAR2(30),                              /*签核单号         */
   SALBH043             VARCHAR2(1),                               /*签核码           */
   SALBH044             VARCHAR2(1),                               /*租赁促销层级     */
   SALBH045             INTEGER,                                   /*应收单ID         */ 
   SALBH046             VARCHAR2(1),                               /*跟踪状态         */ --2010-01-27 ADD BY HANSF
   SALBH047             NUMBER(12,2) ,                             /*楼层             */  --2010-03-04 add by hansf
   SALBH048             VARCHAR2(1),                               /*是否有电梯  0 便是没有， 1表示*/  
   SALBH049             VARCHAR2(30),                              /*手机号一         */	 
   SALBH050             VARCHAR2(30),                              /*手机号二         */	 
   SALBH051              INTEGER,                                  /*排车次数         */        --2010-03-04 add by hansf
   SALBH052             NUMBER(12,2),                              /*整单折后金额     */     --2010-03-12 add by hansf
   SALBH053             VARCHAR2(1)  	,                            /*销售库存         */--2010-03-04 add by hansf
   SALBH054             VARCHAR2(30),                              /*商户凭证号(清理销售单当值为9时可任意交款)       */--2010/3/15 add by ouwx
   SALBH055             VARCHAR2(200),                             /*销售备注         */
   SALBH056             NUMBER(22,2),                              /*销售折扣率(%)（整单折扣率）    */ add by ouwx 2011/11/12
   SALBH057             NUMBER(22,2),                              /*整单优惠金额     */  
   SALBH058             DATE,                                      /*下单日期         */ 
   SALBH059             DATE,                                      /*到货日期         */ 
   SALBH060             DATE,                                      /*实际送货日期     */ 
   SALBH061             VARCHAR2(1),                               /*已回访           */
   SALBH062             VARCHAR2(1),                               /*商户回访确认      */ 
   SALBH063             VARCHAR2(1),                               /*工厂回访确认      */ 
   SALBH064             VARCHAR2(1),                               /*客户回访确认      */
   SALBH065             VARCHAR2(30)                               /*小区增补*/            
   SALBH066             VARCHAR2(80),                              /*货款余额付清时间 */ 
   SALBH067             VARCHAR2(80),                              /*服务费用（元）   */  
   SALBH068             VARCHAR2(255),                             /*其他             */
   SALBH069             VARCHAR2(1),                               /*现金             */
   SALBH070             VARCHAR2(1),                               /*银行卡           */
   SALBH071             VARCHAR2(1),                               /*通汇卡           */
   SALBH072             VARCHAR2(1),                               /*多用途卡         */
   SALBH073             VARCHAR2(1),                               /*分期付款         */
   SALBH074             VARCHAR2(1),                               /*支票             */
   SALBH075             VARCHAR2(1),                               /*其他 -支付方式   */ 
   SALBH076             INTEGER,                                   /*打印次数         */
   SALBH077             INTEGER,                                   /*潜客id           */
   SALBH078             VARCHAR2(1),                   not null,   /*订单类型    1:商城订单 2：线上订单   */--20140620 add by sundan
   SALBH079             DATE,                                      /*预约送货日期     */
   SALBH080             NUMBER(22,2),                              /*销售合计金额     */ 
   SALBH081             NUMBER(22,2),                              /*被抹零金额       */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER,                                    /*资料状态         */
   constraint PK_TB_SALBH primary key (SALBH_ID)
);
create unique index AK_TB_SALBH on TB_SALBH (SALBH002,SALBH005);
create sequence SEQ_TB_SALBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBH to public;
grant index  on TB_SALBH to public;
grant update on TB_SALBH to public; 
grant delete on TB_SALBH to public;  
grant insert on TB_SALBH to public; 
grant select on SEQ_TB_SALBH to public;   