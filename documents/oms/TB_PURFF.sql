/*
================================================================================
��ṹ����:TB_PURFF
��ṹ����:��������ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PURFF;
drop index AK_TB_PURFF;
drop table TB_PURFF;
create table TB_PURFF  (
   PURFF_ID             INTEGER                    not null,    /* ���������ϸID      */        
   PURFF001             INTEGER                    not null,    /* �������ID          */        
   PURFF002             INTEGER,		   not null,    /* ���۵���ϸID        */  
   PURFF003             VARCHAR2(1),               not null,    /* ��Ʒ��������        */  
   PURFF004             VARCHAR2(1),               not null,    /* ��������            */          
   PURFF005             INTEGER                    not null,    /* ��ƷID              */        
   PURFF006             INTEGER,		                /* ά��1               */        
   PURFF007             INTEGER,				/* ά��2               */        
   PURFF008             INTEGER,				/* ά��3               */       
   PURFF009             INTEGER,			        /* ά��4               */       
   PURFF010             INTEGER,				/* ά��5               */        
   PURFF011             INTEGER                                 /* ��λ                */           
   PURFF012             NUMBER(18,3)               not null,    /* �������            */
   PURFF013             VARCHAR2(1),			        /* �Ƿ���װƷ          */
   PURFF014             VARCHAR2(1),                            /* �Ƿ�ɷ�            */
   PURFF015             INTEGER,			        /* ����ƷID            */
   PURFF016             INTEGER,			        /* ����                */
   PURFF017             VARCHAR2(30),		                /* ���׼���Ӧ��ϵ�����*/ 
   PURFF018             VARCHAR2(255),                          /* ��ע                */        
   CREATE_USER          VARCHAR2(12),			        /* ������Ա            */
   USER_GROUP           VARCHAR2(12),                           /* ������Ա����        */                               
   CREATE_DATE          DATE,	                                /* ��������            */
   MODIFIER             VARCHAR2(12),			        /* �޸���Ա            */
   MODI_DATE            DATE,				        /* �޸�����            */
   FLAG                 NUMBER,				        /* ����״̬            */
   constraint PK_TB_PURFF primary key (PURFF_ID) 
);
create index AK_TB_PURFF on TB_PURFF (PURFF_ID,PURFF002,PURFF005,FLAG);
create sequence SEQ_TB_PURFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFF to public;
grant index  on TB_PURFF to public;
grant update on TB_PURFF to public; 
grant delete on TB_PURFF to public;  
grant insert on TB_PURFF to public; 
grant select on SEQ_TB_PURFF to public;   