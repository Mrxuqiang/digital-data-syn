/* 
================================================================================
表结构代码:TB_BATBC
表结构名称:分配明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATBC;                       
drop index AK_TB_BATBC;                       
drop table TB_BATBC;                       
create table TB_BATBC  (                       
			BATBC_ID	NUMBER	not null,				                      /*主键*/
			BATBC001	NUMBER	not null,				                      /*单品明细ID（关联TB_BATBB表主键）*/
			BATBC002	NUMBER	not null,				                      /*分配营运组织ID*/
			BATBC003	NUMBER	not null,				                      /*分配单据类型*/
			BATBC004	NUMBER	not null,				                      /*分配单据ID*/
			BATBC005	NUMBER	not null,				                      /*分配单据明细ID（子件商品对应的单据明细）*/
			BATBC006	NUMBER(18,3)	not null,	                      /*子件分配数量*/
			BATBC007	NUMBER(18,3)	not null,	                      /*子件已出库量*/
			BATBC008	NUMBER(18,3)	not null,	                      /*子件在途量*/
			BATBC009	NUMBER(18,3)	not null,	                      /*子件客户签收量*/
			BATBC010	NUMBER(18,3)	not null,	                      /*子件结算价*/
			BATBC011	NUMBER(18,3)	not null,	                      /*子件结算金额*/
			BATBC012	NUMBER(18,3)	not null,	                      /*套件分配数量*/
			BATBC013	NUMBER(18,3)	not null,	                      /*套件已出库量*/
			BATBC014	NUMBER(18,3)	not null,	                      /*套件在途量*/
			BATBC015	NUMBER(18,3)	not null,	                      /*套件客户签收量*/
			BATBC016	NUMBER(18,3)	not null,	                      /*套件结算价*/
			BATBC017	NUMBER(18,3)	not null,	                      /*套件结算金额*/
			BATBC018	NUMBER(18,3)	not null,	                      /*套件1分配数量*/
			BATBC019	NUMBER(18,3)	not null,	                      /*套件1已出库量*/
			BATBC020	NUMBER(18,3)	not null,	                      /*套件1在途量*/
			BATBC021	NUMBER(18,3)	not null,	                      /*套件1客户签收量*/
			BATBC022	NUMBER(18,3)	not null,	                      /*套件1结算价*/
			BATBC023	NUMBER(18,3)	not null,	                      /*套件1结算金额*/
			BATBC024	NUMBER(18,3)	not null,	                      /*套件2分配数量*/
			BATBC025	NUMBER(18,3)	not null,	                      /*套件2已出库量*/
			BATBC026	NUMBER(18,3)	not null,	                      /*套件2在途量*/
			BATBC027	NUMBER(18,3)	not null,	                      /*套件2客户签收量*/
			BATBC028	NUMBER(18,3)	not null,	                      /*套件2结算价*/
			BATBC029	NUMBER(18,3)	not null,	                      /*套件2结算金额*/
			CREATE_USER	VARCHAR2(12),				                        /*建立人员*/
			USER_GROUP	VARCHAR2(12),				                        /*建立人员部门*/
			CREATE_DATE	DATE,								                        /*建立日期*/
			MODIFIER	VARCHAR2(12),					                        /*修改人员*/
			MODI_DATE	DATE,									                        /*修改日期*/
			FLAG	NUMBER,										                        /*资料状态*/

   constraint PK_TB_BATBC primary key (BATBC_ID)
);
--create unique index AK_TB_BATBC on TB_BATBC (BATBC_ID);
create sequence SEQ_TB_BATBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATBC to public;
grant index  on TB_BATBC to public;
grant update on TB_BATBC to public; 
grant delete on TB_BATBC to public;  
grant insert on TB_BATBC to public; 
grant select on SEQ_TB_BATBC to public;                         