/*
================================================================================
表结构代码:TB_BATDC
表结构名称:套件库存表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATDC;
drop table TB_BATDC;
create table TB_BATDC  (
   BATDC_ID	            INTEGER	           not null,                  /* 库存ID                 */
   BATDC001	            INTEGER                        ,  		      /* 货主ID                 */
   BATDC002	            INTEGER	           not null,                  /* 仓库ID                 */
   BATDC003	            INTEGER		           ,                  /* 标示单据类型           */   
   BATDC004	            INTEGER		           ,                  /* 标示单据ID             */   
   BATDC005	            INTEGER		           ,                  /* 标示单据明细ID(套件ID) */
   BATDC006	            VARCHAR2(1)	           not null,                  /* 商品服务属性           */--1、套件 2、组装件 3、补件
   BATDC007	            VARCHAR2(1)            not null,                  /* 销售属性               */--1、正常商品 2、定制商品 3、赠品 5、处理品 
   BATDC008	            INTEGER	           not null,                  /* 套件商品ID             */
   BATDC009	            INTEGER,  		                              /* 套件维度1ID            */
   BATDC010	            INTEGER,  		                              /* 套件维度2ID            */
   BATDC011	            INTEGER,  		                              /* 套件维度3ID            */
   BATDC012	            INTEGER,  		                              /* 套件维度4ID            */
   BATDC013	            INTEGER,  		                              /* 套件维度5ID            */
   BATDC014	            NUMBER(18,3)	   not null,	              /* 库存数量               */
   BATDC015	            NUMBER(18,3)	   not null,	              /* 锁定数量               */
   BATDC016	            NUMBER(12,2)	   not null,	              /* 成本金额               */
   BATDC017	            VARCHAR2(255)	           ,	              /* 备注                   */
   CREATE_USER          VARCHAR2(12),                                 /* 建立人员               */
   USER_GROUP           VARCHAR2(12),                                 /* 建立人员部门           */
   CREATE_DATE          DATE,                                         /* 建立日期               */
   MODIFIER             VARCHAR2(12),                                 /* 修改人员               */
   MODI_DATE            DATE,                                         /* 修改日期               */
   FLAG                 NUMBER(1),                                    /* 资料状态               */

   constraint PK_TB_BATDC primary key (BATDC_ID)
);
create sequence SEQ_TB_BATDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATDC to public;
grant index  on TB_BATDC to public;
grant update on TB_BATDC to public;
grant delete on TB_BATDC to public;
grant insert on TB_BATDC to public;
grant select on SEQ_TB_BATDC to public;