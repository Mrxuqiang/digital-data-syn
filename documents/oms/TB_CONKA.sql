/*
================================================================================
��ṹ����:TB_CONKA
��ṹ����:��Ӧ�̴������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONKA;
drop index AK_TB_CONKA;
drop table TB_CONKA;
create table TB_CONKA  (
   CONKA_ID	           INTEGER                             not null,   /*���ID          */            
   CONKA001	           VARCHAR2(30)                        not null,   /*�������        */            
   CONKA002	           VARCHAR2(30)                        not null,   /*��������        */            
   CONKA003	           DATE                                not null,   /*�ƶ�����        */            
   CONKA004	           INTEGER                             not null,   /*Ӫ����֯ID      */            
   CONKA005	           INTEGER                             not null,   /*��Ӧ��ID        */      
   CONKA006	           VARCHAR2(1)                         not null,   /*��ʽ����        */      
   CONKA007	           VARCHAR2(1)                         not null,   /*�Ƿ�ɶ�ѡ      */      
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONKA primary key (CONKA_ID)
);
create unique index AK_TB_CONKA on TB_CONKA (CONKA001��CONKA005);
create sequence SEQ_TB_CONKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONKA to public;
grant index  on TB_CONKA to public;
grant update on TB_CONKA to public; 
grant delete on TB_CONKA to public;  
grant insert on TB_CONKA to public; 
grant select on SEQ_TB_CONKA to public;   