/* 
================================================================================
表结构代码:TB_BATAL
表结构名称:套件分配明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAL;                       
drop index AK_TB_BATAL;                       
drop table TB_BATAL;                       
create table TB_BATAL  (                       
   BATAL_ID							integer	not null,	                           /* 套件分配明细ID     */
   BATAL001							integer	not null,	                           /* 套件单品明细ID     */
   BATAL002							integer		,                                  /* 分配营运组织ID     */   
   BATAL003							integer		,                                  /* 分配单据类型       */   
   BATAL004							integer		,                                  /* 分配单据ID         */   
   BATAL005							integer		,                                  /* 分配单据明细ID     */   
   BATAL006							number(18,3)	not null,                      /* 分配数量           */
   BATAL007							number(18,3),		                             /* 已出库量           */
   BATAL008							number(18,3),		                             /* 在途量             */
   BATAL009							number(18,3),		                             /* 客户签收量         */
   BATAL010							number(18,3),		                             /* 结算价             */
   BATAL011							number(18,3),		                             /* 结算金额           */
   CREATE_USER          VARCHAR2(12),                    						 /* 建立人员           */
   USER_GROUP           VARCHAR2(12),                    						 /* 建立人员部门       */                               
   CREATE_DATE          DATE,                            						 /* 建立日期           */
   MODIFIER             VARCHAR2(12),                    						 /* 修改人员           */
   MODI_DATE            DATE,                            						 /* 修改日期           */
   FLAG                 NUMBER(1),                       						 /* 资料状态           */
   constraint PK_TB_BATAL primary key (BATAL_ID)
);
--create unique index AK_TB_BATAL on TB_BATAL (BATAL_ID);
create sequence SEQ_TB_BATAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAL to public;
grant index  on TB_BATAL to public;
grant update on TB_BATAL to public; 
grant delete on TB_BATAL to public;  
grant insert on TB_BATAL to public; 
grant select on SEQ_TB_BATAL to public;                                      