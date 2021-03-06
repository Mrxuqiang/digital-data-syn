/* 
================================================================================
表结构代码:TB_BATBF
表结构名称:库存汇总表-套件
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATBF;                       
drop index AK_TB_BATBF;                       
drop table TB_BATBF;                       
create table TB_BATBF  (                       
			BATBF_ID	NUMBER	not null,				                      /*主键*/
			BATBF001	DATE	not null,					                      /*日期（精确到天）*/
			BATBF002	NUMBER	not null,				                      /*仓库ID*/
			BATBF003	NUMBER	not null,				                      /*仓位ID*/
			BATBF004	NUMBER	not null,				                      /*商品ID*/
			BATBF005	NUMBER,								                        /*维度1ID*/
			BATBF006	NUMBER,								                        /*维度2ID*/
			BATBF007	NUMBER,								                        /*维度3ID*/
			BATBF008	NUMBER,								                        /*维度4ID*/
			BATBF009	NUMBER,								                        /*维度5ID*/
			BATBF010	NUMBER	not null,				                      /*商品服务属性（1、套件 2、组装件 3、补件）*/
			BATBF011	NUMBER	not null,				                      /*销售属性（1、正常商品 2、定制商品 3、赠品 4、样品 5、处理品）*/
			BATBF012	NUMBER(18,3)	not null,	                      /*当前库存数量（截止到当前时间）*/
			BATBF013	NUMBER(18,3)	not null,	                      /*当前库存金额（截止到当前时间）*/
			BATBF014	NUMBER(18,3)	not null,	                      /*采购入库数量*/
			BATBF015	NUMBER(18,3)	not null,	                      /*采购入库金额*/
			BATBF016	NUMBER(18,3)	not null,	                      /*配送到货入库数量*/
			BATBF017	NUMBER(18,3)	not null,	                      /*配送到货入库金额*/
			BATBF018	NUMBER(18,3)	not null,	                      /*配退到货入库数量*/
			BATBF019	NUMBER(18,3)	not null,	                      /*配退到货入库金额*/
			BATBF020	NUMBER(18,3)	not null,	                      /*销售退货入库数量*/
			BATBF021	NUMBER(18,3)	not null,	                      /*销售退货入库金额*/
			BATBF022	NUMBER(18,3)	not null,	                      /*赠品退回入库数量*/
			BATBF023	NUMBER(18,3)	not null,	                      /*赠品退回入库金额*/
			BATBF024	NUMBER(18,3)	not null,	                      /*调拨收货入库数量*/
			BATBF025	NUMBER(18,3)	not null,	                      /*调拨收货入库金额*/
			BATBF026	NUMBER(18,3)	not null,	                      /*出样入库数量*/
			BATBF027	NUMBER(18,3)	not null,	                      /*出样入库金额*/
			BATBF028	NUMBER(18,3)	not null,	                      /*退样入库数量*/
			BATBF029	NUMBER(18,3)	not null,	                      /*退样入库金额*/
			BATBF030	NUMBER(18,3)	not null,	                      /*组装入库数量*/
			BATBF031	NUMBER(18,3)	not null,	                      /*组装入库金额*/
			BATBF032	NUMBER(18,3)	not null,	                      /*损益入库数量*/
			BATBF033	NUMBER(18,3)	not null,	                      /*损益入库金额*/
			BATBF034	NUMBER(18,3)	not null,	                      /*移仓入库数量*/
			BATBF035	NUMBER(18,3)	not null,	                      /*移仓入库金额*/
			BATBF036	NUMBER(18,3)	not null,	                      /*拆分入库数量*/
			BATBF037	NUMBER(18,3)	not null,	                      /*拆分入库金额*/
			BATBF038	NUMBER(18,3)	not null,	                      /*移仓出库数量*/
			BATBF039	NUMBER(18,3)	not null,	                      /*移仓出库成本金额*/
			BATBF040	NUMBER(18,3)	not null,	                      /*移仓出库结算金额*/
			BATBF041	NUMBER(18,3)	not null,	                      /*组装出库数量*/
			BATBF042	NUMBER(18,3)	not null,	                      /*组装出库成本金额*/
			BATBF043	NUMBER(18,3)	not null,	                      /*组装出库结算金额*/
			BATBF044	NUMBER(18,3)	not null,	                      /*拆分出库数量*/
			BATBF045	NUMBER(18,3)	not null,	                      /*拆分出库成本金额*/
			BATBF046	NUMBER(18,3)	not null,	                      /*拆分出库结算金额*/
			BATBF047	NUMBER(18,3)	not null,	                      /*损益出库数量*/
			BATBF048	NUMBER(18,3)	not null,	                      /*损益出库成本金额*/
			BATBF049	NUMBER(18,3)	not null,	                      /*损益出库结算金额*/
			BATBF050	NUMBER(18,3)	not null,	                      /*采购退货出库数量*/
			BATBF051	NUMBER(18,3)	not null,	                      /*采购退货出库成本金额*/
			BATBF052	NUMBER(18,3)	not null,	                      /*采购退货出库结算金额*/
			BATBF053	NUMBER(18,3)	not null,	                      /*配送发货在途数量*/
			BATBF054	NUMBER(18,3)	not null,	                      /*配送发货在途金额*/
			BATBF055	NUMBER(18,3)	not null,	                      /*配送发货出库结算金额*/
			BATBF056	NUMBER(18,3)	not null,	                      /*配送发货出库数量*/
			BATBF057	NUMBER(18,3)	not null,	                      /*配送发货出库成本金额*/
			BATBF058	NUMBER(18,3)	not null,	                      /*配退发货出库数量*/
			BATBF059	NUMBER(18,3)	not null,	                      /*配退发货出库成本金额*/
			BATBF060	NUMBER(18,3)	not null,	                      /*配退发货出库结算金额*/
			BATBF061	NUMBER(18,3)	not null,	                      /*配退发货在途数量*/
			BATBF062	NUMBER(18,3)	not null,	                      /*配退发货在途金额*/
			BATBF063	NUMBER(18,3)	not null,	                      /*销售出库数量*/
			BATBF064	NUMBER(18,3)	not null,	                      /*销售出库成本金额*/
			BATBF065	NUMBER(18,3)	not null,	                      /*销售出库结算金额*/
			BATBF066	NUMBER(18,3)	not null,	                      /*销售在途数量*/
			BATBF067	NUMBER(18,3)	not null,	                      /*销售在途金额*/
			BATBF068	NUMBER(18,3)	not null,	                      /*赠品出库数量*/
			BATBF069	NUMBER(18,3)	not null,	                      /*赠品出库成本金额*/
			BATBF070	NUMBER(18,3)	not null,	                      /*赠品在途数量*/
			BATBF071	NUMBER(18,3)	not null,	                      /*赠品在途金额*/
			BATBF072	NUMBER(18,3)	not null,	                      /*赠品出库结算金额*/
			BATBF073	NUMBER(18,3)	not null,	                      /*调拨发货出库数量*/
			BATBF074	NUMBER(18,3)	not null,	                      /*调拨发货出库成本金额*/
			BATBF075	NUMBER(18,3)	not null,	                      /*调拨发货在途数量*/
			BATBF076	NUMBER(18,3)	not null,	                      /*调拨发货在途金额*/
			BATBF077	NUMBER(18,3)	not null,	                      /*调拨发货出库结算金额*/
			BATBF078	NUMBER(18,3)	not null,	                      /*出样出库数量*/
			BATBF079	NUMBER(18,3)	not null,	                      /*出样出库成本金额*/
			BATBF080	NUMBER(18,3)	not null,	                      /*出样在途数量*/
			BATBF081	NUMBER(18,3)	not null,	                      /*出样在途金额*/
			BATBF082	NUMBER(18,3)	not null,	                      /*出样出库结算金额*/
			BATBF083	NUMBER(18,3)	not null,	                      /*退样出库数量*/
			BATBF084	NUMBER(18,3)	not null,	                      /*退样出库成本金额*/
			BATBF085	NUMBER(18,3)	not null,	                      /*退样在途数量*/
			BATBF086	NUMBER(18,3)	not null,	                      /*退样在途金额*/
			BATBF087	NUMBER(18,3)	not null,	                      /*退样库结算金额*/
   constraint PK_TB_BATBF primary key (BATBF_ID)
);
--create unique index AK_TB_BATBF on TB_BATBF (BATBF_ID);
create sequence SEQ_TB_BATBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATBF to public;
grant index  on TB_BATBF to public;
grant update on TB_BATBF to public; 
grant delete on TB_BATBF to public;  
grant insert on TB_BATBF to public; 
grant select on SEQ_TB_BATBF to public;