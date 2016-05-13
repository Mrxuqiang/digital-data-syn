/*
================================================================================
��ṹ����:TB_SERMD
��ṹ����:���ж�����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMD;
drop index AK_TB_SERMD;
drop table TB_SERMD;
create table TB_SERMD  (                                       
   SERMD_ID           INTEGER                 not null,            /*���ж���ID        */   
   SERMD001           VARCHAR2(10)            not null,            /*���ж������      */   
   SERMD002           VARCHAR2(30) ,                               /*���ж�������      */   
   SERMD003           INTEGER,                                     /*���ڵ���          */   
   SERMD004           INTEGER ,                                    /*��������          */   
   SERMD005           VARCHAR2(255),                               /*��ע              */       
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMD primary key (SERMD_ID)                               
);                                           
create unique index AK_TB_SERMD on TB_SERMD (SERMD001,FLAG);               
create sequence SEQ_TB_SERMD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMD to public;                                     
grant index  on TB_SERMD to public;                                     
grant update on TB_SERMD to public;                                      
grant delete on TB_SERMD to public;                                       
grant insert on TB_SERMD to public;                                      
grant select on SEQ_TB_SERMD to public;                                        