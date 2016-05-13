/* 
================================================================================
��ṹ����:TB_BATBE
��ṹ����:�����ܱ�-�Ӽ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATBE;                       
drop index AK_TB_BATBE;                       
drop table TB_BATBE;                       
create table TB_BATBE  (                       
			BATBE_ID	NUMBER	not null,				                      /*����*/
			BATBE001	DATE	not null,					                      /*���ڣ���ȷ���죩*/
			BATBE002	NUMBER	not null,				                      /*�ֿ�ID*/
			BATBE003	NUMBER	not null,				                      /*��λID*/
			BATBE004	NUMBER	not null,				                      /*��ƷID*/
			BATBE005	NUMBER,								                      	/*ά��1ID*/
			BATBE006	NUMBER,								                      	/*ά��2ID*/
			BATBE007	NUMBER,								                      	/*ά��3ID*/
			BATBE008	NUMBER,								                      	/*ά��4ID*/
			BATBE009	NUMBER,								                      	/*ά��5ID*/
			BATBE010	NUMBER	not null,				                      /*��Ʒ�������ԣ�1���׼� 2����װ�� 3��������*/
			BATBE011	NUMBER	not null,				                      /*�������ԣ�1��������Ʒ 2��������Ʒ 3����Ʒ 4����Ʒ 5������Ʒ��*/
			BATBE012	NUMBER(18,3)	not null,	                      /*��ǰ�����������ֹ����ǰʱ�䣩*/
			BATBE013	NUMBER(18,3)	not null,	                      /*��ǰ������ֹ����ǰʱ�䣩*/
			BATBE014	NUMBER(18,3)	not null,	                      /*�ɹ��������*/
			BATBE015	NUMBER(18,3)	not null,	                      /*�ɹ������*/
			BATBE016	NUMBER(18,3)	not null,	                      /*���͵����������*/
			BATBE017	NUMBER(18,3)	not null,	                      /*���͵��������*/
			BATBE018	NUMBER(18,3)	not null,	                      /*���˵����������*/
			BATBE019	NUMBER(18,3)	not null,	                      /*���˵��������*/
			BATBE020	NUMBER(18,3)	not null,	                      /*�����˻��������*/
			BATBE021	NUMBER(18,3)	not null,	                      /*�����˻������*/
			BATBE022	NUMBER(18,3)	not null,	                      /*��Ʒ�˻��������*/
			BATBE023	NUMBER(18,3)	not null,	                      /*��Ʒ�˻������*/
			BATBE024	NUMBER(18,3)	not null,	                      /*�����ջ��������*/
			BATBE025	NUMBER(18,3)	not null,	                      /*�����ջ������*/
			BATBE026	NUMBER(18,3)	not null,	                      /*�����������*/
			BATBE027	NUMBER(18,3)	not null,	                      /*���������*/
			BATBE028	NUMBER(18,3)	not null,	                      /*�����������*/
			BATBE029	NUMBER(18,3)	not null,	                      /*���������*/
			BATBE030	NUMBER(18,3)	not null,	                      /*��װ�������*/
			BATBE031	NUMBER(18,3)	not null,	                      /*��װ�����*/
			BATBE032	NUMBER(18,3)	not null,	                      /*�����������*/
			BATBE033	NUMBER(18,3)	not null,	                      /*���������*/
			BATBE034	NUMBER(18,3)	not null,	                      /*�Ʋ��������*/
			BATBE035	NUMBER(18,3)	not null,	                      /*�Ʋ������*/
			BATBE036	NUMBER(18,3)	not null,	                      /*����������*/
			BATBE037	NUMBER(18,3)	not null,	                      /*��������*/
			BATBE038	NUMBER(18,3)	not null,	                      /*�Ʋֳ�������*/
			BATBE039	NUMBER(18,3)	not null,	                      /*�Ʋֳ���ɱ����*/
			BATBE040	NUMBER(18,3)	not null,	                      /*�Ʋֳ��������*/
			BATBE041	NUMBER(18,3)	not null,	                      /*��װ��������*/
			BATBE042	NUMBER(18,3)	not null,	                      /*��װ����ɱ����*/
			BATBE043	NUMBER(18,3)	not null,	                      /*��װ���������*/
			BATBE044	NUMBER(18,3)	not null,	                      /*��ֳ�������*/
			BATBE045	NUMBER(18,3)	not null,	                      /*��ֳ���ɱ����*/
			BATBE046	NUMBER(18,3)	not null,	                      /*��ֳ��������*/
			BATBE047	NUMBER(18,3)	not null,	                      /*�����������*/
			BATBE048	NUMBER(18,3)	not null,	                      /*�������ɱ����*/
			BATBE049	NUMBER(18,3)	not null,	                      /*������������*/
			BATBE050	NUMBER(18,3)	not null,	                      /*�ɹ��˻���������*/
			BATBE051	NUMBER(18,3)	not null,	                      /*�ɹ��˻�����ɱ����*/
			BATBE052	NUMBER(18,3)	not null,	                      /*�ɹ��˻����������*/
			BATBE053	NUMBER(18,3)	not null,	                      /*���ͷ�����;����*/
			BATBE054	NUMBER(18,3)	not null,	                      /*���ͷ�����;���*/
			BATBE055	NUMBER(18,3)	not null,	                      /*���ͷ������������*/
			BATBE056	NUMBER(18,3)	not null,	                      /*���ͷ�����������*/
			BATBE057	NUMBER(18,3)	not null,	                      /*���ͷ�������ɱ����*/
			BATBE058	NUMBER(18,3)	not null,	                      /*���˷�����������*/
			BATBE059	NUMBER(18,3)	not null,	                      /*���˷�������ɱ����*/
			BATBE060	NUMBER(18,3)	not null,	                      /*���˷������������*/
			BATBE061	NUMBER(18,3)	not null,	                      /*���˷�����;����*/
			BATBE062	NUMBER(18,3)	not null,	                      /*���˷�����;���*/
			BATBE063	NUMBER(18,3)	not null,	                      /*���۳�������*/
			BATBE064	NUMBER(18,3)	not null,	                      /*���۳���ɱ����*/
			BATBE065	NUMBER(18,3)	not null,	                      /*���۳��������*/
			BATBE066	NUMBER(18,3)	not null,	                      /*������;����*/
			BATBE067	NUMBER(18,3)	not null,	                      /*������;���*/
			BATBE068	NUMBER(18,3)	not null,	                      /*��Ʒ��������*/
			BATBE069	NUMBER(18,3)	not null,	                      /*��Ʒ����ɱ����*/
			BATBE070	NUMBER(18,3)	not null,	                      /*��Ʒ��;����*/
			BATBE071	NUMBER(18,3)	not null,	                      /*��Ʒ��;���*/
			BATBE072	NUMBER(18,3)	not null,	                      /*��Ʒ���������*/
			BATBE073	NUMBER(18,3)	not null,	                      /*����������������*/
			BATBE074	NUMBER(18,3)	not null,	                      /*������������ɱ����*/
			BATBE075	NUMBER(18,3)	not null,	                      /*����������;����*/
			BATBE076	NUMBER(18,3)	not null,	                      /*����������;���*/
			BATBE077	NUMBER(18,3)	not null,	                      /*�����������������*/
			BATBE078	NUMBER(18,3)	not null,	                      /*������������*/
			BATBE079	NUMBER(18,3)	not null,	                      /*��������ɱ����*/
			BATBE080	NUMBER(18,3)	not null,	                      /*������;����*/
			BATBE081	NUMBER(18,3)	not null,	                      /*������;���*/
			BATBE082	NUMBER(18,3)	not null,	                      /*�������������*/
			BATBE083	NUMBER(18,3)	not null,	                      /*������������*/
			BATBE084	NUMBER(18,3)	not null,	                      /*��������ɱ����*/
			BATBE085	NUMBER(18,3)	not null,	                      /*������;����*/
			BATBE086	NUMBER(18,3)	not null,	                      /*������;���*/
			BATBE087	NUMBER(18,3)	not null,	                      /*�����������*/

   constraint PK_TB_BATBE primary key (BATBE_ID)
);
--create unique index AK_TB_BATBE on TB_BATBE (BATBE_ID);
create sequence SEQ_TB_BATBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATBE to public;
grant index  on TB_BATBE to public;
grant update on TB_BATBE to public; 
grant delete on TB_BATBE to public;  
grant insert on TB_BATBE to public; 
grant select on SEQ_TB_BATBE to public;                         