/* 
================================================================================
��ṹ����:TB_BATBC
��ṹ����:������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATBC;                       
drop index AK_TB_BATBC;                       
drop table TB_BATBC;                       
create table TB_BATBC  (                       
			BATBC_ID	NUMBER	not null,				                      /*����*/
			BATBC001	NUMBER	not null,				                      /*��Ʒ��ϸID������TB_BATBB��������*/
			BATBC002	NUMBER	not null,				                      /*����Ӫ����֯ID*/
			BATBC003	NUMBER	not null,				                      /*���䵥������*/
			BATBC004	NUMBER	not null,				                      /*���䵥��ID*/
			BATBC005	NUMBER	not null,				                      /*���䵥����ϸID���Ӽ���Ʒ��Ӧ�ĵ�����ϸ��*/
			BATBC006	NUMBER(18,3)	not null,	                      /*�Ӽ���������*/
			BATBC007	NUMBER(18,3)	not null,	                      /*�Ӽ��ѳ�����*/
			BATBC008	NUMBER(18,3)	not null,	                      /*�Ӽ���;��*/
			BATBC009	NUMBER(18,3)	not null,	                      /*�Ӽ��ͻ�ǩ����*/
			BATBC010	NUMBER(18,3)	not null,	                      /*�Ӽ������*/
			BATBC011	NUMBER(18,3)	not null,	                      /*�Ӽ�������*/
			BATBC012	NUMBER(18,3)	not null,	                      /*�׼���������*/
			BATBC013	NUMBER(18,3)	not null,	                      /*�׼��ѳ�����*/
			BATBC014	NUMBER(18,3)	not null,	                      /*�׼���;��*/
			BATBC015	NUMBER(18,3)	not null,	                      /*�׼��ͻ�ǩ����*/
			BATBC016	NUMBER(18,3)	not null,	                      /*�׼������*/
			BATBC017	NUMBER(18,3)	not null,	                      /*�׼�������*/
			BATBC018	NUMBER(18,3)	not null,	                      /*�׼�1��������*/
			BATBC019	NUMBER(18,3)	not null,	                      /*�׼�1�ѳ�����*/
			BATBC020	NUMBER(18,3)	not null,	                      /*�׼�1��;��*/
			BATBC021	NUMBER(18,3)	not null,	                      /*�׼�1�ͻ�ǩ����*/
			BATBC022	NUMBER(18,3)	not null,	                      /*�׼�1�����*/
			BATBC023	NUMBER(18,3)	not null,	                      /*�׼�1������*/
			BATBC024	NUMBER(18,3)	not null,	                      /*�׼�2��������*/
			BATBC025	NUMBER(18,3)	not null,	                      /*�׼�2�ѳ�����*/
			BATBC026	NUMBER(18,3)	not null,	                      /*�׼�2��;��*/
			BATBC027	NUMBER(18,3)	not null,	                      /*�׼�2�ͻ�ǩ����*/
			BATBC028	NUMBER(18,3)	not null,	                      /*�׼�2�����*/
			BATBC029	NUMBER(18,3)	not null,	                      /*�׼�2������*/
			CREATE_USER	VARCHAR2(12),				                        /*������Ա*/
			USER_GROUP	VARCHAR2(12),				                        /*������Ա����*/
			CREATE_DATE	DATE,								                        /*��������*/
			MODIFIER	VARCHAR2(12),					                        /*�޸���Ա*/
			MODI_DATE	DATE,									                        /*�޸�����*/
			FLAG	NUMBER,										                        /*����״̬*/

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