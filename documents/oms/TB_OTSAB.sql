/*
================================================================================
��ṹ����:TB_OTSAB
��ṹ����:�����տ����ݱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_OTSAB;
drop index AK_TB_OTSAB;
drop table TB_OTSAB;
create table TB_OTSAB  (
   OTSAB_ID             INTEGER                         not null,  /*�տ�����ID         */
   OTSAB001             VARCHAR2(8)                     not null,  /*�̳�����           */
   OTSAB002             VARCHAR2(8),                               /*��������           */
   OTSAB003             VARCHAR2(2),                               /*�ͻ�����           */
   OTSAB004             VARCHAR2(4),                               /*�ո��ʽ         */   
   OTSAB005             VARCHAR2(2),                               /*ҵ������           */
   OTSAB006             NUMBER(22,2),                              /*���               */
   OTSAB007             VARCHAR2(4),                               /*������           */
   OTSAB008             VARCHAR2(2),                               /*�̳���������       */
   OTSAB009				INTEGER,
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
   constraint PK_TB_OTSAB primary key (OTSAB_ID)
);
create unique index AK_TB_OTSAB on TB_OTSAB (OTSAB001,OTSAB002,OTSAB003,OTSAB004,OTSAB005);
create sequence SEQ_TB_OTSAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAB to public;
grant index  on TB_OTSAB to public;
grant update on TB_OTSAB to public; 
grant delete on TB_OTSAB to public;  
grant insert on TB_OTSAB to public; 
grant select on SEQ_TB_OTSAB to public;   