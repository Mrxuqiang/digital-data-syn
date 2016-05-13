/* 
================================================================================
表结构代码:TB_BATBD
表结构名称:成本表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATBD;                       
drop index AK_TB_BATBD;                       
drop table TB_BATBD;                       
create table TB_BATBD  (                       
			BATBD_ID	NUMBER	not null,				                      /*主键*/
			BATBD001	NUMBER	not null,				                      /*批次ID（关联TB_BATBA表主键）*/
			BATBD002	NUMBER	not null,				                      /*单据类型*/
			BATBD003	NUMBER	not null,				                      /*单据ID*/
			BATBD004	NUMBER	not null,				                      /*单据明细ID（子件商品对应的单据明细）*/
			BATBD005	NUMBER	not null,				                      /*仓库ID*/
			BATBD006	NUMBER	not null,				                      /*仓位ID*/
			BATBD007	NUMBER	not null,				                      /*税种ID*/
			BATBD008	NUMBER	not null,				                      /*税率*/
			BATBD009	NUMBER	not null,				                      /*方向（1、增批次 -1、扣批次）*/
			BATBD010	NUMBER	not null,				                      /*子件商品ID*/
			BATBD011	NUMBER,								                        /*子件维度1ID*/
			BATBD012	NUMBER,								                        /*子件维度2ID*/
			BATBD013	NUMBER,								                        /*子件维度3ID*/
			BATBD014	NUMBER,								                        /*子件维度4ID*/
			BATBD015	NUMBER,								                        /*子件维度5ID*/
			BATBD016	NUMBER(18,3)	not null,	                      /*子件数量*/
			BATBD017	NUMBER(18,3)	not null,	                      /*子件进价*/
			BATBD018	NUMBER(18,3)	not null,	                      /*子件进价金额*/
			BATBD019	NUMBER(18,3)	not null,	                      /*子件结算价*/
			BATBD020	NUMBER(18,3)	not null,	                      /*子件结算金额*/
			BATBD021	NUMBER(18,3)	not null,	                      /*子件税额*/
			BATBD022	NUMBER	not null,				                      /*套件商品ID*/
			BATBD023	NUMBER,								                        /*套件维度1ID*/
			BATBD024	NUMBER,								                        /*套件维度2ID*/
			BATBD025	NUMBER,								                        /*套件维度3ID*/
			BATBD026	NUMBER,								                        /*套件维度4ID*/
			BATBD027	NUMBER,								                        /*套件维度5ID*/
			BATBD028	NUMBER(18,3)	not null,	                      /*套件数量*/
			BATBD029	NUMBER(18,3)	not null,	                      /*套件进价*/
			BATBD030	NUMBER(18,3)	not null,	                      /*套件进价金额*/
			BATBD031	NUMBER(18,3)	not null,	                      /*套件结算价*/
			BATBD032	NUMBER(18,3)	not null,	                      /*套件结算金额*/
			BATBD033	NUMBER(18,3)	not null,	                      /*套件税额*/
			BATBD034	NUMBER	not null,				                      /*套件1商品ID*/
			BATBD035	NUMBER,								                        /*套件1维度1ID*/
			BATBD036	NUMBER,								                        /*套件1维度2ID*/
			BATBD037	NUMBER,								                        /*套件1维度3ID*/
			BATBD038	NUMBER,								                        /*套件1维度4ID*/
			BATBD039	NUMBER,								                        /*套件1维度5ID*/
			BATBD040	NUMBER(18,3)	not null,	                      /*套件1数量*/
			BATBD041	NUMBER(18,3)	not null,	                      /*套件1进价*/
			BATBD042	NUMBER(18,3)	not null,	                      /*套件1进价金额*/
			BATBD043	NUMBER(18,3)	not null,	                      /*套件1结算价*/
			BATBD044	NUMBER(18,3)	not null,	                      /*套件1结算金额*/
			BATBD045	NUMBER(18,3)	not null,	                      /*套件1税额*/
			BATBD046	NUMBER	not null,				                      /*套件2商品ID*/
			BATBD047	NUMBER,								                        /*套件2维度1ID*/
			BATBD048	NUMBER,								                        /*套件2维度2ID*/
			BATBD049	NUMBER,								                        /*套件2维度3ID*/
			BATBD050	NUMBER,								                        /*套件2维度4ID*/
			BATBD051	NUMBER,								                        /*套件2维度5ID*/
			BATBD052	NUMBER(18,3)	not null,	                      /*套件2数量*/
			BATBD053	NUMBER(18,3)	not null,	                      /*套件2进价*/
			BATBD054	NUMBER(18,3)	not null,	                      /*套件2进价金额*/
			BATBD055	NUMBER(18,3)	not null,	                      /*套件2结算价*/
			BATBD056	NUMBER(18,3)	not null,	                      /*套件2结算金额*/
			BATBD057	NUMBER(18,3)	not null,	                      /*套件2税额*/
			BATBD058	NUMBER,								                        /*签收单明细ID(子件)*/
			CREATE_USER	VARCHAR2(12),				                        /*建立人员*/
			USER_GROUP	VARCHAR2(12),				                        /*建立人员部门*/
			CREATE_DATE	DATE,								                        /*建立日期*/
			MODIFIER	VARCHAR2(12),					                        /*修改人员*/
			MODI_DATE	DATE,									                        /*修改日期*/
			FLAG	NUMBER,										                        /*资料状态*/

   constraint PK_TB_BATBD primary key (BATBD_ID)
);
--create unique index AK_TB_BATBD on TB_BATBD (BATBD_ID);
create sequence SEQ_TB_BATBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATBD to public;
grant index  on TB_BATBD to public;
grant update on TB_BATBD to public; 
grant delete on TB_BATBD to public;  
grant insert on TB_BATBD to public; 
grant select on SEQ_TB_BATBD to public;                         