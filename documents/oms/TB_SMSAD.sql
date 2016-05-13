/*
================================================================================
��ṹ����:TB_SMSAD
��ṹ����:���ŷ��Ͷ������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SMSAD;
drop index AK_TB_SMSAD;
drop table TB_SMSAD;
create table TB_SMSAD  (
   SMSAD_ID            INTEGER,                not null,            /*���ŷ��Ͷ�����ID  */        
   SMSAD001            INTEGER,                not null,            /*��ͬID              */    
   SMSAD002            INTEGER,                                     /*���                */ 
   SMSAD003            VARCHAR2(12),                                /*������              */ 
   SMSAD004            VARCHAR2(6),                                 /*�Ա�                */ 
   SMSAD005            NUMBER��11,0��,                              /*�ֻ���              */ 
   SMSAD006            VARCHAR2(6),                                 /*��ɫ                */ 
   CREATE_USER         VARCHAR2(12),                                /*������Ա            */
   USER_GROUP          VARCHAR2(30),                                /*������Ա����        */                             
   CREATE_DATE         DATE,                                        /*��������            */
   MODIFIER            VARCHAR2(12),                                /*�޸���Ա            */
   MODI_DATE           DATE,                                        /*�޸�����            */
   FLAG                NUMBER,                                      /*����״̬            */
   constraint PK_TB_SMSAD primary key (SMSAD_ID)
);
create unique index AK_TB_SMSAD on TB_SMSAD (SMSAD001,SMSAD005);
create sequence SEQ_TB_SMSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAD to public;
grant index  on TB_SMSAD to public;
grant update on TB_SMSAD to public; 
grant delete on TB_SMSAD to public;  
grant insert on TB_SMSAD to public; 
grant select on SEQ_TB_SMSAD to public;   