/*
20130803 add by gaoxl for ���÷������Ӻ�ͬid���̻�id
*/
/*
================================================================================
��ṹ����:TB_SERIC
��ṹ����:�̼�������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIC;
drop index AK_TB_SERIC;
drop table TB_SERIC;
create table TB_SERIC  (                                       
   SERIC_ID           INTEGER                 not null,            /*���������ID */   
   SERIC001           INTEGER                 not null,            /*����           */   
   SERIC002           VARCHAR2(30)            not null,            /*����           */   
   SERIC003           DATE                    not null,            /*�������       */   
   SERIC004           INTEGER                 not null,            /*����̳�       */   
   SERIC005           INTEGER,                                     /*���ƻ����   */   
   SERIC006           INTEGER,                                     /*���ƻ���ID   */ 
   SERIC007           INTEGER,                                     /*¥��           */ 
   SERIC008           INTEGER,                                     /*¥��           */ 
   SERIC009           INTEGER,                                     /*չλ           */ 
   SERIC010           INTEGER,                                     /*Ʒ��           */   
   SERIC011           VARCHAR2(1),                                 /*���ԭ��        */
   SERIC012           INTEGER,                                     /*¼����          */
   SERIC013           DATE,                                        /*¼������        */
   SERIC014           VARCHAR2(1),                                 /*����״̬        */ 
   SERIC015           INTEGER,                                     /*�����          */
   SERIC016           DATE,                                        /*�������        */
   SERIC017           INTEGER,                                     /*�̻�ID          */
   SERIC018           INTEGER,                                     /*��ͬID          */   
   SERIC019           INTEGER,                                     /*����·�          */ --20141204 add by sundan
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERIC primary key (SERIC_ID)                               
);                                           
create unique index AK_TB_SERIC on TB_SERIC (SERIC001,SERIC002,SERIC004,SERIC005,SERIC006,SERIC011,FLAG);               
create sequence SEQ_TB_SERIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIC to public;                                     
grant index  on TB_SERIC to public;                                     
grant update on TB_SERIC to public;                                      
grant delete on TB_SERIC to public;                                       
grant insert on TB_SERIC to public;                                      
grant select on SEQ_TB_SERIC to public;                                        