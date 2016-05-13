/* 
================================================================================
表结构代码:TB_BATAN
表结构名称:子件单品明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAN;                       
drop index AK_TB_BATAN;                       
drop table TB_BATAN;                       
create table TB_BATAN  (                       
   BATAN_ID	            integer 	not null,	                    /* 子件单品明细ID   */              
   BATAN001	            integer 	not null,	                    /* 子件批次ID       */               
   BATAN002	            varchar2(64) 	not null,	                /* 子件库存条码     */            
   BATAN003	            number(18,3) 	not null,	                /* 库存数量         */            
   BATAN004	            number(18,3) 	not null,	                /* 出库数量         */            
   BATAN005	            number(18,3) 	not null,                 /* 锁定数量         */
   BATAN006	            integer	not null,	                      /* 套件单品明细ID   */
   BATAN007             NUMBER(12,2),				    								/* 缺包数量         */                 
   CREATE_USER          VARCHAR2(12),                           /* 建立人员         */
   USER_GROUP           VARCHAR2(12),                           /* 建立人员部门     */                               
   CREATE_DATE          DATE,                                   /* 建立日期         */
   MODIFIER             VARCHAR2(12),                           /* 修改人员         */
   MODI_DATE            DATE,                                   /* 修改日期         */  
   FLAG                 NUMBER(1),                              /* 资料状态         */
  
   constraint PK_TB_BATAN primary key (BATAN_ID)
);
--create unique index AK_TB_BATAN on TB_BATAN (BATAN_ID);
create sequence SEQ_TB_BATAN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAN to public;
grant index  on TB_BATAN to public;
grant update on TB_BATAN to public; 
grant delete on TB_BATAN to public;  
grant insert on TB_BATAN to public; 
grant select on SEQ_TB_BATAN to public;                         