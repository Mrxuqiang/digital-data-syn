/* 
================================================================================
表结构代码:TB_BATBB
表结构名称:单品明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATBB;                       
drop index AK_TB_BATBB;                       
drop table TB_BATBB;                       
create table TB_BATBB  (                       
			BATBB_ID	NUMBER				not null,	                      /*主键*/
			BATBB001	NUMBER				not null,	                      /*批次ID（关联TB_BATBA表主键）*/
			BATBB002	VARCHAR2(64)	not null,	                      /*子件库存条码（有3种条码生成规则，一,使用商品本身的条码，如饰品，所有批次共用一个条码；二,单品管理条码，一个商品一个条码；三,批次条码，每个批次的商品生成一个条码。自动生成的条码格式为yyMMddHHmmssSSS+3位随机数+1位校验位）*/
			BATBB003	NUMBER(18,3)	not null,	                      /*子件库存数量（新增批次时确定，商品为单品管理时，数量始终为1。扣减批次时，此数量不变）*/
			BATBB004	NUMBER(18,3)	not null,	                      /*子件出库数量*/
			BATBB005	NUMBER(18,3)	not null,	                      /*子件锁定数量*/
			BATBB006	VARCHAR2(64)	not null,	                      /*套件库存条码（有3种条码生成规则，一,使用商品本身的条码，如饰品，所有批次共用一个条码；二,单品管理条码，一个商品一个条码；三,批次条码，每个批次的商品生成一个条码。自动生成的条码格式为yyMMddHHmmssSSS+3位随机数+1位校验位）*/
			BATBB007	NUMBER(18,3)	not null,	                      /*套件库存数量（新增批次时确定，商品为单品管理时，数量始终为1。扣减批次时，此数量不变）*/
			BATBB008	NUMBER(18,3)	not null,	                      /*套件出库数量*/
			BATBB009	NUMBER(18,3)	not null,	                      /*套件锁定数量*/
			BATBB010	VARCHAR2(64)	not null,	                      /*套件1库存条码（有3种条码生成规则，一,使用商品本身的条码，如饰品，所有批次共用一个条码；二,单品管理条码，一个商品一个条码；三,批次条码，每个批次的商品生成一个条码。自动生成的条码格式为yyMMddHHmmssSSS+3位随机数+1位校验位）*/
			BATBB011	NUMBER(18,3)	not null,	                      /*套件1库存数量（新增批次时确定，商品为单品管理时，数量始终为1。扣减批次时，此数量不变）*/
			BATBB012	NUMBER(18,3)	not null,	                      /*套件1出库数量*/
			BATBB013	NUMBER(18,3)	not null,	                      /*套件1锁定数量*/
			BATBB014	VARCHAR2(64)	not null,	                      /*套件2库存条码（有3种条码生成规则，一,使用商品本身的条码，如饰品，所有批次共用一个条码；二,单品管理条码，一个商品一个条码；三,批次条码，每个批次的商品生成一个条码。自动生成的条码格式为yyMMddHHmmssSSS+3位随机数+1位校验位）*/
			BATBB015	NUMBER(18,3)	not null,	                      /*套件2库存数量（新增批次时确定，商品为单品管理时，数量始终为1。扣减批次时，此数量不变）*/
			BATBB016	NUMBER(18,3)	not null,	                      /*套件2出库数量*/
			BATBB017	NUMBER(18,3)	not null,	                      /*套件2锁定数量*/
			CREATE_USER	VARCHAR2(12),				                        /*建立人员*/
			USER_GROUP	VARCHAR2(12),				                        /*建立人员部门*/
			CREATE_DATE	DATE,								                        /*建立日期*/
			MODIFIER	VARCHAR2(12),					                        /*修改人员*/
			MODI_DATE	DATE,									                        /*修改日期*/
			FLAG	NUMBER,										                        /*资料状态*/

   constraint PK_TB_BATBB primary key (BATBB_ID)
);
--create unique index AK_TB_BATBB on TB_BATBB (BATBB_ID);
create sequence SEQ_TB_BATBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATBB to public;
grant index  on TB_BATBB to public;
grant update on TB_BATBB to public; 
grant delete on TB_BATBB to public;  
grant insert on TB_BATBB to public; 
grant select on SEQ_TB_BATBB to public;                         