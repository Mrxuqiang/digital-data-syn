/*
20141010 create by sundan
*/
/*
================================================================================
��ṹ����:TB_SERNA
��ṹ����:�������ֽ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERNA;
drop index AK_TB_SERNA;
drop table TB_SERNA;
create table TB_SERNA  (                                       
   SERNA_ID           INTEGER                 not null,            /*�������ֽ�ID      */  
   SERNA001           VARCHAR2(10)            not null,            /*�ƻ�����            */
   SERNA002           VARCHAR2(30)            not null,            /*�ƻ����            */
   SERNA003           INTEGER ,                                    /*�ƻ����            */   
   SERNA004           date,                                        /*�ƻ�����            */ 
   SERNA005           INTEGER ,                                    /*ͬһƷ�Ƴ���̳���  */ 
   SERNA006           INTEGER,					   /*¼����              */
   SERNA007           date,					   /*¼������            */      
   SERNA008           INTEGER,					   /*�����              */
   SERNA009           date,					   /*�������            */
   SERNA010           varchar(1),				   /*���״̬  N:δ��� Y������� */
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERNA primary key (SERNA_ID)                               
); 
create unique index AK_TB_SERNA on TB_SERNA (SERNA002,FLAG);            
create sequence SEQ_TB_SERNA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERNA to public;                                     
grant index  on TB_SERNA to public;                                     
grant update on TB_SERNA to public;                                      
grant delete on TB_SERNA to public;                                       
grant insert on TB_SERNA to public;                                      
grant select on SEQ_TB_SERNA to public;                                        