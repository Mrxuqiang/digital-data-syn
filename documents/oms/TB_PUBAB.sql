/*
================================================================================
表结构代码:TB_PUBAB
表结构名称:营运组织参数表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBAB;
drop index AK_TB_PUBAB;
drop table TB_PUBAB;
create table TB_PUBAB  (
   PUBAB_ID             INTEGER                         not null,  /*营运组织参数ID                                      */
   PUBAB001             INTEGER                         not null,  /*营运组织ID                                          */
   PUBAB002             VARCHAR2(1),                               /*启用商户过程控管0,1                                 */
   PUBAB003             VARCHAR2(1),                               /*黑名单处理                                          */--0.允许不警告 1.允许警告 2.不允许
   PUBAB004             INTEGER,                                   /*预租协议费用ID                                      */
   PUBAB005             INTEGER,                                   /*商户清场费用ID                                      */
   PUBAB006             VARCHAR2(1),                               /*合同优惠规则                                        */
   PUBAB007             VARCHAR2(1),                               /*展帐方式                                            */
   PUBAB008             VARCHAR2(1),                               /*合同期连续控制                                      */
   PUBAB009             VARCHAR2(1),                               /*帐单金额小数位                                      */
   PUBAB010             VARCHAR2(1),                               /*帐单明细金额小数位                                  */
   PUBAB011             INTEGER,                                   /*销售摊位ID                                          */
   PUBAB012             INTEGER,                                   /*销售仓库ID                                          */
   PUBAB013             INTEGER,                                   /*合同费用单别ID                                      */
   PUBAB014             INTEGER,                                   /*场地编码规则                                        */
   PUBAB015             INTEGER,                                   /*摊位编码规则                                        */
   PUBAB016             INTEGER,                                   /*客商编码规则                                        */
   PUBAB017             INTEGER,                                   /*租赁合同编码规则                                    */
   PUBAB018             INTEGER,                                   /*广告位合同编码规则                                  */
   PUBAB019             INTEGER,                                   /*广告位合同费用单别ID                                */
   PUBAB020             INTEGER,                                   /*销售凭证类别                                        */
   PUBAB021             INTEGER,                                   /*交款凭证类别                                        */
   PUBAB022             INTEGER,                                   /*退款凭证类别                                        */
   PUBAB023             VARCHAR2(1),                               /*租赁摊位控管销售凭证号                              */
   PUBAB024             VARCHAR2(1),                               /*自营摊位控管销售凭证号                              */
   PUBAB025             VARCHAR2(1),                               /*是否进行券号控管                                    */
   PUBAB026             INTEGER,                                   /*默认销售客户                                        */
   PUBAB027             VARCHAR2(1),                               /*启用销售日结检核                                    */
   PUBAB028             VARCHAR2(1),                               /*租赁促销层级                                        */--1.摊位 2.商品
   PUBAB029             INTEGER,                                   /*退货垫付费用ID                                      */
   PUBAB030             INTEGER,                                   /*返款比例扣款费用单别ID                              */
   PUBAB031             INTEGER,                                   /*促销费用分摊单别ID                                  */
   PUBAB032             INTEGER,                                   /*商品策略                                            */  
   PUBAB033             INTEGER,                                   /*供应商合同默认单别                                  */
   PUBAB034             INTEGER,                                   /*预租协议费用单别ID                                  */
   PUBAB035             INTEGER,                                   /*代征税费用单别ID                                    */
   PUBAB036             INTEGER,                                   /*代征税费用项ID                                      */
   PUBAB037             INTEGER,                                   /*电费费用单别ID                                      */
   PUBAB038             INTEGER,                                   /*电话费费用单别ID                                    */
   PUBAB039             INTEGER,                                   /*预收动用费用单别ID                                  */
   PUBAB040             INTEGER,                                   /*预收动用支出单别ID                                  */
   PUBAB041             INTEGER,                                   /*媒体合同分摊费用单别ID                              */
   PUBAB042             INTEGER,                                   /*商户预登记单别ID                                    */
   PUBAB043		DATE,					   /*关账日期                                            */
   PUBAB044		VARCHAR2(1),			           /*不控管最低售价                                      */
   PUBAB045		VARCHAR2(1),				   /*不控管销退实退款                                    */  
   PUBAB046		VARCHAR2(1),			           /*自动生成欠费明细                                    */
   PUBAB047		INTEGER,				   /*代收款返款单别ID                                    */
   PUBAB048		INTEGER,				   /*返款现金异动码ID                                    */   
   PUBAB049		INTEGER,				   /*代收款返款应付单别ID                                */   
   PUBAB050             VARCHAR2(1),                               /*不控管税票号                                        */ --add ouwx 10/3/24
   PUBAB051             INTEGER,                                   /*城建税费用项                                        */ --add ouwx 10/3/24
   PUBAB052             INTEGER,  			           /*教育费附加税费用项                                  */ add ouwx 10/3/24
   PUBAB053             INTEGER,  			           /*地方教育费附加税费用项                              */ add ouwx 10/3/24
   PUBAB054             INTEGER,  			           /*水利基金税费用项                                    */ add ouwx 10/3/24
   PUBAB055             INTEGER,  			           /*个人所得税费用项                                    */ add ouwx 10/3/24
   PUBAB056             INTEGER,  			           /*定额税费用项                                        */ add ouwx 10/3/24
   PUBAB057             INTEGER,  			           /*超定额税费用项                                      */ add ouwx 10/3/24
   PUBAB058             INTEGER,                                   /*电费单别                                            */ add ouwx 10/4/20
   PUBAB059             VARCHAR2(1),                               /*金额保留小数位规则                                  */ add zhaoming 10/4/26
   PUBAB060             VARCHAR2(1),                               /*零头天数计算方法                                    */ add zhaoming 10/4/26
   PUBAB061             INTEGER,                                   /*费用应收单别                                        */ add gaoxl 10/5/7   
   PUBAB062             VARCHAR2(1),                               /*代收款账扣方式                                      */ --1.欠费扣款 2.账扣 add ouwx 10/4/20
   PUBAB063             VARCHAR2(1),                               /*终止合同可销售                                      */
   PUBAB064             VARCHAR2(1),                               /*电费金额小数位                                      */ add mengxh 10/06/03
   PUBAB065             VARCHAR2(1),                               /*终止合同可发放凭证                                  */ add huangshan 10/06/04
   PUBAB066             INTEGER,                                   /*售券应收单别ID                                      */ 20100607 add by gaoxl
   PUBAB067             INTEGER,                                   /*售券现金异动码ID                                    */ 20100607 add by gaoxl
   PUBAB068             INTEGER,                                   /*比例扣款费用垫付单别                                */
   PUBAB069		VARCHAR2(1),                               /*按账单明细生成费用单                                */ add huangshan 10/06/30
   PUBAB070		INTEGER,                                   /*默认返款方式                                        */ add ouwx 10/07/13   
   PUBAB071		VARCHAR2(1),                               /*租赁日期交叉                                        */ add huangshan 10/07/14  
   PUBAB072             INTEGER,                                   /*媒体合同编码规则                                    */ add ouwx 10/08/01
   PUBAB073             VARCHAR2(1),                               /*所属楼层控制:                                       */ --1允许 2.提醒 3.阻止 add ouwx 10/08/24
   PUBAB074             INTEGER,                                   /*促销垫付费用项                                      */ add ouwx 100828
   PUBAB075             INTEGER,                                   /*空调费用项                                          */ add ouwx 101020
   PUBAB076             VARCHAR2(1),                               /*部门控管                                            */ add youyx 20101028
   PUBAB077             INTEGER,                                   /*商户处罚单ID                                        */ add youyx 20100915
   PUBAB101             INTEGER,                                   /*采购默认税种                                        */
   PUBAB102             INTEGER,                                   /*价格策略组ID                                        */ --20110419 add by xiechun
   PUBAB103             INTEGER,                                   /*品类引进协议单别ID                                  */
   PUBAB104             INTEGER,                                    /*销售库位                                           */   
   PUBAB105		VARCHAR2(1),				   /*自营收银方式                                        */
   PUBAB106             INTEGER,                                   /*维修费费用单别ID                                    */
   PUBAB107             VARCHAR2(1),                               /*采购订单是否生成预付                                */   
   PUBAB108       	NUMBER(12,2),				   /*定金比率字段                                        */ --参与计算的时候除以100
   PUBAB109		VARCHAR2(1),				   /*采配方式                                            */	
   PUBAB110		VARCHAR2(1),				   /*废弃，备用                                          */	 
   PUBAB201		VARCHAR2(1),				   /*代收银应收方式                                      */   
   PUBAB202             INTEGER,                                   /*默认备货仓库                                        */--20110706 modify by xiechun 收货仓库
   PUBAB203             INTEGER,                                   /*默认备货库位                                        */
   PUBAB204            NUMBER(22,2),			           /*送货金额                                            */ modif by hansf 0622
   PUBAB205             INTEGER,   				   /*上架单默认单别                                      */ add by hansf20100919
   PUBAB206            VARCHAR2(1),				   /*确认收入方式                                        */ add by hansf20100919
   PUBAB207            VARCHAR2(1),				   /*确认应付方式                                        */ --1 暂估 2应付add by hansf 20101103
   PUBAB208             INTEGER,                                   /*默认退货仓库                                        */ --20110609 add by xiechun 
   PUBAB209             INTEGER,                                   /*默认出货营运组织                                    */ --20110624 add by xiechun
   PUBAB210             INTEGER,                                   /*要货目标组织                                        */ --20110624 add by xiechun
   PUBAB211            VARCHAR2(1),				   /*销售开关类型                                        */ --20110704 add by xiechun
   PUBAB212             INTEGER,				   /*默认收货组织                                        */ --20110706 add by xiechun
   PUBAB213            VARCHAR2(1),				   /*自动生成的销售单是否立即审核                        */ --20110704 add by xiechun
   PUBAB214            VARCHAR2(1),				   /*销售生成单据类型                                    */ --20110713 add by xiechun
   PUBAB215            VARCHAR2(1),				   /*采购订单配送方式                                    */ --20110713 add by xiechun
   PUBAB216             VARCHAR2(1),                               /*账户类型                                            */--20110717 add by gaoxl 1、公司；2、营运组织
   PUBAB217            VARCHAR2(1),				   /*是否只价格策略销售                                  */ --201100805 add by xiechun
   PUBAB218             VARCHAR2(1),                               /*客商变更查询方式                                    */ --20110817 add by xiechun
   PUBAB219		VARCHAR2(1),			           /*垫付生成应付                                        */ --20110829 add by shizhan
   PUBAB220             INTEGER,                                   /*默认垫付付款商户                                    */ --20110829 add by ouwx
   PUBAB221             VARCHAR2(1),                               /*促销金额小数位                                      */ add ouwx 2011/09/02
   PUBAB222             VARCHAR2(1),                               /*促销金额小数位规则                                  */ add ouwx 2011/09/02
   PUBAB223             VARCHAR2(1),                               /*租赁商品开窗 1.品类协议 2.扣率调整                  */ add ouwx 2011/09/14
   PUBAB224             number(18,3),                              /*配送周期                                            */ --20111022 add by xiechun 
   PUBAB225             VARCHAR2(1),                               /*为零账单生成费用                                    */ add ouwx 2011/10/19 
   PUBAB226             VARCHAR2(1),                               /*手续费不返款                                        */ add ouwx 2011/10/16
   PUBAB301             VARCHAR2(1),                               /*合同变更差异管控                                    */ --1.允许 2.提醒 3.阻止  add ouwx 2011/10/20
   PUBAB227             VARCHAR2(1),                               /*采购价来源                                          */ --20111025 add by xiechun --1.商品资料，2.品类协议
   PUBAB228             VARCHAR2(1),                               /*回库单审核自动审核签收单                            */ --20111024 add by sunwei 
   PUBAB229             VARCHAR2(1),                               /*交货方式                                            */ --20111104 add by sunwei--1.送货2.自提
   PUBAB230             VARCHAR2(1),                               /*采购申请单审核生成采购订单                          */--20111103 add by shizhan
   PUBAB231             VARCHAR2(1) default 0,                     /*是否在销售时控制送货金额，1.控制；0.不控制；默认为0 */--20111108 add by zsuny
   PUBAB232             INTEGER     default 0,                     /*预排车提前天数，默认为0                             */--20111108 add by zsuny
   PUBAB301             VARCHAR2(1),                               /*合同变更差异管控                                    */--1.允许 2.提醒 3.阻止  add ouwx 2011/10/20
   PUBAB302             VARCHAR2(8),                               /*营业结束时间                                        */ add ouwx 2011/11/03
   PUBAB303             VARCHAR2(1),                               /*销售折扣管控                                        */ add ouwx 2011/11/12     
   PUBAB304             VARCHAR2(1),                               /*全款后返款                                          */ add ouwx 2011/11/17
   PUBAB233             VARCHAR2(1),                               /*退货方式                                            */ --20120209 add by xiechun--1.送货2.取货
   PUBAB234             VARCHAR2(1),                               /*默认收款方式                                        */ --20120321 add by xiechun--1.自收银2.代收银
   PUBAB305             VARCHAR2(1),                               /*回库单审核是否审核签收单                            */ 
   PUBAB309             INTEGER,                                   /*默认商品                                            */ --20120913 add by shizhan 
   PUBAB310             VARCHAR2(1),                               /*已返款销售退货管控                                  */ --20121019 add by shizhan --1.不处理 2.提醒 3.阻止
   PUBAB311             VARCHAR2(1),                               /*销售日结不检核                                      */ --20121029 add by shizhan 
   PUBAB312             VARCHAR2(1),                               /*取应收已审核费用                                    */ --20121029 add by shizhan 
   CREATE_USER          VARCHAR2(1),                               /*建立人员                                            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                        */                               
   CREATE_DATE          DATE,                                      /*建立日期                                            */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                            */
   MODI_DATE            DATE,                                      /*修改日期                                            */
   FLAG                 NUMBER(1),                                 /*资料状态                                            */
   constraint PK_TB_PUBAB primary key (PUBAB_ID)
);
create unique index AK_TB_PUBAB on TB_PUBAB (PUBAB001);
create sequence SEQ_TB_PUBAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBAB to public;
grant index  on TB_PUBAB to public;
grant update on TB_PUBAB to public; 
grant delete on TB_PUBAB to public;  
grant insert on TB_PUBAB to public; 
grant select on SEQ_TB_PUBAB to public;   