/* 
================================================================================
表结构代码:TB_BATBG
表结构名称:库存汇总表-套件1
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATBG;                       
drop index AK_TB_BATBG;                       
drop table TB_BATBG;                       
create table TB_BATBG  (                       
			BATBG_ID	NUMBER	not null,				                      /*主键*/
			BATBG001	DATE	not null,					                      /*日期（精确到天）*/
			BATBG002	NUMBER	not null,				                      /*仓库ID*/
			BATBG003	NUMBER	not null,				                      /*仓位ID*/
			BATBG004	NUMBER	not null,				                      /*商品ID*/
			BATBG005	NUMBER,								                        /*维度1ID*/
			BATBG006	NUMBER,								                        /*维度2ID*/
			BATBG007	NUMBER,								                        /*维度3ID*/
			BATBG008	NUMBER,								                        /*维度4ID*/
			BATBG009	NUMBER,								                        /*维度5ID*/
			BATBG010	NUMBER	not null,				                      /*商品服务属性（1、套件 2、组装件 3、补件）*/
			BATBG011	NUMBER	not null,				                      /*销售属性（1、正常商品 2、定制商品 3、赠品 4、样品 5、处理品）*/
			BATBG012	NUMBER(18,3)	not null,	                      /*当前库存数量（截止到当前时间）*/
			BATBG013	NUMBER(18,3)	not null,	                      /*当前库存金额（截止到当前时间）*/
			BATBG014	NUMBER(18,3)	not null,	                      /*采购入库数量*/
			BATBG015	NUMBER(18,3)	not null,	                      /*采购入库金额*/
			BATBG016	NUMBER(18,3)	not null,	                      /*配送到货入库数量*/
			BATBG017	NUMBER(18,3)	not null,	                      /*配送到货入库金额*/
			BATBG018	NUMBER(18,3)	not null,	                      /*配退到货入库数量*/
			BATBG019	NUMBER(18,3)	not null,	                      /*配退到货入库金额*/
			BATBG020	NUMBER(18,3)	not null,	                      /*销售退货入库数量*/
			BATBG021	NUMBER(18,3)	not null,	                      /*销售退货入库金额*/
			BATBG022	NUMBER(18,3)	not null,	                      /*赠品退回入库数量*/
			BATBG023	NUMBER(18,3)	not null,	                      /*赠品退回入库金额*/
			BATBG024	NUMBER(18,3)	not null,	                      /*调拨收货入库数量*/
			BATBG025	NUMBER(18,3)	not null,	                      /*调拨收货入库金额*/
			BATBG026	NUMBER(18,3)	not null,	                      /*出样入库数量*/
			BATBG027	NUMBER(18,3)	not null,	                      /*出样入库金额*/
			BATBG028	NUMBER(18,3)	not null,	                      /*退样入库数量*/
			BATBG029	NUMBER(18,3)	not null,	                      /*退样入库金额*/
			BATBG030	NUMBER(18,3)	not null,	                      /*组装入库数量*/
			BATBG031	NUMBER(18,3)	not null,	                      /*组装入库金额*/
			BATBG032	NUMBER(18,3)	not null,	                      /*损益入库数量*/
			BATBG033	NUMBER(18,3)	not null,	                      /*损益入库金额*/
			BATBG034	NUMBER(18,3)	not null,	                      /*移仓入库数量*/
			BATBG035	NUMBER(18,3)	not null,	                      /*移仓入库金额*/
			BATBG036	NUMBER(18,3)	not null,	                      /*拆分入库数量*/
			BATBG037	NUMBER(18,3)	not null,	                      /*拆分入库金额*/
			BATBG038	NUMBER(18,3)	not null,	                      /*移仓出库数量*/
			BATBG039	NUMBER(18,3)	not null,	                      /*移仓出库成本金额*/
			BATBG040	NUMBER(18,3)	not null,	                      /*移仓出库结算金额*/
			BATBG041	NUMBER(18,3)	not null,	                      /*组装出库数量*/
			BATBG042	NUMBER(18,3)	not null,	                      /*组装出库成本金额*/
			BATBG043	NUMBER(18,3)	not null,	                      /*组装出库结算金额*/
			BATBG044	NUMBER(18,3)	not null,	                      /*拆分出库数量*/
			BATBG045	NUMBER(18,3)	not null,	                      /*拆分出库成本金额*/
			BATBG046	NUMBER(18,3)	not null,	                      /*拆分出库结算金额*/
			BATBG047	NUMBER(18,3)	not null,	                      /*损益出库数量*/
			BATBG048	NUMBER(18,3)	not null,	                      /*损益出库成本金额*/
			BATBG049	NUMBER(18,3)	not null,	                      /*损益出库结算金额*/
			BATBG050	NUMBER(18,3)	not null,	                      /*采购退货出库数量*/
			BATBG051	NUMBER(18,3)	not null,	                      /*采购退货出库成本金额*/
			BATBG052	NUMBER(18,3)	not null,	                      /*采购退货出库结算金额*/
			BATBG053	NUMBER(18,3)	not null,	                      /*配送发货在途数量*/
			BATBG054	NUMBER(18,3)	not null,	                      /*配送发货在途金额*/
			BATBG055	NUMBER(18,3)	not null,	                      /*配送发货出库结算金额*/
			BATBG056	NUMBER(18,3)	not null,	                      /*配送发货出库数量*/
			BATBG057	NUMBER(18,3)	not null,	                      /*配送发货出库成本金额*/
			BATBG058	NUMBER(18,3)	not null,	                      /*配退发货出库数量*/
			BATBG059	NUMBER(18,3)	not null,	                      /*配退发货出库成本金额*/
			BATBG060	NUMBER(18,3)	not null,	                      /*配退发货出库结算金额*/
			BATBG061	NUMBER(18,3)	not null,	                      /*配退发货在途数量*/
			BATBG062	NUMBER(18,3)	not null,	                      /*配退发货在途金额*/
			BATBG063	NUMBER(18,3)	not null,	                      /*销售出库数量*/
			BATBG064	NUMBER(18,3)	not null,	                      /*销售出库成本金额*/
			BATBG065	NUMBER(18,3)	not null,	                      /*销售出库结算金额*/
			BATBG066	NUMBER(18,3)	not null,	                      /*销售在途数量*/
			BATBG067	NUMBER(18,3)	not null,	                      /*销售在途金额*/
			BATBG068	NUMBER(18,3)	not null,	                      /*赠品出库数量*/
			BATBG069	NUMBER(18,3)	not null,	                      /*赠品出库成本金额*/
			BATBG070	NUMBER(18,3)	not null,	                      /*赠品在途数量*/
			BATBG071	NUMBER(18,3)	not null,	                      /*赠品在途金额*/
			BATBG072	NUMBER(18,3)	not null,	                      /*赠品出库结算金额*/
			BATBG073	NUMBER(18,3)	not null,	                      /*调拨发货出库数量*/
			BATBG074	NUMBER(18,3)	not null,	                      /*调拨发货出库成本金额*/
			BATBG075	NUMBER(18,3)	not null,	                      /*调拨发货在途数量*/
			BATBG076	NUMBER(18,3)	not null,	                      /*调拨发货在途金额*/
			BATBG077	NUMBER(18,3)	not null,	                      /*调拨发货出库结算金额*/
			BATBG078	NUMBER(18,3)	not null,	                      /*出样出库数量*/
			BATBG079	NUMBER(18,3)	not null,	                      /*出样出库成本金额*/
			BATBG080	NUMBER(18,3)	not null,	                      /*出样在途数量*/
			BATBG081	NUMBER(18,3)	not null,	                      /*出样在途金额*/
			BATBG082	NUMBER(18,3)	not null,	                      /*出样出库结算金额*/
			BATBG083	NUMBER(18,3)	not null,	                      /*退样出库数量*/
			BATBG084	NUMBER(18,3)	not null,	                      /*退样出库成本金额*/
			BATBG085	NUMBER(18,3)	not null,	                      /*退样在途数量*/
			BATBG086	NUMBER(18,3)	not null,	                      /*退样在途金额*/
			BATBG087	NUMBER(18,3)	not null,	                      /*退样库结算金额*/
   constraint PK_TB_BATBG primary key (BATBG_ID)
);
--create unique index AK_TB_BATBG on TB_BATBG (BATBG_ID);
create sequence SEQ_TB_BATBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATBG to public;
grant index  on TB_BATBG to public;
grant update on TB_BATBG to public;
grant delete on TB_BATBG to public; 
grant insert on TB_BATBG to public;
grant select on SEQ_TB_BATBG to public;