/*
================================================================================
��ṹ����:TB_DTBAA
��ṹ����:���ͳ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBAA;
drop index AK_TB_DTBAA;
drop table TB_DTBAA;
create table TB_DTBAA  (                                       
   DTBAA_ID           INTEGER                                  not null,     /*���ͳ��ⵥID    */
   DTBAA001           NUMBER(1)                                not null,     /*�춯����        */
   DTBAA002           INTEGER                                  not null,     /*���ͷ�������    */
   DTBAA003           VARCHAR2(30)                             not null,     /*���ͷ�������    */
   DTBAA004           DATE                                     not null,     /*��������        */
   DTBAA005           NUMBER(1)                                not null,     /*��Դ����        */
   DTBAA006           VARCHAR2(30),                                          /*��Դ����        */
   DTBAA007           INTEGER                                  not null,     /*����Ӫ����֯    */
   DTBAA008           INTEGER                                  not null,     /*�ջ�Ӫ����֯    */
   DTBAA009           INTEGER ,                                              /*������Ա        */
   DTBAA010           INTEGER,                                               /*�ջ���Ա        */
   DTBAA011           VARCHAR2(1),                                           /*ָ���ɹ�        */
   DTBAA012          INTEGER,                                          /*���۵���        */
   DTBAA013           VARCHAR2(255),                                         /*�ջ���ַ        */
   DTBAA014           DATE,                                                  /*��������        */
   DTBAA015           VARCHAR2(30),                                          /*��ע            */
   DTBAA016           VARCHAR2(1)                              not null,     /*���״̬        */
   DTBAA017           INTEGER,                                               /*¼����          */
   DTBAA018           DATE,                                                  /*¼������        */
   DTBAA019           INTEGER,                                               /*�����          */
   DTBAA020           DATE,                                                  /*�������        */
   DTBAA021           INTEGER,                                               /*��Դ��ID        */
   DTBAA022           INTEGER,                                               /*���˵�ID        */
   DTBAA023           VARCHAR2(1)                            ,     /*����״̬ */ -- 1 δ���� 2 ���ų� 3 ���ͻ� 4 ���
   DTBAA024           VARCHAR2(200),                                
   DTBAA025          VARCHAR2(200),
   DTBAA026          VARCHAR2(200),
   DTBAA027          VARCHAR2(200) 
   DTBAA028           INTEGER ,			             /* �ų�����*/   
   CREATE_USER        VARCHAR2(12),                                          /*������Ա        */             
   USER_GROUP         VARCHAR2(12),                                          /*������Ա����    */             
   CREATE_DATE        DATE,                                                  /*��������        */             
   MODIFIER           VARCHAR2(12),                                          /*�޸���Ա        */             
   MODI_DATE          DATE,                                                  /*�޸�����        */             
   FLAG               NUMBER(1),                                             /*����״̬        */            


  constraint PK_TB_DTBAA primary key (DTBAA_ID)                               
);                                           
create unique index AK_TB_DTBAA on TB_DTBAA (DTBAA002,DTBAA003,DTBAA007);               
create sequence SEQ_TB_DTBAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBAA to public;                                     
grant index  on TB_DTBAA to public;                                     
grant update on TB_DTBAA to public;                                      
grant delete on TB_DTBAA to public;                                       
grant insert on TB_DTBAA to public;                                      
grant select on SEQ_TB_DTBAA to public;                                        