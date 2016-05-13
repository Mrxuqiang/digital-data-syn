/* 
================================================================================
��ṹ����:TB_BATBD
��ṹ����:�ɱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATBD;                       
drop index AK_TB_BATBD;                       
drop table TB_BATBD;                       
create table TB_BATBD  (                       
			BATBD_ID	NUMBER	not null,				                      /*����*/
			BATBD001	NUMBER	not null,				                      /*����ID������TB_BATBA��������*/
			BATBD002	NUMBER	not null,				                      /*��������*/
			BATBD003	NUMBER	not null,				                      /*����ID*/
			BATBD004	NUMBER	not null,				                      /*������ϸID���Ӽ���Ʒ��Ӧ�ĵ�����ϸ��*/
			BATBD005	NUMBER	not null,				                      /*�ֿ�ID*/
			BATBD006	NUMBER	not null,				                      /*��λID*/
			BATBD007	NUMBER	not null,				                      /*˰��ID*/
			BATBD008	NUMBER	not null,				                      /*˰��*/
			BATBD009	NUMBER	not null,				                      /*����1�������� -1�������Σ�*/
			BATBD010	NUMBER	not null,				                      /*�Ӽ���ƷID*/
			BATBD011	NUMBER,								                        /*�Ӽ�ά��1ID*/
			BATBD012	NUMBER,								                        /*�Ӽ�ά��2ID*/
			BATBD013	NUMBER,								                        /*�Ӽ�ά��3ID*/
			BATBD014	NUMBER,								                        /*�Ӽ�ά��4ID*/
			BATBD015	NUMBER,								                        /*�Ӽ�ά��5ID*/
			BATBD016	NUMBER(18,3)	not null,	                      /*�Ӽ�����*/
			BATBD017	NUMBER(18,3)	not null,	                      /*�Ӽ�����*/
			BATBD018	NUMBER(18,3)	not null,	                      /*�Ӽ����۽��*/
			BATBD019	NUMBER(18,3)	not null,	                      /*�Ӽ������*/
			BATBD020	NUMBER(18,3)	not null,	                      /*�Ӽ�������*/
			BATBD021	NUMBER(18,3)	not null,	                      /*�Ӽ�˰��*/
			BATBD022	NUMBER	not null,				                      /*�׼���ƷID*/
			BATBD023	NUMBER,								                        /*�׼�ά��1ID*/
			BATBD024	NUMBER,								                        /*�׼�ά��2ID*/
			BATBD025	NUMBER,								                        /*�׼�ά��3ID*/
			BATBD026	NUMBER,								                        /*�׼�ά��4ID*/
			BATBD027	NUMBER,								                        /*�׼�ά��5ID*/
			BATBD028	NUMBER(18,3)	not null,	                      /*�׼�����*/
			BATBD029	NUMBER(18,3)	not null,	                      /*�׼�����*/
			BATBD030	NUMBER(18,3)	not null,	                      /*�׼����۽��*/
			BATBD031	NUMBER(18,3)	not null,	                      /*�׼������*/
			BATBD032	NUMBER(18,3)	not null,	                      /*�׼�������*/
			BATBD033	NUMBER(18,3)	not null,	                      /*�׼�˰��*/
			BATBD034	NUMBER	not null,				                      /*�׼�1��ƷID*/
			BATBD035	NUMBER,								                        /*�׼�1ά��1ID*/
			BATBD036	NUMBER,								                        /*�׼�1ά��2ID*/
			BATBD037	NUMBER,								                        /*�׼�1ά��3ID*/
			BATBD038	NUMBER,								                        /*�׼�1ά��4ID*/
			BATBD039	NUMBER,								                        /*�׼�1ά��5ID*/
			BATBD040	NUMBER(18,3)	not null,	                      /*�׼�1����*/
			BATBD041	NUMBER(18,3)	not null,	                      /*�׼�1����*/
			BATBD042	NUMBER(18,3)	not null,	                      /*�׼�1���۽��*/
			BATBD043	NUMBER(18,3)	not null,	                      /*�׼�1�����*/
			BATBD044	NUMBER(18,3)	not null,	                      /*�׼�1������*/
			BATBD045	NUMBER(18,3)	not null,	                      /*�׼�1˰��*/
			BATBD046	NUMBER	not null,				                      /*�׼�2��ƷID*/
			BATBD047	NUMBER,								                        /*�׼�2ά��1ID*/
			BATBD048	NUMBER,								                        /*�׼�2ά��2ID*/
			BATBD049	NUMBER,								                        /*�׼�2ά��3ID*/
			BATBD050	NUMBER,								                        /*�׼�2ά��4ID*/
			BATBD051	NUMBER,								                        /*�׼�2ά��5ID*/
			BATBD052	NUMBER(18,3)	not null,	                      /*�׼�2����*/
			BATBD053	NUMBER(18,3)	not null,	                      /*�׼�2����*/
			BATBD054	NUMBER(18,3)	not null,	                      /*�׼�2���۽��*/
			BATBD055	NUMBER(18,3)	not null,	                      /*�׼�2�����*/
			BATBD056	NUMBER(18,3)	not null,	                      /*�׼�2������*/
			BATBD057	NUMBER(18,3)	not null,	                      /*�׼�2˰��*/
			BATBD058	NUMBER,								                        /*ǩ�յ���ϸID(�Ӽ�)*/
			CREATE_USER	VARCHAR2(12),				                        /*������Ա*/
			USER_GROUP	VARCHAR2(12),				                        /*������Ա����*/
			CREATE_DATE	DATE,								                        /*��������*/
			MODIFIER	VARCHAR2(12),					                        /*�޸���Ա*/
			MODI_DATE	DATE,									                        /*�޸�����*/
			FLAG	NUMBER,										                        /*����״̬*/

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