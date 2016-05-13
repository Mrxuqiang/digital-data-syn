/*
================================================================================
��ṹ����:TB_SMSAB
��ṹ����:����ģ�嶨������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SMSAB;
drop index AK_TB_SMSAB;
drop table TB_SMSAB;
create table TB_SMSAB  (
   SMSAB_ID            INTEGER,                not null,            /*����ģ��ID      */        
   SMSAB001            INTEGER,                not null,            /*����ģ�嵥��ID  */      
   SMSAB002            VARCHAR2(30),           not null,            /*ģ����        */ 
   SMSAB003            VARCHAR2(255),          not null,            /*ģ������        */ 
   SMSAB004            VARCHAR2(1),            not null,            /*ģ��㼶        */ 1.���� 2.���� 3.С�� 4.�̳�
   SMSAB005            VARCHAR2(1),            not null,            /*���״̬        */ N.δ��� Y.��ˣ�Ĭ��N.δ���
   SMSAB006            INTEGER,                                     /*�����          */ 
   SMSAB007            DATE,                                        /*�������        */ 
   SMSAB008            INTEGER,                not null,            /*Ӫ����֯        */ 
   SMSAB009            VARCHAR2(4000),                              /*SQL�ű�����     */ 
   SMSAB010            VARCHAR2(255),          not null             /*����ģ������    */ 
   SMSAB011            INTEGER,                not null             /*¼����          */ ��CREATE_USER��ͬ
   SMSAB012            DATE,                   not null             /*¼������        */ ��CREATE_DATE��ͬ
   CREATE_USER         VARCHAR2(12),                                /*������Ա        */
   USER_GROUP          VARCHAR2(12),                                /*������Ա����    */                             
   CREATE_DATE         DATE,                                        /*��������        */
   MODIFIER            VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE           DATE,                                        /*�޸�����        */
   FLAG                NUMBER,                                      /*����״̬        */
   constraint PK_TB_SMSAB primary key (SMSAB_ID)
);
create unique index AK_TB_SMSAB on TB_SMSAB (SMSAB001��SMSAB002��FLAG);
create sequence SEQ_TB_SMSAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAB to public;
grant index  on TB_SMSAB to public;
grant update on TB_SMSAB to public; 
grant delete on TB_SMSAB to public;  
grant insert on TB_SMSAB to public; 
grant select on SEQ_TB_SMSAB to public;   