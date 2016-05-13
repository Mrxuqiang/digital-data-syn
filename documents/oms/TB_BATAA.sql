/* 
================================================================================
表结构代码:TB_BATAA
表结构名称:套件批次表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAA;                       
drop index AK_TB_BATAA;                       
drop table TB_BATAA;                       
create table TB_BATAA  (                       
   BATAA_ID	            integer	not null	    ,                     /* 套件批次ID       */
   BATAA001	            integer	not null	    ,                     /* 原始批ID         */
   BATAA002	            varchar2(32)	not null,                     /* 套件主批号       */
   BATAA003	            varchar2(4)	not null  ,                     /* 套件辅批号       */
   BATAA004	            integer	not null	    ,                     /* 仓库ID           */
   BATAA005	            integer	not null	    ,                     /* 仓位ID           */
   BATAA006	            integer	not null	    ,                     /* 供应商ID         */
   BATAA007	            integer	not null	    ,                     /* 结算方式         */
   BATAA008	            integer	not null	    ,                     /* 单据类型         */
   BATAA009	            integer	not null	    ,                     /* 单据ID           */
   BATAA010	            integer	not null	    ,                     /* 单据明细ID       */
   BATAA011	            integer	not null	    ,                     /* 商品ID           */
   BATAA012	            integer		            ,                     /* 维度1ID          */
   BATAA013	            integer		            ,                     /* 维度2ID          */
   BATAA014	            integer		            ,                     /* 维度3ID          */
   BATAA015	            integer		            ,                     /* 维度4ID          */
   BATAA016	            integer		            ,                     /* 维度5ID          */
   BATAA017	            varchar2(64)		      ,                     /* 厂商批号         */
   BATAA018	            number(18,3)	not null,                     /* 批次数量         */
   BATAA019	            number(18,3)	not null,                     /* 销售数量         */
   BATAA020	            number(18,3)	not null,                     /* 退厂数量         */
   BATAA021	            number(18,3)	not null,                     /* 配送出库数量     */
   BATAA022	            number(18,3)	not null,                     /* 退配出库数量     */
   BATAA023	            number(18,3)	not null,                     /* 调拨出库数量     */
   BATAA024	            number(18,3)	not null,                     /* 移仓出库数量     */
   BATAA025	            number(18,3)	not null,                     /* 组装出库数量     */
   BATAA026	            number(18,3)	not null,                     /* 领用出库数量     */
   BATAA027	            number(18,3)	not null,                     /* 拆分出库数量     */
   BATAA028	            number(18,3)	not null,                     /* 损耗数量         */
   BATAA029	            number(18,3)	not null,                     /* 库存转出数量     */
   BATAA030	            number(18,3)	not null,                     /* 已售转出数量     */
   BATAA031	            number(18,3)	not null,                     /* 剩余数量         */
   BATAA032	            number(18,3)	not null,                     /* 锁定数量         */
   BATAA033	            number(18,3)	not null,                     /* 已结数量         */
   BATAA034	            number(12,2)	not null,                     /* 批次进价         */
   BATAA035	            number(12,2)	not null,                     /* 进价金额         */
   BATAA036	            number(12,2)	not null,                     /* 批次余额         */
   BATAA037	            date		not null,	                          /* 批次日期         */
   BATAA038	            date  ,		                                  /* 生产日期         */
   BATAA039	            date  ,		                                  /* 保质日期         */
   BATAA040	            integer		not null,	                        /* 商品服务属性     */
   BATAA041	            integer		not null,	                        /* 税种ID           */
   BATAA042	            number(18,3)	not null,	                    /* 税率             */
   BATAA043	            number(12,2)	not null,	                    /* 未税进价         */
   BATAA044	            number(12,2)	not null,	                    /* 未税金额         */
   BATAA045	            number(12,2)	not null,	                    /* 未税余额         */
   BATAA046	            integer	not null,	                          /* 原始供应商ID     */
   BATAA047	            integer	not null,	                          /* 出货优先级       */            
   BATAA048             number(18,3)	not null			                /* 样品变更单出库数量*/
   BATAA049	            VARCHAR2(1)	not null,	                      /* 销售属性         */
   BATAA050	            VARCHAR2(255)	not null,	                    /* 备注             */
   BATAA051	            VARCHAR2(1)	        not null,	              /* 商品状1.异常商品2.缺包3.正常     */--20110305 add by xiechun
   BATAA052             number(18,3)	not null,                     /* 其他出库数量     */
   BATAA053             VARCHAR2(40),                               /* 货号             */  --20110721 add by xiechun
   BATAA054	            VARCHAR2(255)	 ,	                    	    /* 备注1            */--2011021 add by xiechun
   BATAA055	            VARCHAR2(255)	 ,	                    		  /* 备注2            */--2011021 add by xiechun
   BATAA056	            VARCHAR2(255)	 ,	                    		  /* 备注3            */--2011021 add by xiechun
   CREATE_USER          VARCHAR2(12),                               /* 建立人员         */
   USER_GROUP           VARCHAR2(12),                               /* 建立人员部门     */                               
   CREATE_DATE          DATE,                                       /* 建立日期         */
   MODIFIER             VARCHAR2(12),                               /* 修改人员         */
   MODI_DATE            DATE,                                       /* 修改日期         */
   FLAG                 NUMBER(1),                                  /* 资料状态         */
   constraint PK_TB_BATAA primary key (BATAA_ID)
);
/*创建一个全局序列，用于子套件关系的唯一标识*/
/*
创建序列
create sequence SEQ_TB_BATAA_BCS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
创建同义词
CREATE OR REPLACE SYNONYM CY1.SEQ_TB_BATAA_BCS  FOR CY.SEQ_TB_BATAA_BCS;
grant select on SEQ_TB_BATAA_BCS to public; 
*/

/*
创建序列
create sequence SEQ_TB_BATAA_BCT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
创建同义词
CREATE OR REPLACE SYNONYM CY1.SEQ_TB_BATAA_BCT  FOR CY.SEQ_TB_BATAA_BCT;
grant select on SEQ_TB_BATAA_BCT to public; 
*/
--create unique index AK_TB_BATAA on TB_BATAA (BATAA_ID);
create sequence SEQ_TB_BATAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAA to public;
grant index  on TB_BATAA to public;
grant update on TB_BATAA to public; 
grant delete on TB_BATAA to public;  
grant insert on TB_BATAA to public; 
grant select on SEQ_TB_BATAA to public;                         