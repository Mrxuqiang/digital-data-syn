/*
================================================================================
��ṹ����:TB_SERMK
��ṹ����:����Ʒ����ձ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMK;
drop index AK_TB_SERMK;
drop table TB_SERMK;
create table TB_SERMK  (                                       
   SERMK_ID           INTEGER                 not null,            /*����Ʒ��ID        */   
   SERMK001           VARCHAR2(20)            not null,            /*����Ʒ�����      */   
   SERMK002           VARCHAR2(100)           not null,            /*����Ʒ������      */  
   SERMK003           INTEGER,                                     /*��Ӫ����ID        */           
   SERMK004           VARCHAR2(255),                               /*��ע              */            
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMK primary key (SERMK_ID)                               
);                                           
create unique index AK_TB_SERMK on TB_SERMK (SERMK001,FLAG);               
create sequence SEQ_TB_SERMK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMK to public;                                     
grant index  on TB_SERMK to public;                                     
grant update on TB_SERMK to public;                                      
grant delete on TB_SERMK to public;                                       
grant insert on TB_SERMK to public;                                      
grant select on SEQ_TB_SERMK to public;                                        