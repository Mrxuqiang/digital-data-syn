/*
================================================================================
��ṹ����:TB_SERIA
��ṹ����:��Ʒ���ƻ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERIA;
drop index AK_TB_SERIA;
drop table TB_SERIA;
create table TB_SERIA  (                                       
   SERIA_ID           INTEGER                 not null,            /*���ƻ���ID    */   
   SERIA001           VARCHAR2(30)            not null,            /*���ƻ����    */   
   SERIA002           DATE                    not null,            /*�ƻ�����        */   
   SERIA003           NUMBER(4)               not null,            /*������        */   
   SERIA004           INTEGER                 not null,            /*Ӫ����֯ID      */   
   SERIA005           VARCHAR2(1),                                 /*�����Դ        */   
   SERIA006           NUMBER(4),                                   /*�̳�Ʒ������    */ 
   SERIA007           NUMBER(4),                                   /*���μƻ��������*/   
   SERIA008           VARCHAR2(1),                                 /*���ԭ��        */
   SERIA009           INTEGER,                                     /*¼����          */
   SERIA010           DATE,                                        /*¼������        */
   SERIA011           INTEGER,                                     /*�����          */
   SERIA012           DATE,                                        /*�������        */
   SERIA013           VARCHAR2(1),                                 /*���״̬        */   
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERIA primary key (SERIA_ID)                               
);                                           
create unique index AK_TB_SERIA on TB_SERIA (SERIA001,SERIA002);               
create sequence SEQ_TB_SERIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIA to public;                                     
grant index  on TB_SERIA to public;                                     
grant update on TB_SERIA to public;                                      
grant delete on TB_SERIA to public;                                       
grant insert on TB_SERIA to public;                                      
grant select on SEQ_TB_SERIA to public;                                        