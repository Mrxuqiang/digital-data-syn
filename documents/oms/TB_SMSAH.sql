/*
================================================================================
��ṹ����:TB_SMSAH
��ṹ����:�������������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SMSAH;
drop index AK_TB_SMSAH;
drop table TB_SMSAH;
create table TB_SMSAH  (
   SMSAH_ID            INTEGER,                 not null,           /*�����������ID  */        
   SMSAH001            INTEGER,                 not null,           /*����������ID  */ ȱʡID(SMSAG_ID)     
   SMSAH002            VARCHAR2(12),                                /*��������        */ �����arg+ȫ�����б�ŵ���ʽ��ʾ��ϵͳ�Զ�����
   SMSAH003            VARCHAR2(1),                                 /*��������        */ 1.INTEGER 2.VARCHAR2 3.DATE 4.NUMBER
   SMSAH004            VARCHAR2(30),                                /*��������        */ �ֶ����룬Ĭ��ȡ��ṹ�б��ֶ�����
   CREATE_USER         VARCHAR2(12),                                /*������Ա        */
   USER_GROUP          VARCHAR2(12),                                /*������Ա����    */                             
   CREATE_DATE         DATE,                                        /*��������        */
   MODIFIER            VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE           DATE,                                        /*�޸�����        */
   FLAG                NUMBER,                                      /*����״̬        */
   constraint PK_TB_SMSAH primary key (SMSAH_ID)
);
create unique index AK_TB_SMSAH on TB_SMSAH (SMSAH001,SMSAH002);
create sequence SEQ_TB_SMSAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAH to public;
grant index  on TB_SMSAH to public;
grant update on TB_SMSAH to public; 
grant delete on TB_SMSAH to public;  
grant insert on TB_SMSAH to public; 
grant select on SEQ_TB_SMSAH to public;   