/* 
================================================================================
表结构代码:TB_BATAC
表结构名称:套件成本表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAC;                       
drop index AK_TB_BATAC;                       
drop table TB_BATAC;                       
create table TB_BATAC  (                       
   BATAC_ID	            integer	not null,	                         /* 套件成本ID     */
   BATAC001	            integer	not null,	                         /* 单据类型       */
   BATAC002	            integer	not null,	                         /* 单据ID         */
   BATAC003	            integer	not null,	                         /* 明细ID         */
   BATAC004	            integer	not null,	                         /* 套件批次ID     */
   BATAC005	            integer	not null,	                         /* 仓库ID         */
   BATAC006	            integer	not null,	                         /* 仓位ID         */
   BATAC007	            integer	not null,	                         /* 商品ID         */
   BATAC008	            integer,		                               /* 维度1ID        */      
   BATAC009	            integer,		                               /* 维度2ID        */      
   BATAC010	            integer,		                               /* 维度3ID        */      
   BATAC011	            integer,		                               /* 维度4ID        */      
   BATAC012	            integer,		                               /* 维度5ID        */      
   BATAC013	            number(18,3)	not null,                    /* 数量           */
   BATAC014	            number(12,2)	not null,                    /* 进价           */
   BATAC015	            number(12,2)	not null,                    /* 进价金额       */
   BATAC016	            number(12,2)	not null,                    /* 结算价         */
   BATAC017	            number(12,2)	not null,                    /* 结算金额       */
   BATAC018	            integer	not null,	                         /* 税种ID         */
   BATAC019	            number(18,3)	not null,                    /* 税率           */
   BATAC020	            number(12,2)	not null,                    /* 税金           */
   BATAC021	            integer	not null,	                         /* 方向           */
   BATAC022	            integer		,                                /* 签收单	明细ID   */  add by hansf 20110114
   BATAC023             integer ,                                  /* 套件成本ID     */  add by sunwei 20110919
   CREATE_USER          VARCHAR2(12),                              /* 建立人员       */
   USER_GROUP           VARCHAR2(12),                              /* 建立人员部门   */                               
   CREATE_DATE          DATE,                                      /* 建立日期       */
   MODIFIER             VARCHAR2(12),                              /* 修改人员       */
   MODI_DATE            DATE,                                      /* 修改日期       */
   FLAG                 NUMBER(1),                                 /* 资料状态       */
   constraint PK_TB_BATAC primary key (BATAC_ID)
);
--create unique index AK_TB_BATAC on TB_BATAC (BATAC_ID);
create sequence SEQ_TB_BATAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAC to public;
grant index  on TB_BATAC to public;
grant update on TB_BATAC to public; 
grant delete on TB_BATAC to public;  
grant insert on TB_BATAC to public; 
grant select on SEQ_TB_BATAC to public; 