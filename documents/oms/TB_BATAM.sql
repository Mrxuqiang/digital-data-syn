/* 
================================================================================
表结构代码:TB_BATAM
表结构名称:子件分配明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAM;                       
drop index AK_TB_BATAM;                       
drop table TB_BATAM;                       
create table TB_BATAM  (                       
   BATAM_ID	            integer	not null,                       /* 子件分配明细ID   */
   BATAM001	            integer	not null,                       /* 子件单品明细ID   */
   BATAM002	            integer,		                            /* 分配营运组织     */    
   BATAM003	            integer,		                            /* 分配单据类型     */    
   BATAM004	            integer,		                            /* 分配单据ID       */    
   BATAM005	            integer,		                            /* 分配单据明细ID   */    
   BATAM006	            number(18,3)	not null,	                /* 分配数量         */
   BATAM007	            number(18,3),		                        /* 已出库量         */
   BATAM008	            number(18,3),		                        /* 在途量           */
   BATAM009	            number(18,3),		                        /* 客户签收量       */
   BATAM010	            number(18,3),		                        /* 结算价           */
   BATAM011	            number(18,3),		                        /* 结算金额         */
   BATAM012	            integer	not null,	                      /* 套件分配明细ID   */
   CREATE_USER          VARCHAR2(12),                           /* 建立人员         */
   USER_GROUP           VARCHAR2(12),                           /* 建立人员部门     */                               
   CREATE_DATE          DATE,                                   /* 建立日期         */
   MODIFIER             VARCHAR2(12),                           /* 修改人员         */
   MODI_DATE            DATE,                                   /* 修改日期         */
   FLAG                 NUMBER(1),                              /* 资料状态         */
   constraint PK_TB_BATAM primary key (BATAM_ID)
);
--create unique index AK_TB_BATAM on TB_BATAM (BATAM_ID);
create sequence SEQ_TB_BATAM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAM to public;
grant index  on TB_BATAM to public;
grant update on TB_BATAM to public; 
grant delete on TB_BATAM to public;  
grant insert on TB_BATAM to public; 
grant select on SEQ_TB_BATAM to public;                         