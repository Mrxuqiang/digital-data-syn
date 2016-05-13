/* 
================================================================================
表结构代码:TB_BATBA
表结构名称:套件批次表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATBA;                       
drop index AK_TB_BATBA;                       
drop table TB_BATBA;                       
create table TB_BATBA  (                   
			BATBA_ID	NUMBER not null,															/*主键*/
			BATBA001	VARCHAR2(32)	not null,												/*原始批次ID（新增批次为自己，转入产生的批次为转出方批次ID，格式为“库名-批次ID”，例如“CY-1”）*/
			BATBA002	VARCHAR2(32)	not null,												/*子件主批号*/
			BATBA003	VARCHAR2(4)	not null,													/*子件辅批号*/
			BATBA004	NUMBER not null,															/*仓库ID*/
			BATBA005	NUMBER not null,															/*仓位ID*/
			BATBA006	NUMBER not null,															/*供应商ID*/
			BATBA007	NUMBER not null,															/*结算方式*/
			BATBA008	NUMBER not null,															/*商品服务属性（1、套件 2、组装件 3、补件）*/
			BATBA009	NUMBER not null,															/*销售属性（1、正常商品 2、定制商品 3、赠品 4、样品 5、处理品）*/
			BATBA010	NUMBER not null,															/*税种ID*/
			BATBA011	NUMBER(18,3)	not null,												/*税率*/
			BATBA012	NUMBER not null,															/*原始供应商ID*/
			BATBA013	NUMBER not null,															/*出货优先级*/
			BATBA014	NUMBER not null,															/*单据类型（101-采购入库单[puri005]、102-配送到货单[dtbi002]、103-配退到货单[dtbi004]、104-销售退货单[sali052]、105-赠品退回单[invi032]、106-调拨收货单[invi006]、107-出样入库单[dtbi014]、108-退样入库单[dtbi015]、152-组装单[invi023]、171-损溢单--溢出[invi025]）*/
			BATBA015	NUMBER not null,															/*单据ID*/
			BATBA016	NUMBER not null,															/*单据明细ID（对应子件商品的单据明细ID）*/
			BATBA017	NUMBER not null,															/*子件商品ID*/
			BATBA018	NUMBER,																  			/*子件维度1ID*/
			BATBA019	NUMBER,																  			/*子件维度2ID*/
			BATBA020	NUMBER,																  			/*子件维度3ID*/
			BATBA021	NUMBER,																  			/*子件维度4ID*/
			BATBA022	NUMBER,																  			/*子件维度5ID*/
			BATBA023	VARCHAR2(64),													  			/*子件产商批号*/
			BATBA024	NUMBER(18,3)	not null,												/*子件批次数量（新增批次的数量，批次扣减时保持不变）*/
			BATBA025	NUMBER(18,3)	not null,												/*子件销售数量*/
			BATBA026	NUMBER(18,3)	not null,												/*子件退厂数量*/
			BATBA027	NUMBER(18,3)	not null,												/*子件配送出库数量*/
			BATBA028	NUMBER(18,3)	not null,												/*子件退配出库数量*/
			BATBA029	NUMBER(18,3)	not null,												/*子件调拨出库数量*/
			BATBA030	NUMBER(18,3)	not null,												/*子件移仓出库数量*/
			BATBA031	NUMBER(18,3)	not null,												/*子件组装出库数量*/
			BATBA032	NUMBER(18,3)	not null,												/*子件领用出库数量*/
			BATBA033	NUMBER(18,3)	not null,												/*子件拆分出库数量*/
			BATBA034	NUMBER(18,3)	not null,												/*子件样品变更出库数量*/
			BATBA035	NUMBER(18,3)	not null,												/*子件损耗数量*/
			BATBA036	NUMBER(18,3)	not null,												/*子件库存转出数量*/
			BATBA037	NUMBER(18,3)	not null,												/*子件已售转出数量*/
			BATBA038	NUMBER(18,3)	not null,												/*子件剩余数量*/
			BATBA039	NUMBER(18,3)	not null,												/*子件锁定数量*/
			BATBA040	NUMBER(18,3)	not null,												/*子件已结数量*/
			BATBA041	NUMBER(18,3)	not null,												/*子件批次进价*/
			BATBA042	NUMBER(18,3)	not null,												/*子件进价金额*/
			BATBA043	NUMBER(18,3)	not null,												/*子件批次余额*/
			BATBA044	DATE	not null,													/*子件批次日期*/
			BATBA045	DATE,															/*子件生产日期*/
			BATBA046	DATE,															/*子件保质日期*/
			BATBA047	NUMBER(18,3)	not null,												/*子件未税进价*/
			BATBA048	NUMBER(18,3)	not null,												/*子件未税金额*/
			BATBA049	NUMBER(18,3)	not null,												/*子件未税余额*/
			BATBA050	NUMBER,															/*子件对应套件的系数（成份数量）*/
			BATBA051	NUMBER not null,													/*批次套件分组标识（全数据库唯一，使用全局序列生成）*/
			BATBA052	NUMBER not null,													/*套件商品ID*/
			BATBA053	NUMBER,															/*套件维度1ID*/
			BATBA054	NUMBER,															/*套件维度2ID*/
			BATBA055	NUMBER,															/*套件维度3ID*/
			BATBA056	NUMBER,															/*套件维度4ID*/
			BATBA057	NUMBER,															/*套件维度5ID*/
			BATBA058	VARCHAR2(64),														/*套件产商批号*/
			BATBA059	NUMBER(18,3)	not null,												/*套件批次数量（新增批次的数量，批次扣减时保持不变）*/
			BATBA060	NUMBER(18,3)	not null,												/*套件销售数量*/
			BATBA061	NUMBER(18,3)	not null,												/*套件退厂数量*/
			BATBA062	NUMBER(18,3)	not null,												/*套件配送出库数量*/
			BATBA063	NUMBER(18,3)	not null,												/*套件退配出库数量*/
			BATBA064	NUMBER(18,3)	not null,												/*套件调拨出库数量*/
			BATBA065	NUMBER(18,3)	not null,												/*套件移仓出库数量*/
			BATBA066	NUMBER(18,3)	not null,												/*套件组装出库数量*/
			BATBA067	NUMBER(18,3)	not null,												/*套件领用出库数量*/
			BATBA068	NUMBER(18,3)	not null,												/*套件拆分出库数量*/
			BATBA069	NUMBER(18,3)	not null,												/*套件样品变更出库数量*/
			BATBA070	NUMBER(18,3)	not null,												/*套件损耗数量*/
			BATBA071	NUMBER(18,3)	not null,												/*套件库存转出数量*/
			BATBA072	NUMBER(18,3)	not null,												/*套件已售转出数量*/
			BATBA073	NUMBER(18,3)	not null,												/*套件剩余数量*/
			BATBA074	NUMBER(18,3)	not null,												/*套件锁定数量*/
			BATBA075	NUMBER(18,3)	not null,												/*套件已结数量*/
			BATBA076	NUMBER(18,3)	not null,												/*套件批次进价*/
			BATBA077	NUMBER(18,3)	not null,												/*套件进价金额*/
			BATBA078	NUMBER(18,3)	not null,												/*套件批次余额*/
			BATBA079	DATE	not null,													/*套件批次日期*/
			BATBA080	DATE,															/*套件生产日期*/
			BATBA081	DATE,															/*套件保质日期*/
			BATBA082	NUMBER(18,3)	not null,												/*套件未税进价*/
			BATBA083	NUMBER(18,3)	not null,												/*套件未税金额*/
			BATBA084	NUMBER(18,3)	not null,												/*套件未税余额*/
			BATBA085	NUMBER,															/*套件对应套件1的系数（成份数量）*/
			BATBA086	NUMBER not null,													/*批次套件1分组标识（全数据库唯一，使用全局序列生成）*/
			BATBA087	NUMBER not null,													/*套件1商品ID*/
			BATBA088	NUMBER,															/*套件1维度1ID*/
			BATBA089	NUMBER,															/*套件1维度2ID*/
			BATBA090	NUMBER,															/*套件1维度3ID*/
			BATBA091	NUMBER,															/*套件1维度4ID*/
			BATBA092	NUMBER,															/*套件1维度5ID*/
			BATBA093	VARCHAR2(64),													  	/*套件1产商批号*/
			BATBA094	NUMBER(18,3)	not null,												/*套件1批次数量（新增批次的数量，批次扣减时保持不变）*/
			BATBA095	NUMBER(18,3)	not null,												/*套件1销售数量*/
			BATBA096	NUMBER(18,3)	not null,												/*套件1退厂数量*/
			BATBA097	NUMBER(18,3)	not null,												/*套件1配送出库数量*/
			BATBA098	NUMBER(18,3)	not null,												/*套件1退配出库数量*/
			BATBA099	NUMBER(18,3)	not null,												/*套件1调拨出库数量*/
			BATBA100	NUMBER(18,3)	not null,												/*套件1移仓出库数量*/
			BATBA101	NUMBER(18,3)	not null,												/*套件1组装出库数量*/
			BATBA102	NUMBER(18,3)	not null,												/*套件1领用出库数量*/
			BATBA103	NUMBER(18,3)	not null,												/*套件1拆分出库数量*/
			BATBA104	NUMBER(18,3)	not null,												/*套件1样品变更出库数量*/
			BATBA105	NUMBER(18,3)	not null,												/*套件1损耗数量*/
			BATBA106	NUMBER(18,3)	not null,												/*套件1库存转出数量*/
			BATBA107	NUMBER(18,3)	not null,												/*套件1已售转出数量*/
			BATBA108	NUMBER(18,3)	not null,												/*套件1剩余数量*/
			BATBA109	NUMBER(18,3)	not null,												/*套件1锁定数量*/
			BATBA110	NUMBER(18,3)	not null,												/*套件1已结数量*/
			BATBA111	NUMBER(18,3)	not null,												/*套件1批次进价*/
			BATBA112	NUMBER(18,3)	not null,												/*套件1进价金额*/
			BATBA113	NUMBER(18,3)	not null,												/*套件1批次余额*/
			BATBA114	DATE	not null,																/*套件1批次日期*/
			BATBA115	DATE,																					/*套件1生产日期*/
			BATBA116	DATE,																					/*套件1保质日期*/
			BATBA117	NUMBER(18,3)	not null,												/*套件1未税进价*/
			BATBA118	NUMBER(18,3)	not null,												/*套件1未税金额*/
			BATBA119	NUMBER(18,3)	not null,												/*套件1未税余额*/
			BATBA120	NUMBER,																				/*套件1对应套件2的系数（成份数量）*/
			BATBA121	NUMBER not null,															/*批次套件2分组标识（全数据库唯一，使用全局序列生成）*/
			BATBA122	NUMBER not null,															/*套件2商品ID*/
			BATBA123	NUMBER,																				/*套件2维度1ID*/
			BATBA124	NUMBER,																				/*套件2维度2ID*/
			BATBA125	NUMBER,																				/*套件2维度3ID*/
			BATBA126	NUMBER,																				/*套件2维度4ID*/
			BATBA127	NUMBER,																				/*套件2维度5ID*/
			BATBA128	VARCHAR2(64),													  			/*套件2产商批号*/
			BATBA129	NUMBER(18,3)	not null,												/*套件2批次数量（新增批次的数量，批次扣减时保持不变）*/
			BATBA130	NUMBER(18,3)	not null,												/*套件2销售数量*/
			BATBA131	NUMBER(18,3)	not null,												/*套件2退厂数量*/
			BATBA132	NUMBER(18,3)	not null,												/*套件2配送出库数量*/
			BATBA133	NUMBER(18,3)	not null,												/*套件2退配出库数量*/
			BATBA134	NUMBER(18,3)	not null,												/*套件2调拨出库数量*/
			BATBA135	NUMBER(18,3)	not null,												/*套件2移仓出库数量*/
			BATBA136	NUMBER(18,3)	not null,												/*套件2组装出库数量*/
			BATBA137	NUMBER(18,3)	not null,												/*套件2领用出库数量*/
			BATBA138	NUMBER(18,3)	not null,												/*套件2拆分出库数量*/
			BATBA139	NUMBER(18,3)	not null,												/*套件2样品变更出库数量*/
			BATBA140	NUMBER(18,3)	not null,												/*套件2损耗数量*/
			BATBA141	NUMBER(18,3)	not null,												/*套件2库存转出数量*/
			BATBA142	NUMBER(18,3)	not null,												/*套件2已售转出数量*/
			BATBA143	NUMBER(18,3)	not null,												/*套件2剩余数量*/
			BATBA144	NUMBER(18,3)	not null,												/*套件2锁定数量*/
			BATBA145	NUMBER(18,3)	not null,												/*套件2已结数量*/
			BATBA146	NUMBER(18,3)	not null,												/*套件2批次进价*/
			BATBA147	NUMBER(18,3)	not null,												/*套件2进价金额*/
			BATBA148	NUMBER(18,3)	not null,												/*套件2批次余额*/
			BATBA149	DATE	not null,																/*套件2批次日期*/
			BATBA150	DATE,																					/*套件2生产日期*/
			BATBA151	DATE,																					/*套件2保质日期*/
			BATBA152	NUMBER(18,3)	not null,												/*套件2未税进价*/
			BATBA153	NUMBER(18,3)	not null,												/*套件2未税金额*/
			BATBA154	NUMBER(18,3)	not null,												/*套件2未税余额*/
			BATBA155	VARCHAR2(255)	not null,												/*备注*/
			CREATE_USER	VARCHAR2(12),												  			/*建立人员*/
			USER_GROUP	VARCHAR2(12),												  			/*建立人员部门*/
			CREATE_DATE	DATE,																  			/*建立日期*/
			MODIFIER	VARCHAR2(12),													  			/*修改人员*/
			MODI_DATE	DATE,																	  			/*修改日期*/
			FLAG	NUMBER,																						/*资料状态*/

   constraint PK_TB_BATBA primary key (BATBA_ID)
);
create sequence SEQ_TB_BATBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATBA to public;
grant index  on TB_BATBA to public;
grant update on TB_BATBA to public; 
grant delete on TB_BATBA to public;  
grant insert on TB_BATBA to public; 
grant select on SEQ_TB_BATBA to public;                         