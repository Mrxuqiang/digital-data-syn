/*
================================================================================
��ṹ����:TB_INVDD
��ṹ����:����黹���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVDD;
drop index AK_TB_INVDD;
drop table TB_INVDD;
create table TB_INVDD  (                                       
   INVDD_ID           INTEGER                       not null,     /*������ϸID        */          
   INVDD001           INTEGER                       not null,     /*���ص�ID          */          
   INVDD002           INTEGER                       not null,     /*��Դ����ID        */          
   INVDD003           INTEGER                       not null,     /*��Դ���ID        */          
   INVDD004           INTEGER                       not null,     /*��Ʒ����          */          
   INVDD005           INTEGER ,                                   /*ά��1             */          
   INVDD006           INTEGER,                                    /*ά��2             */          
   INVDD007           INTEGER,                                    /*ά��3             */          
   INVDD008           INTEGER,                                    /*ά��4             */          
   INVDD009           INTEGER,                                    /*ά��5             */          
   INVDD010           INTEGER                       not null,     /*�ֿ�              */          
   INVDD011           INTEGER,                                    /*��λ              */          
   INVDD012           INTEGER                       not null,     /*��λ              */          
   INVDD013           NUMBER(18,3)                  not null,     /*��λ������        */          
   INVDD014           NUMBER(12,2)                  not null,     /*�����            */          
   INVDD015           NUMBER(12,2)                  not null,     /*������            */      
   INVDD016           NUMBER(12,2)                  not null,     /*����              */      
   INVDD017           NUMBER(12,2)                  not null,     /*���              */      
   INVDD018           VARCHAR2(1)                   not null,     /*��Ʒ��������      */      
   INVDD019           VARCHAR2(1)                   not null,     /*��Ȩ����          */      
   INVDD020           VARCHAR2(255),                              /*��ע              */      
   CREATE_USER        VARCHAR2(12),                              /*������Ա           */             
   USER_GROUP         VARCHAR2(12),                              /*������Ա����       */             
   CREATE_DATE        DATE,                                      /*��������           */             
   MODIFIER           VARCHAR2(12),                              /*�޸���Ա           */             
   MODI_DATE          DATE,                                      /*�޸�����           */             
   FLAG               NUMBER(1),                                 /*����״̬           */            


  constraint PK_TB_INVDD primary key (INVDD_ID)                               
);                                           
create unique index AK_TB_INVDD on TB_INVDD (INVDD_ID,INVDD004);               
create sequence SEQ_TB_INVDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVDD to public;                                     
grant index  on TB_INVDD to public;                                     
grant update on TB_INVDD to public;                                      
grant delete on TB_INVDD to public;                                       
grant insert on TB_INVDD to public;                                      
grant select on SEQ_TB_INVDD to public;                                        