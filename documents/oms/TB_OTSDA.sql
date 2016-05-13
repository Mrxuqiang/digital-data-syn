/*
================================================================================
表结构代码:TB_OTSDA
表结构名称:异动展位品牌表
表结构目的:
================================================================================
*/

create table TB_OTSDA  (
   OTSDA_ID					INTEGER,			/*SEQUENCE*/
   ShopMallID				VARCHAR2(32),		/*商场ID*/
   ShopMallName				VARCHAR2(50),		/*商场名称*/
   ShopMallNo				VARCHAR2(50),		/*商场编号*/
   PositionID				VARCHAR2(32),		/*展位ID*/
   PositionNO       		VARCHAR2(50),		/*展位编号*/
   PositionNum      		VARCHAR2(256),		/*展位门牌号*/	
   StoreyID					VARCHAR2(32),		/*楼层ID*/
   StoreyName				VARCHAR2(50),		/*楼层名称*/
   MuseumID					VARCHAR2(32),		/*场馆ID*/
   MuseumName				VARCHAR2(50),		/*场馆名称*/
   BrandID					VARCHAR2(32),		/*品牌ID*/
   BrandName				VARCHAR2(50),		/*品牌名称*/
   BrandCode				INT,				/*品牌编码*/
   BrandSerieID				VARCHAR2(32),		/*系列ID*/
   SerieName				VARCHAR2(50),		/*系列名称*/
   SerieCode				INT,				/*系列编码*/
   ContractPrice			NUMBER(18,4),		/*合同价格*/
   ContractArea				NUMBER(18,4),		/*合同面积*/
   DealerID					VARCHAR2(30),		/*经销商ID*/
   DealerNum				VARCHAR2(50),		/*经销商编号*/
   DealerName				VARCHAR2(50),		/*经销商名称*/
   IDCardNumber				VARCHAR2(50),		/*经销商名称*/
   OperateNature			VARCHAR2(50),		/*经营性质*/
   OperateNatureDesc		VARCHAR2(50),		/*经营性质描述*/
   FactoryContactName		VARCHAR2(50),		/*直营时工厂联系人*/
   FactoryContactTel		VARCHAR2(50),		/*直营时工厂联系人电话*/
   EnterDate				DATE,				/*落位日期*/
   WithdrawDate				DATE,				/*离场日期*/
   FormID					VARCHAR2(32),		/*方案ID*/
   PositionDealerID			VARCHAR2(32),		/*承租表ID*/
   PositionBrandSeriesID	VARCHAR2(32),		/*品牌落位ID*/
   BusinessType				VARCHAR2(1),		/*业务类型*/
   FormType					VARCHAR2(1),		/**/
   CONBE_ID					INTEGER,			/*合同ID*/
   CONBE003					VARCHAR2(30),		/*合同编号*/
   CREATE_DATE				VARCHAR2(14)
);

create sequence SEQ_TB_OTSDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSDA to public;
grant index  on TB_OTSDA to public;
grant update on TB_OTSDA to public; 
grant delete on TB_OTSDA to public;  
grant insert on TB_OTSDA to public; 
grant select on SEQ_TB_OTSDA to public;   