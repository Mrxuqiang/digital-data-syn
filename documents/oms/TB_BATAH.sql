/* 
================================================================================
表结构代码:TB_BATAH
表结构名称:子件成本表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAH;                       
drop index AK_TB_BATAH;                       
drop table TB_BATAH;                       
create table TB_BATAH  (                       
   BATAH_ID	            integer	not null,                           /* 子件成本ID       */
   BATAH001	            integer	not null,                           /* 单据类型         */
   BATAH002	            integer	not null,                           /* 单据ID           */
   BATAH003	            integer	not null,                           /* 明细ID           */
   BATAH004	            integer	not null,                           /* 子件批次ID       */
   BATAH005	            integer	not null,                           /* 仓库ID           */
   BATAH006	            integer	not null,                           /* 仓位ID           */
   BATAH007	            integer	not null,                           /* 商品ID           */
   BATAH008	            integer,                         		        /* 维度1ID          */
   BATAH009	            integer,                         		        /* 维度2ID          */
   BATAH010	            integer,                         		        /* 维度3ID          */
   BATAH011	            integer,                         		        /* 维度4ID          */
   BATAH012	            integer,                         		        /* 维度5ID          */
   BATAH013	            number(18,3)	not null,                     /* 数量             */
   BATAH014	            number(12,2)	not null,                     /* 进价             */
   BATAH015	            number(12,2)	not null,                     /* 进价金额         */
   BATAH016	            number(12,2)	not null,                     /* 结算价           */
   BATAH017	            number(12,2)	not null,                     /* 结算金额         */
   BATAH018	            integer	not null,	                          /* 税种ID           */
   BATAH019	            number(18,3)	not null,	                    /* 税率             */
   BATAH020	            number(12,2)	not null,	                    /* 税金             */
   BATAH021	            integer	not null,     	                    /* 方向             */
   BATAH022	            integer	not null,     	                    /* 套件成本ID       */
   BATAH023	            integer	not null,     	                    /* 签收单明细ID     */ add by hansf for20110114
   CREATE_USER          VARCHAR2(12),                               /* 建立人员         */
   USER_GROUP           VARCHAR2(12),                               /* 建立人员部门     */                               
   CREATE_DATE          DATE,                                       /* 建立日期         */
   MODIFIER             VARCHAR2(12),                               /* 修改人员         */
   MODI_DATE            DATE,                                       /* 修改日期         */
   FLAG                 NUMBER(1),                                  /* 资料状态         */
   constraint PK_TB_BATAH primary key (BATAH_ID)
);
--create unique index AK_TB_BATAH on TB_BATAH (BATAH_ID);
create sequence SEQ_TB_BATAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAH to public;
grant index  on TB_BATAH to public;
grant update on TB_BATAH to public; 
grant delete on TB_BATAH to public;  
grant insert on TB_BATAH to public; 
grant select on SEQ_TB_BATAH to public;                         