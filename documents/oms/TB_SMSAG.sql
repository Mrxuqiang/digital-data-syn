/*
================================================================================
��ṹ����:TB_SMSAG
��ṹ����:��������������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SMSAG;
drop index AK_TB_SMSAG;
drop table TB_SMSAG;
create table TB_SMSAG  ( 
   SMSAG_ID            INTEGER,                                      /*����������ID  */  
   SMSAG001            INTEGER,                                      /*����ID          */
   SMSAG002            VARCHAR2(30),                                 /*�������񵥺�    */
   SMSAG003            VARCHAR2(1),                                  /*��������㼶    */  
   SMSAG004            VARCHAR2(1),                                  /*���Ͷ�������    */  
   SMSAG005            INTEGER,                                      /*���Ͷ���ģ��ID  */  
   SMSAG006            VARCHAR2(30),                                 /*���Ͷ���ģ����*/  
   SMSAG007            VARCHAR2(255),                                /*���Ͷ���ģ������*/  
   SMSAG008            VARCHAR2(1),                                  /*Ԥ��״̬        */  
   SMSAG009            VARCHAR2(1),                                  /*���״̬        */  
   SMSAG010            INTEGER,                                      /*�����          */  
   SMSAG011            DATE,                                         /*�������        */  
   SMSAG012            INTEGER,                                      /*Ӫ����֯        */  
   SMSAG013            VARCHAR2(255),                                /*�����������    */  
   SMSAG014            VARCHAR2(4000),                               /*SQL�ű�         */  
   SMSAG015            INTEGER,                                      /*¼����          */  
   SMSAG016            DATE,                                         /*¼������        */  
   SMSAG017            VARCHAR2(1),                                  /*ִ��Ƶ��        */ 
   SMSAG018            VARCHAR2(2),                                  /*ִ������        */
   SMSAG019            VARCHAR2(1),                                  /*ÿ��Ƶ��        */
   SMSAG020            DATE,                                         /*ִ��ʱ��        */
   SMSAG021            NUMBER(2),                                    /*Ƶ��Сʱ        */
   SMSAG022            DATE,                                         /*��ʼʱ��        */
   SMSAG023            DATE,                                         /*����ʱ��        */
   CREATE_USER         VARCHAR2(12),                                 /*������Ա        */
   USER_GROUP          VARCHAR2(30),                                 /*������Ա����    */                             
   CREATE_DATE         DATE,                                         /*��������        */
   MODIFIER            VARCHAR2(12),                                 /*�޸���Ա        */
   MODI_DATE           DATE,                                         /*�޸�����        */
   FLAG                NUMBER,                                       /*����״̬        */
   constraint PK_TB_SMSAG primary key (SMSAG_ID)
);
create unique index AK_TB_SMSAG on TB_SMSAG (SMSAG002,SMSAG005);
create sequence SEQ_TB_SMSAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAG to public;
grant index  on TB_SMSAG to public;
grant update on TB_SMSAG to public; 
grant delete on TB_SMSAG to public;  
grant insert on TB_SMSAG to public; 
grant select on SEQ_TB_SMSAG to public;   