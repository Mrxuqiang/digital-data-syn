/*
================================================================================
��ṹ����:TB_DTBBA
��ṹ����:���˳���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBBA;
drop index AK_TB_DTBBA;
drop table TB_DTBBA;
create table TB_DTBBA  (                                       
   DTBBA_ID           INTEGER                                  not null,     /*���˳��ⵥID  */
   DTBBA001           VARCHAR2(1)                              not null,     /*�춯����      */
   DTBBA002           INTEGER                                  not null,     /*���˷�������  */
   DTBBA003           VARCHAR2(30)                             not null,     /*���˷�������  */
   DTBBA004           DATE                                     not null,     /*��������      */
   DTBBA005           INTEGER                                  not null,     /*����Ӫ����֯  */
   DTBBA006           INTEGER                                  not null,     /*�ջ�Ӫ����֯  */
   DTBBA007           INTEGER ,                                              /*������Ա      */
   DTBBA008           INTEGER,                                               /*�ջ���Ա      */
   DTBBA009           VARCHAR2(255),                                         /*�ջ���ַ      */
   DTBBA010           DATE,                                                  /*��������      */
   DTBBA011           VARCHAR2(255),                                         /*��ע          */
   DTBBA012           VARCHAR2(1)                              not null,     /*���״̬      */
   DTBBA013           INTEGER,                                               /*¼����        */
   DTBBA014           DATE,                                                  /*¼������      */
   DTBBA015           INTEGER,                                               /*�����        */
   DTBBA016           DATE,                                                  /*�������      */
   DTBBA017           INTEGER,                                               /*���ͷ�����ID       */
   DTBBA018           VARCHAR2(1)                              ,     /*����״̬     */--1 δ���� 2 ���ų� 3 ���ͻ� 4 ���
   CREATE_USER        VARCHAR2(12),                                          /*������Ա        */             
   USER_GROUP         VARCHAR2(12),                                          /*������Ա����    */             
   CREATE_DATE        DATE,                                                  /*��������        */             
   MODIFIER           VARCHAR2(12),                                          /*�޸���Ա        */             
   MODI_DATE          DATE,                                                  /*�޸�����        */             
   FLAG               NUMBER(1),                                             /*����״̬        */            


  constraint PK_TB_DTBBA primary key (DTBBA_ID)                               
);                                           
create unique index AK_TB_DTBBA on TB_DTBBA (DTBBA002,DTBBA003,DTBBA005);               
create sequence SEQ_TB_DTBBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBBA to public;                                     
grant index  on TB_DTBBA to public;                                     
grant update on TB_DTBBA to public;                                      
grant delete on TB_DTBBA to public;                                       
grant insert on TB_DTBBA to public;                                      
grant select on SEQ_TB_DTBBA to public;                                        