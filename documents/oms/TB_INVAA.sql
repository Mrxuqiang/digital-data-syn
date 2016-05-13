/*
================================================================================
��ṹ����:TB_INVAA
��ṹ����:��Ʒ���ⵥ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVAA;
drop index AK_TB_INVAA;
drop table TB_INVAA;
create table TB_INVAA  (                                       
   INVAA_ID           INTEGER                       not null,      /*������ID        */       
   INVAA001           VARCHAR2(1)                   not null,      /*��������        */       
   INVAA002           INTEGER                       not null,      /*���ⵥ��        */       
   INVAA003           VARCHAR2(30)                  not null,      /*���ⵥ��        */       
   INVAA004           DATE                          not null,      /*��������        */       
   INVAA005           INTEGER                       not null,      /*����Ӫ����֯    */       
   INVAA006           INTEGER                       not null,      /*���ⲿ��        */       
   INVAA007           INTEGER                       not null,      /*������Ա        */       
   INVAA008           VARCHAR2(1)                   not null,      /*�������        */       
   INVAA009           INTEGER                       not null,      /*��������        */       
   INVAA010           INTEGER                       not null,      /*������֯        */       
   INVAA011           VARCHAR2(1)                                  /*���״̬        */       
   INVAA012           INTEGER,                                     /*¼����          */       
   INVAA013           DATE,                                        /*¼������        */       
   INVAA014           INTEGER,                                     /*�����          */       
   INVAA015           DATE,                                        /*�������        */       
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */             
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */             
   CREATE_DATE        DATE,                                        /*��������        */             
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */             
   MODI_DATE          DATE,                                        /*�޸�����        */             
   FLAG               NUMBER(1),                                   /*����״̬        */            


  constraint PK_TB_INVAA primary key (INVAA_ID)                               
);                                           
create unique index AK_TB_INVAA on TB_INVAA (INVAA002,INVAA003);               
create sequence SEQ_TB_INVAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVAA to public;                                     
grant index  on TB_INVAA to public;                                     
grant update on TB_INVAA to public;                                      
grant delete on TB_INVAA to public;                                       
grant insert on TB_INVAA to public;                                      
grant select on SEQ_TB_INVAA to public;                                        