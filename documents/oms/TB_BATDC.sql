/*
================================================================================
��ṹ����:TB_BATDC
��ṹ����:�׼�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATDC;
drop table TB_BATDC;
create table TB_BATDC  (
   BATDC_ID	            INTEGER	           not null,                  /* ���ID                 */
   BATDC001	            INTEGER                        ,  		      /* ����ID                 */
   BATDC002	            INTEGER	           not null,                  /* �ֿ�ID                 */
   BATDC003	            INTEGER		           ,                  /* ��ʾ��������           */   
   BATDC004	            INTEGER		           ,                  /* ��ʾ����ID             */   
   BATDC005	            INTEGER		           ,                  /* ��ʾ������ϸID(�׼�ID) */
   BATDC006	            VARCHAR2(1)	           not null,                  /* ��Ʒ��������           */--1���׼� 2����װ�� 3������
   BATDC007	            VARCHAR2(1)            not null,                  /* ��������               */--1��������Ʒ 2��������Ʒ 3����Ʒ 5������Ʒ 
   BATDC008	            INTEGER	           not null,                  /* �׼���ƷID             */
   BATDC009	            INTEGER,  		                              /* �׼�ά��1ID            */
   BATDC010	            INTEGER,  		                              /* �׼�ά��2ID            */
   BATDC011	            INTEGER,  		                              /* �׼�ά��3ID            */
   BATDC012	            INTEGER,  		                              /* �׼�ά��4ID            */
   BATDC013	            INTEGER,  		                              /* �׼�ά��5ID            */
   BATDC014	            NUMBER(18,3)	   not null,	              /* �������               */
   BATDC015	            NUMBER(18,3)	   not null,	              /* ��������               */
   BATDC016	            NUMBER(12,2)	   not null,	              /* �ɱ����               */
   BATDC017	            VARCHAR2(255)	           ,	              /* ��ע                   */
   CREATE_USER          VARCHAR2(12),                                 /* ������Ա               */
   USER_GROUP           VARCHAR2(12),                                 /* ������Ա����           */
   CREATE_DATE          DATE,                                         /* ��������               */
   MODIFIER             VARCHAR2(12),                                 /* �޸���Ա               */
   MODI_DATE            DATE,                                         /* �޸�����               */
   FLAG                 NUMBER(1),                                    /* ����״̬               */

   constraint PK_TB_BATDC primary key (BATDC_ID)
);
create sequence SEQ_TB_BATDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATDC to public;
grant index  on TB_BATDC to public;
grant update on TB_BATDC to public;
grant delete on TB_BATDC to public;
grant insert on TB_BATDC to public;
grant select on SEQ_TB_BATDC to public;