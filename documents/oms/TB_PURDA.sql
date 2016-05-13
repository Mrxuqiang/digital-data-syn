/*
================================================================================
��ṹ����:TB_PURDA
��ṹ����:�ɹ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURDA;
drop index AK_TB_PURDA;
drop table TB_PURDA;
create table TB_PURDA  (
   PURDA_ID           INTEGER              not null,      /*�ɹ���ID            */
   PURDA001           INTEGER              not null,      /*�ɹ�����            */
   PURDA002           VARCHAR2(30)         not null,      /*�ɹ�����            */
   PURDA003           DATE                 not null,      /*�ɹ�����            */
   PURDA004           NUMBER(1)            not null,      /*������Դ       1.�ֹ�¼�� 2.�Զ�����3.Ҫ���� 4.Ҫ�����ܵ�  5.���۶���  6 �������뵥 defualt 1 ����������ǰ�õ����Զ������ɹ���Ĭ�� */
   PURDA005           VARCHAR2(30)         not null,      /*��Դ����            */
   PURDA006           INTEGER              not null,      /*�ɹ�Ӫ����֯        */
   PURDA007           INTEGER              not null,      /*�ɹ�����            */
   PURDA008           INTEGER              not null,      /*�ɹ�Ա              */
   PURDA009           INTEGER              not null,      /*��Ӧ��              */
   PURDA010           VARCHAR2(1)            not null,      /*��Ӫ��ʽ            */ --mark 20100329
   PURDA011           VARCHAR2(1)            not null,      /*���䷽ʽ            */ --mark 20100329
   PURDA012           DATE                 not null,      /*��������            */
   PURDA013           DATE,                               /*��ֹ����            */--mark 20100329
   PURDA014           VARCHAR2(1)          not null,      /*ָ���ɹ�            */ --MARK BY 20100328
   PURDA015           VARCHAR2(30),                       /*���۵���   */           --mark BY 20100328
   PURDA016           INTEGER,                            /*�ջ�Ӫ����֯        */
   PURDA017           NUMBER(12,2),                       /*Ĭ�ϴ����ۿ�        */--mark 20100329
   PURDA018           VARCHAR2(255),                      /*�ͻ���ַ            */
   PURDA019           VARCHAR2(255),                      /*��ע                */
   PURDA020           VARCHAR2(1)            not null,      /*���״̬            */
   PURDA021           INTEGER,                            /*¼����              */
   PURDA022           DATE,                               /*¼������            */
   PURDA023           INTEGER,                            /*�����              */
   PURDA024           DATE,                               /*�������            */
   PURDA025           INTEGER,                            /*��Դ��ID            */
   PURDA026           VARCHAR2(1),                            /*�ɹ�����       1 ��Ʒ 2 ��Ʒ 3 ��Ʒ   4������  */ --MARK BY 20100328
   PURDA027           VARCHAR2(30),                            /*��Ӧ�̵��� */ --  hansf   ��Ӧ�̷����ĵ��� mark by 201003028
   PURDA028           NUMBER(22,6)				/*�������*/
   PURDA029           INTEGER ,                                   /*�ֿ�*/
   CREATE_USER        VARCHAR2(12),                       /*������Ա            */
   USER_GROUP         VARCHAR2(12),                       /*������Ա����        */                               
   CREATE_DATE        DATE,                               /*��������            */
   MODIFIER           VARCHAR2(12),                       /*�޸���Ա            */
   MODI_DATE          DATE,                               /*�޸�����            */
   FLAG               NUMBER(1),                          /*����״̬            */
   constraint PK_TB_PURDA primary key (PURDA_ID)
);
create unique index AK_TB_PURDA on TB_PURDA (PURDA_ID,PURDA001, PURDA002);
create sequence SEQ_TB_PURDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURDA to public;
grant index  on TB_PURDA to public;
grant update on TB_PURDA to public; 
grant delete on TB_PURDA to public;  
grant insert on TB_PURDA to public; 
grant select on SEQ_TB_PURDA to public;   

