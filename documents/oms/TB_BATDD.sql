/*
================================================================================
表结构代码:TB_BATDD
表结构名称:台账表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATDD;                       
drop index AK_TB_BATDD;                       
drop table TB_BATDD;                       
create table TB_BATDD  (                       
   BATDD_ID	            INTEGER	        not null,	            /* 台账表ID       */
   BATDD001	            INTEGER	        not null,	            /* 单据类型       */
   BATDD002	            INTEGER	        not null,	            /* 单据ID         */
   BATDD003	            INTEGER	        not null,	            /* 明细ID         */
   BATDD004	            INTEGER	        not null,	            /* 标示单据类型   */
   BATDD005	            INTEGER	        not null,	            /* 标示单据ID     */
   BATDD006	            INTEGER	        not null,	            /* 标示明细ID     */
   BATDD007	            INTEGER	        not null,	            /* 仓库ID         */
   BATDD008	            INTEGER	        not null,	            /* 商品ID         */
   BATDD009	            INTEGER,		                            /* 维度1ID        */      
   BATDD010	            INTEGER,		                            /* 维度2ID        */      
   BATDD011	            INTEGER,		                            /* 维度3ID        */      
   BATDD012	            INTEGER,		                            /* 维度4ID        */      
   BATDD013	            INTEGER,		                            /* 维度5ID        */      
   BATDD014	            NUMBER(28,3)	 not null,             	    /* 数量           */
   BATDD015	            NUMBER(28,3)         not null,             	    /* 进价           */
   BATDD016	            NUMBER(28,3)	 not null,             	    /* 进价金额       */
   BATDD017	            NUMBER(28,3)	 not null,             	    /* 结算价         */
   BATDD018	            NUMBER(28,3)	 not null,             	    /* 结算金额       */
   BATDD019	            NUMBER(28,3)	 not null,             	    /* 毛利           */
   BATDD020	            INTEGER	         not null,	            /* 方向           */  --1.入库 -1.出库
   BATDD021	            INTEGER	         not null,	            /* 套件批次ID     */ --20121017 add by xiechun
   CREATE_USER          VARCHAR2(12),                         /* 建立人员       */
   USER_GROUP           VARCHAR2(12),                         /* 建立人员部门   */                               
   CREATE_DATE          DATE,                                 /* 建立日期       */
   MODIFIER             VARCHAR2(12),                         /* 修改人员       */
   MODI_DATE            DATE,                                 /* 修改日期       */
   FLAG                 NUMBER(1),                            /* 资料状态       */
   constraint PK_TB_BATDD primary key (BATDD_ID)
);
--create unique index AK_TB_BATDD on TB_BATDD (BATDD_ID);
create sequence SEQ_TB_BATDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATDD to public;
grant index  on TB_BATDD to public;
grant update on TB_BATDD to public; 
grant delete on TB_BATDD to public;  
grant insert on TB_BATDD to public; 
grant select on SEQ_TB_BATDD to public; 