/*
================================================================================
��ṹ����:TB_OMSZZ
��ṹ����:�ӿ��´���־��
��ṹĿ��:�ֲ���
================================================================================
*/


drop table TB_OMSZZ;
create table TB_OMSZZ  (
   OMSZZ_ID			INTEGER                         not null,  /*���� ID			*/
   OMSZZ001			VARCHAR2(50)                     not null,  /*�ӿڼ��			*/
   OMSZZ002			VARCHAR2(60),                               /*�ӿ�������		*/
   OMSZZ003			VARCHAR2(1),	                            /*�ɹ���� N��ʧ�� Y���ɹ�  */   
   OMSZZ004			INTEGER,                                   /* �ɹ�����			*/ 
   OMSZZ005			VARCHAR2(150),	                           /* �쳣ԭ��			*/  
   OMSZZ006			DATE		                           /* ʱ��			*/
   OMSZZ007		        VARCHAR2(100),				   /* �쳣����		        */ 
);

