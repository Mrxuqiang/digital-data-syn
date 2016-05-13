/*
================================================================================
表结构代码:TB_BATDE
表结构名称:套件锁定表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATDE;                       
drop index AK_TB_BATDE;                       
drop table TB_BATDE;                       
create table TB_BATDE  (                       
   BATDE_ID	            INTEGER	        not null,       /* 套件锁定表ID       */
   BATDE001	            INTEGER	        not null,       /* 套件库存表ID       */ 
   BATDE002	            INTEGER		        ,       /* 分配单据类型       */   
   BATDE003	            INTEGER		        ,       /* 分配单据ID         */   
   BATDE004	            INTEGER		        ,       /* 分配单据明细ID     */   
   BATDE005	            number(28,3)        not null,       /* 锁定数量           */
   BATDE006	            number(28,3),		        /* 已出库量           */
   BATDE007	            number(28,3),		        /* 结算金额           */
   BATDE008	            number(28,6),		        /* 结算单价           */
   CREATE_USER          VARCHAR2(12),                   /* 建立人员           */
   USER_GROUP           VARCHAR2(12),                   /* 建立人员部门       */                               
   CREATE_DATE          DATE,                           /* 建立日期           */
   MODIFIER             VARCHAR2(12),                   /* 修改人员           */
   MODI_DATE            DATE,                           /* 修改日期           */
   FLAG                 NUMBER(1),                      /* 资料状态           */
   constraint PK_TB_BATDE primary key (BATDE_ID)
);
--create unique index AK_TB_BATDE on TB_BATDE (BATDE_ID);
create sequence SEQ_TB_BATDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATDE to public;
grant index  on TB_BATDE to public;
grant update on TB_BATDE to public; 
grant delete on TB_BATDE to public;  
grant insert on TB_BATDE to public; 
grant select on SEQ_TB_BATDE to public;                                      