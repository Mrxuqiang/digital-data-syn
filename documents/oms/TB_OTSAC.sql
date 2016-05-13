/*
================================================================================
��ṹ����:TB_OTSAC
��ṹ����:��������ݱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_OTSAC;
drop index AK_TB_OTSAC;
drop table TB_OTSAC;
create table TB_OTSAC  (
   OTSAC_ID             INTEGER                         not null,  /*���������ID       */
   OTSAC001             VARCHAR2(8)                     not null,  /*�̳�����           */
   OTSAC002             DATE,                                      /*����               */
   OTSAC003             VARCHAR2(2),                               /*�ͻ�����           */
   OTSAC004             VARCHAR2(4),                               /*�ո��ʽ         */   
   OTSAC005             VARCHAR2(2),                               /*ҵ������           */
   OTSAC006             VARCHAR2(10),                              /*�ͻ�����           */
   OTSAC007             VARCHAR2(30),                              /*���۵���           */
   OTSAC008             NUMBER(22,2),                              /*���               */
   OTSAC009             VARCHAR2(4),                               /*������           */
   OTSAC010             VARCHAR2(2),                               /*�̳���������       */
   OTSAC011             INTEGER,	                           	   /*�̳���������       */
   accountNO            VARCHAR2(10),                              /*ƾ֤���           */
   status               VARCHAR2(1),                               /*״̬��ʶ           */
   msg                  VARCHAR2(255),                             /*��Ϣ               */
   tran_code			VARCHAR2(50),				   			   /*������ˮ��*/
   tran_row				VARCHAR2(50),				   			   /*����Ŀ��*/
   send_counts			INTEGER,				   				   /*���ʹ��� Ĭ�� 0*/   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_OTSAC primary key (OTSAC_ID)
);
create unique index AK_TB_OTSAC on TB_OTSAC (OTSAC001,OTSAC002,OTSAC003,OTSAC004,OTSAC005,OTSAC006);
create sequence SEQ_TB_OTSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAC to public;
grant index  on TB_OTSAC to public;
grant update on TB_OTSAC to public; 
grant delete on TB_OTSAC to public;  
grant insert on TB_OTSAC to public; 
grant select on SEQ_TB_OTSAC to public;   