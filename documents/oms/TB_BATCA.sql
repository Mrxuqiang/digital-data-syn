/*
================================================================================
表结构代码:TB_BATCA
表结构名称:批次表/2011-10-09
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATCA;
drop table TB_BATCA;
create table TB_BATCA  (
   BATCA_ID	            integer	not null,                           /*批次ID       */
   BATCA001	            varchar2(32)	not null,                     /*原始批ID,如“cy-1”   */
   BATCA002	            integer not null,                           /*子件主批号       */
   BATCA003	            integer	not null	,                         /*子件辅批号       */
   BATCA004	            integer	not null,                           /*仓库ID           */
   BATCA005	            integer	not null,                           /*仓位ID           */
   BATCA006	            integer	not null,                           /*供应商ID         */
   BATCA007	            integer	not null,                           /*结算方式         */
   BATCA008	            integer	not null,                           /*商品服务属性（1、套件 2、组装件 3、补件）     */
   BATCA009	            VARCHAR2(1)  not null,                      /*销售属性（1、正常商品 2、定制商品 3、赠品 4、样品 5、处理品）         */
   BATCA010	            integer	not null,                           /*税种ID           */
   BATCA011	            number(18,3)	not null,                   	/*税率             */
   BATCA012	            integer	not null,                           /*原始供应商ID     */
   BATCA013	            integer	not null,                           /*出货优先级       */
   BATCA014	            integer	not null,                           /*单据类型（101-采购入库单[puri005]、102-配送到货单[dtbi002]、103-配退到货单[dtbi004]、104-销售退货单[sali052]、105-赠品退回单[invi032]、106-调拨收货单[invi006]、107-出样入库单[dtbi014]、108-退样入库单[dtbi015]、152-组装单[invi023]、171-损溢单--溢出[invi025]）         */
   BATCA015	            integer	not null,                           /*单据ID           */
   BATCA016	            integer	not null,                           /*单据明细ID（对应子件商品的单据明细ID）       */
   BATCA017	            integer,                                    /*套件商品ID       */
   BATCA018	            integer,                                    /*单据套件明细ID   */
   BATCA019	            integer	not null,                           /*来源单别         */
   BATCA020	            varchar2(64) not null,	                    /*来源单号         */
   BATCA021	            integer	not null,                           /*子件商品ID       */
   BATCA022	            integer,  		                              /*子件维度1ID      */
   BATCA023	            integer,  		                              /*子件维度2ID      */
   BATCA024	            integer,  		                              /*子件维度3ID      */
   BATCA025	            integer,  		                              /*子件维度4ID      */
   BATCA026	            integer,  		                              /*子件维度5ID      */
   BATCA027	            varchar2(64),		                            /*子件厂商批号     */
   BATCA028	            number(18,3)	not null,	                    /*子件批次数量         */
   BATCA029	            number(18,3)	not null,	                    /*子件销售数量         */
   BATCA030	            number(18,3)	not null,	                    /*子件退厂数量         */
   BATCA031	            number(18,3)	not null,	                    /*子件配送出库数量     */
   BATCA032	            number(18,3)	not null,	                    /*子件退配出库数量     */
   BATCA033	            number(18,3)	not null,	                    /*子件调拨出库数量     */
   BATCA034	            number(18,3)	not null,	                    /*子件移仓出库数量     */
   BATCA035	            number(18,3)	not null,	                    /*子件组装出库数量     */
   BATCA036	            number(18,3)	not null,	                    /*子件领用出库数量     */
   BATCA037	            number(18,3)	not null,	                    /*子件拆分出库数量     */
   BATCA038	            number(18,3)	not null,	                    /*子件样品变更出库数量     */
   BATCA039	            number(18,3)	not null,	                    /*子件损耗数量         */
   BATCA040	            number(18,3)	not null,	                    /*子件库存转出数量     */
   BATCA041	            number(18,3)	not null,	                    /*子件已售转出数量     */
   BATCA042	            number(18,3)	not null,	                    /*子件剩余数量         */
   BATCA043	            number(18,3)	not null,	                    /*子件锁定数量         */
   BATCA044	            number(18,3)	not null,	                    /*子件已结数量         */
   BATCA045	            number(12,2)	not null,	                    /*子件批次进价         */
   BATCA046	            number(12,2)	not null,	                    /*子件进价金额         */
   BATCA047	            number(12,2)	not null,	                    /*子件批次余额         */
   BATCA048	            date	not null,	                            /*子件批次日期         */
   BATCA049	            date,		                                    /*子件生产日期         */
   BATCA050	            date,		                                    /*子件保质日期         */
   BATCA051	            number(12,2)	not null,                   	/*子件未税进价         */
   BATCA052	            number(12,2)	not null,                   	/*子件未税金额         */
   BATCA053	            number(12,2)	not null,                   	/*子件未税余额         */
   BATCA054	            number(18,3)	not null,	                    /*委外出库数量     */
   BATCA055	            number(18,3)	not null,	                    /*在途数量         */
   BATCA056	            VARCHAR2(30)	not null,                     /*套件分组标识     */
   BATCA057	            VARCHAR2(255)	not null,	                    /*备注             */
   BATCA058	            VARCHAR2(255)	not null,	                    /*备注1            */
   BATCA059	            VARCHAR2(255)	not null,	                    /*备注2            */
   BATCA060	            VARCHAR2(255)	not null,	                    /*备注3            */
   BATCA061	            VARCHAR2(40)         ,	                    /*货号             */
   BATCA062	            integer,  		                              /*套件维度1ID      */
   BATCA063	            integer,  		                              /*套件维度2ID      */
   BATCA064	            integer,  		                              /*套件维度3ID      */
   BATCA065	            integer,  		                              /*套件维度4ID      */
   BATCA066	            integer,  		                              /*套件维度5ID      */
   BATCA067	            number(18,3)	not null,	                    /*其他出库数量     */
   BATCA068	            integer,  		                              /*货主     */
   CREATE_USER          VARCHAR2(12),                               /*建立人员         */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门     */
   CREATE_DATE          DATE,                                       /*建立日期         */
   MODIFIER             VARCHAR2(12),                               /*修改人员         */
   MODI_DATE            DATE,                                       /*修改日期         */
   FLAG                 NUMBER(1),                                  /*资料状态         */

   constraint PK_TB_BATCA primary key (BATCA_ID)
);
create sequence SEQ_TB_BATCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATCA to public;
grant index  on TB_BATCA to public;
grant update on TB_BATCA to public;
grant delete on TB_BATCA to public;
grant insert on TB_BATCA to public;
grant select on SEQ_TB_BATCA to public;

/*
批次表中用于辅助的序列，例如主批号、辅批号等
*/
drop sequence SEQ_TB_BATCA_A;
create sequence SEQ_TB_BATCA_A minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
