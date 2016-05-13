/* 
================================================================================
表结构代码:TB_BATAG
表结构名称:子件批次表
表结构目的:
================================================================================
     */

drop sequence SEQ_TB_BATAG;                       
drop index AK_TB_BATAG;                       
drop table TB_BATAG;                       
create table TB_BATAG  (                       
   BATAG_ID	            integer	not null,                           /* 子件批次ID            */
   BATAG001	            varchar2(32)	not null,                     /* 原始批ID,如“cy-1”   */
   BATAG002	            varchar2(32) not null,                      /* 子件主批号            */
   BATAG003	            varchar2(4)	not null	,                     /* 子件辅批号            */
   BATAG004	            integer	not null,                           /* 仓库ID                */
   BATAG005	            integer	not null,                           /* 仓位ID                */
   BATAG006	            integer	not null,                           /* 供应商ID              */
   BATAG007	            integer	not null,                           /* 结算方式              */
   BATAG008	            integer	not null,                           /* 单据类型              */
   BATAG009	            integer	not null,                           /* 单据ID                */
   BATAG010	            integer	not null,                           /* 单据明细ID            */
   BATAG011	            integer	not null,                           /* 商品ID                */
   BATAG012	            integer,  		                              /* 维度1ID               */
   BATAG013	            integer,  		                              /* 维度2ID               */
   BATAG014	            integer,  		                              /* 维度3ID               */
   BATAG015	            integer,  		                              /* 维度4ID               */
   BATAG016	            integer,  		                              /* 维度5ID               */
   BATAG017	            varchar2(64),		                            /* 厂商批号              */
   BATAG018	            number(18,3)	not null,	                    /* 批次数量              */
   BATAG019	            number(18,3)	not null,	                    /* 销售数量              */
   BATAG020	            number(18,3)	not null,	                    /* 退厂数量              */
   BATAG021	            number(18,3)	not null,	                    /* 配送出库数量          */
   BATAG022	            number(18,3)	not null,	                    /* 退配出库数量          */
   BATAG023	            number(18,3)	not null,	                    /* 调拨出库数量          */
   BATAG024	            number(18,3)	not null,	                    /* 移仓出库数量          */
   BATAG025	            number(18,3)	not null,	                    /* 组装出库数量          */
   BATAG026	            number(18,3)	not null,	                    /* 领用出库数量          */
   BATAG027	            number(18,3)	not null,	                    /* 拆分出库数量          */
   BATAG028	            number(18,3)	not null,	                    /* 损耗数量              */
   BATAG029	            number(18,3)	not null,	                    /* 库存转出数量          */
   BATAG030	            number(18,3)	not null,	                    /* 已售转出数量          */
   BATAG031	            number(18,3)	not null,	                    /* 剩余数量              */
   BATAG032	            number(18,3)	not null,	                    /* 锁定数量              */
   BATAG033	            number(18,3)	not null,	                    /* 已结数量              */
   BATAG034	            number(12,2)	not null,	                    /* 批次进价              */
   BATAG035	            number(12,2)	not null,	                    /* 进价金额              */
   BATAG036	            number(12,2)	not null,	                    /* 批次余额              */
   BATAG037	            date	not null,	                            /* 批次日期              */
   BATAG038	            date,		                                    /* 生产日期              */
   BATAG039	            date,		                                    /* 保质日期              */
   BATAG040	            integer	not null,                           /* 商品服务属性          */
   BATAG041	            integer	not null,                           /* 税种ID                */
   BATAG042	            number(18,3)	not null,                   	/* 税率                  */
   BATAG043	            number(12,2)	not null,                   	/* 未税进价              */
   BATAG044	            number(12,2)	not null,                   	/* 未税金额              */
   BATAG045	            number(12,2)	not null,                   	/* 未税余额              */
   BATAG046	            integer	not null,                           /* 原始供应商ID          */                           
   BATAG047	            integer	not null,                           /* 出货优先级            */                           
   BATAG048	            integer	not null,                           /* 套件批次ID            */   
   BATAG049             number(18,3)	not null	                    /* 样品变更单出库数量    */
   BATAG050	            VARCHAR2(1)  not null,                      /* 销售属性              */
   BATAG051	            VARCHAR2(255)	not null,	                    /* 备注                  */
   BATAG052	            VARCHAR2(1)	        not null,	              /* 商品状态 1.异常商品2.缺包3.正常     */--20110305 add by xiechun
   BATAG053             NUMBER(12,2),				    										/* 缺包数量         		 */
   BATAG054             NUMBER(12,2),		not null		    						/* 其他出库数量          */
   BATAG055             VARCHAR2(40),                               /* 货号             		 */  --20110721 add by xiechun
   BATAG056	            VARCHAR2(255)	 ,	            						  /* 备注1            		 */--2011021 add by xiechun
   BATAG057	            VARCHAR2(255)	 ,	            						  /* 备注2            		 */--2011021 add by xiechun
   BATAG058	            VARCHAR2(255)	 ,	            						  /* 备注3            		 */--2011021 add by xiechun
   CREATE_USER          VARCHAR2(12),                               /* 建立人员              */                           
   USER_GROUP           VARCHAR2(12),                               /* 建立人员部门          */                               
   CREATE_DATE          DATE,                                       /* 建立日期              */                           
   MODIFIER             VARCHAR2(12),                               /* 修改人员              */                           
   MODI_DATE            DATE,                                       /* 修改日期              */                           
   FLAG                 NUMBER(1),                                  /* 资料状态              */                           
   constraint PK_TB_BATAG primary key (BATAG_ID)
);
--create unique index AK_TB_BATAG on TB_BATAG (BATAG_ID);
create sequence SEQ_TB_BATAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAG to public;
grant index  on TB_BATAG to public;
grant update on TB_BATAG to public; 
grant delete on TB_BATAG to public;  
grant insert on TB_BATAG to public; 
grant select on SEQ_TB_BATAG to public;                         