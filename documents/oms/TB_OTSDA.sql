/*
================================================================================
��ṹ����:TB_OTSDA
��ṹ����:�춯չλƷ�Ʊ�
��ṹĿ��:
================================================================================
*/

create table TB_OTSDA  (
   OTSDA_ID					INTEGER,			/*SEQUENCE*/
   ShopMallID				VARCHAR2(32),		/*�̳�ID*/
   ShopMallName				VARCHAR2(50),		/*�̳�����*/
   ShopMallNo				VARCHAR2(50),		/*�̳����*/
   PositionID				VARCHAR2(32),		/*չλID*/
   PositionNO       		VARCHAR2(50),		/*չλ���*/
   PositionNum      		VARCHAR2(256),		/*չλ���ƺ�*/	
   StoreyID					VARCHAR2(32),		/*¥��ID*/
   StoreyName				VARCHAR2(50),		/*¥������*/
   MuseumID					VARCHAR2(32),		/*����ID*/
   MuseumName				VARCHAR2(50),		/*��������*/
   BrandID					VARCHAR2(32),		/*Ʒ��ID*/
   BrandName				VARCHAR2(50),		/*Ʒ������*/
   BrandCode				INT,				/*Ʒ�Ʊ���*/
   BrandSerieID				VARCHAR2(32),		/*ϵ��ID*/
   SerieName				VARCHAR2(50),		/*ϵ������*/
   SerieCode				INT,				/*ϵ�б���*/
   ContractPrice			NUMBER(18,4),		/*��ͬ�۸�*/
   ContractArea				NUMBER(18,4),		/*��ͬ���*/
   DealerID					VARCHAR2(30),		/*������ID*/
   DealerNum				VARCHAR2(50),		/*�����̱��*/
   DealerName				VARCHAR2(50),		/*����������*/
   IDCardNumber				VARCHAR2(50),		/*����������*/
   OperateNature			VARCHAR2(50),		/*��Ӫ����*/
   OperateNatureDesc		VARCHAR2(50),		/*��Ӫ��������*/
   FactoryContactName		VARCHAR2(50),		/*ֱӪʱ������ϵ��*/
   FactoryContactTel		VARCHAR2(50),		/*ֱӪʱ������ϵ�˵绰*/
   EnterDate				DATE,				/*��λ����*/
   WithdrawDate				DATE,				/*�볡����*/
   FormID					VARCHAR2(32),		/*����ID*/
   PositionDealerID			VARCHAR2(32),		/*�����ID*/
   PositionBrandSeriesID	VARCHAR2(32),		/*Ʒ����λID*/
   BusinessType				VARCHAR2(1),		/*ҵ������*/
   FormType					VARCHAR2(1),		/**/
   CONBE_ID					INTEGER,			/*��ͬID*/
   CONBE003					VARCHAR2(30),		/*��ͬ���*/
   CREATE_DATE				VARCHAR2(14)
);

create sequence SEQ_TB_OTSDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSDA to public;
grant index  on TB_OTSDA to public;
grant update on TB_OTSDA to public; 
grant delete on TB_OTSDA to public;  
grant insert on TB_OTSDA to public; 
grant select on SEQ_TB_OTSDA to public;   