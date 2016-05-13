/* 
================================================================================
表结构代码:TB_BATBE
表结构名称:库存汇总表-子件
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATBE;                       
drop index AK_TB_BATBE;                       
drop table TB_BATBE;                       
create table TB_BATBE  (                       
			BATBE_ID	NUMBER	not null,				                      /*主键*/
			BATBE001	DATE	not null,					                      /*日期（精确到天）*/
			BATBE002	NUMBER	not null,				                      /*仓库ID*/
			BATBE003	NUMBER	not null,				                      /*仓位ID*/
			BATBE004	NUMBER	not null,				                      /*商品ID*/
			BATBE005	NUMBER,								                      	/*维度1ID*/
			BATBE006	NUMBER,								                      	/*维度2ID*/
			BATBE007	NUMBER,								                      	/*维度3ID*/
			BATBE008	NUMBER,								                      	/*维度4ID*/
			BATBE009	NUMBER,								                      	/*维度5ID*/
			BATBE010	NUMBER	not null,				                      /*商品服务属性（1、套件 2、组装件 3、补件）*/
			BATBE011	NUMBER	not null,				                      /*销售属性（1、正常商品 2、定制商品 3、赠品 4、样品 5、处理品）*/
			BATBE012	NUMBER(18,3)	not null,	                      /*当前库存数量（截止到当前时间）*/
			BATBE013	NUMBER(18,3)	not null,	                      /*当前库存金额（截止到当前时间）*/
			BATBE014	NUMBER(18,3)	not null,	                      /*采购入库数量*/
			BATBE015	NUMBER(18,3)	not null,	                      /*采购入库金额*/
			BATBE016	NUMBER(18,3)	not null,	                      /*配送到货入库数量*/
			BATBE017	NUMBER(18,3)	not null,	                      /*配送到货入库金额*/
			BATBE018	NUMBER(18,3)	not null,	                      /*配退到货入库数量*/
			BATBE019	NUMBER(18,3)	not null,	                      /*配退到货入库金额*/
			BATBE020	NUMBER(18,3)	not null,	                      /*销售退货入库数量*/
			BATBE021	NUMBER(18,3)	not null,	                      /*销售退货入库金额*/
			BATBE022	NUMBER(18,3)	not null,	                      /*赠品退回入库数量*/
			BATBE023	NUMBER(18,3)	not null,	                      /*赠品退回入库金额*/
			BATBE024	NUMBER(18,3)	not null,	                      /*调拨收货入库数量*/
			BATBE025	NUMBER(18,3)	not null,	                      /*调拨收货入库金额*/
			BATBE026	NUMBER(18,3)	not null,	                      /*出样入库数量*/
			BATBE027	NUMBER(18,3)	not null,	                      /*出样入库金额*/
			BATBE028	NUMBER(18,3)	not null,	                      /*退样入库数量*/
			BATBE029	NUMBER(18,3)	not null,	                      /*退样入库金额*/
			BATBE030	NUMBER(18,3)	not null,	                      /*组装入库数量*/
			BATBE031	NUMBER(18,3)	not null,	                      /*组装入库金额*/
			BATBE032	NUMBER(18,3)	not null,	                      /*损益入库数量*/
			BATBE033	NUMBER(18,3)	not null,	                      /*损益入库金额*/
			BATBE034	NUMBER(18,3)	not null,	                      /*移仓入库数量*/
			BATBE035	NUMBER(18,3)	not null,	                      /*移仓入库金额*/
			BATBE036	NUMBER(18,3)	not null,	                      /*拆分入库数量*/
			BATBE037	NUMBER(18,3)	not null,	                      /*拆分入库金额*/
			BATBE038	NUMBER(18,3)	not null,	                      /*移仓出库数量*/
			BATBE039	NUMBER(18,3)	not null,	                      /*移仓出库成本金额*/
			BATBE040	NUMBER(18,3)	not null,	                      /*移仓出库结算金额*/
			BATBE041	NUMBER(18,3)	not null,	                      /*组装出库数量*/
			BATBE042	NUMBER(18,3)	not null,	                      /*组装出库成本金额*/
			BATBE043	NUMBER(18,3)	not null,	                      /*组装出库结算金额*/
			BATBE044	NUMBER(18,3)	not null,	                      /*拆分出库数量*/
			BATBE045	NUMBER(18,3)	not null,	                      /*拆分出库成本金额*/
			BATBE046	NUMBER(18,3)	not null,	                      /*拆分出库结算金额*/
			BATBE047	NUMBER(18,3)	not null,	                      /*损益出库数量*/
			BATBE048	NUMBER(18,3)	not null,	                      /*损益出库成本金额*/
			BATBE049	NUMBER(18,3)	not null,	                      /*损益出库结算金额*/
			BATBE050	NUMBER(18,3)	not null,	                      /*采购退货出库数量*/
			BATBE051	NUMBER(18,3)	not null,	                      /*采购退货出库成本金额*/
			BATBE052	NUMBER(18,3)	not null,	                      /*采购退货出库结算金额*/
			BATBE053	NUMBER(18,3)	not null,	                      /*配送发货在途数量*/
			BATBE054	NUMBER(18,3)	not null,	                      /*配送发货在途金额*/
			BATBE055	NUMBER(18,3)	not null,	                      /*配送发货出库结算金额*/
			BATBE056	NUMBER(18,3)	not null,	                      /*配送发货出库数量*/
			BATBE057	NUMBER(18,3)	not null,	                      /*配送发货出库成本金额*/
			BATBE058	NUMBER(18,3)	not null,	                      /*配退发货出库数量*/
			BATBE059	NUMBER(18,3)	not null,	                      /*配退发货出库成本金额*/
			BATBE060	NUMBER(18,3)	not null,	                      /*配退发货出库结算金额*/
			BATBE061	NUMBER(18,3)	not null,	                      /*配退发货在途数量*/
			BATBE062	NUMBER(18,3)	not null,	                      /*配退发货在途金额*/
			BATBE063	NUMBER(18,3)	not null,	                      /*销售出库数量*/
			BATBE064	NUMBER(18,3)	not null,	                      /*销售出库成本金额*/
			BATBE065	NUMBER(18,3)	not null,	                      /*销售出库结算金额*/
			BATBE066	NUMBER(18,3)	not null,	                      /*销售在途数量*/
			BATBE067	NUMBER(18,3)	not null,	                      /*销售在途金额*/
			BATBE068	NUMBER(18,3)	not null,	                      /*赠品出库数量*/
			BATBE069	NUMBER(18,3)	not null,	                      /*赠品出库成本金额*/
			BATBE070	NUMBER(18,3)	not null,	                      /*赠品在途数量*/
			BATBE071	NUMBER(18,3)	not null,	                      /*赠品在途金额*/
			BATBE072	NUMBER(18,3)	not null,	                      /*赠品出库结算金额*/
			BATBE073	NUMBER(18,3)	not null,	                      /*调拨发货出库数量*/
			BATBE074	NUMBER(18,3)	not null,	                      /*调拨发货出库成本金额*/
			BATBE075	NUMBER(18,3)	not null,	                      /*调拨发货在途数量*/
			BATBE076	NUMBER(18,3)	not null,	                      /*调拨发货在途金额*/
			BATBE077	NUMBER(18,3)	not null,	                      /*调拨发货出库结算金额*/
			BATBE078	NUMBER(18,3)	not null,	                      /*出样出库数量*/
			BATBE079	NUMBER(18,3)	not null,	                      /*出样出库成本金额*/
			BATBE080	NUMBER(18,3)	not null,	                      /*出样在途数量*/
			BATBE081	NUMBER(18,3)	not null,	                      /*出样在途金额*/
			BATBE082	NUMBER(18,3)	not null,	                      /*出样出库结算金额*/
			BATBE083	NUMBER(18,3)	not null,	                      /*退样出库数量*/
			BATBE084	NUMBER(18,3)	not null,	                      /*退样出库成本金额*/
			BATBE085	NUMBER(18,3)	not null,	                      /*退样在途数量*/
			BATBE086	NUMBER(18,3)	not null,	                      /*退样在途金额*/
			BATBE087	NUMBER(18,3)	not null,	                      /*退样库结算金额*/

   constraint PK_TB_BATBE primary key (BATBE_ID)
);
--create unique index AK_TB_BATBE on TB_BATBE (BATBE_ID);
create sequence SEQ_TB_BATBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATBE to public;
grant index  on TB_BATBE to public;
grant update on TB_BATBE to public; 
grant delete on TB_BATBE to public;  
grant insert on TB_BATBE to public; 
grant select on SEQ_TB_BATBE to public;                         