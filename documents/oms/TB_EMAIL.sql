/*
================================================================================
��ṹ����:TB_EMAIL
��ṹ����:�ӿ������ʼ���ʱ����
��ṹĿ��:�ֲ���
================================================================================
*/


drop table TB_EMAIL;
create table TB_EMAIL  (
   ID			INTEGER                         not null,  /*���� ID        */
   INTNAME		VARCHAR2(30)                     not null,  /*�ӿ���           */
   EMAIL		VARCHAR2(80),                               /*�ռ���ַ          */
   SENDERR	        INTEGER,	                           /*�����¼��          */   
   MAXERR               INTEGER,                                   /*�����������¼�� */ 
   LAST_TIME            DATE,		                           /*�ϴ��ʼ�����ʱ��   */  
   SEND_INTER           INTEGER,	                           /*���ͼ�����죩     */
   SEND_COUNTS          INTEGER					   /*���� SAP ����      */ 
);

