/*
================================================================================
��ṹ����:TB_DTBCI
��ṹ����:�ų�����Ʒ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCI;
drop index AK_TB_DTBCI;
drop table TB_DTBCI;
create table TB_DTBCI  (                                             
   DTBCI_ID	       INTEGER                   not null,     /*��Ʒ��ϸID    */              
   DTBCI001	       INTEGER                   not null,     /*�ų���ID    */              
   DTBCI002	       INTEGER                   not null,     /*�ͻ��б�ID    */              
   DTBCI003	       INTEGER                   not null,     /*��ƷID        */              
   DTBCI004	       INTEGER,                                /*ά��1         */              
   DTBCI005	       INTEGER,                                /*ά��2         */              
   DTBCI006	       INTEGER,                                /*ά��3         */              
   DTBCI007	       INTEGER,                                /*ά��4         */              
   DTBCI008	       INTEGER,                                /*ά��5         */              
   DTBCI009	       INTEGER                   not null,     /*��λ          */              
   DTBCI010	       NUMBER(18,3)              not null,     /*��������      */              
   DTBCI011	       NUMBER(18,3)              not null,     /*��������      */              
   DTBCI012	       NUMBER(18,3)              not null,     /*�˻�����      */              
   DTBCI013	       NUMBER(18,3)              not null,     /*��������      */              
   DTBCI014	       NUMBER(12,2)              not null,     /*���۵���      */              
   DTBCI015	       NUMBER(12,2)              not null,     /*���۽��      */       
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_DTBCI primary key (DTBCI_ID)                               
);                                           
create unique index AK_TB_DTBCI on TB_DTBCI (DTBCI002,DTBCI003);               
create sequence SEQ_TB_DTBCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCI to public;                                     
grant index  on TB_DTBCI to public;                                     
grant update on TB_DTBCI to public;                                      
grant delete on TB_DTBCI to public;                                       
grant insert on TB_DTBCI to public;                                      
grant select on SEQ_TB_DTBCI to public;                                        