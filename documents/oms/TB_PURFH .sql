/*
================================================================================
��ṹ����:TB_PURFH
��ṹ����:����֪ͨ���ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PURFH;
drop index AK_TB_PURFH;
drop table TB_PURFH;
create table TB_PURFH  (
   PURFH_ID             INTEGER                    not null,    /* ����֪ͨ����ϸID    */        
   PURFH001             INTEGER                    not null,    /* ����֪ͨ��ID        */        
   PURFH002             INTEGER,		   not null,    /* ���۵���ϸID        */  
   PURFH003             VARCHAR2(1),               not null,    /* ��Ʒ��������        */  
   PURFH004             VARCHAR2(1),               not null,    /* ��������            */          
   PURFH005             INTEGER                    not null,    /* ��ƷID              */        
   PURFH006             INTEGER,		                /* ά��1               */        
   PURFH007             INTEGER,				/* ά��2               */        
   PURFH008             INTEGER,				/* ά��3               */       
   PURFH009             INTEGER,			        /* ά��4               */       
   PURFH010             INTEGER,			        /* ά��5               */        
   PURFH011             INTEGER                                 /* ��λ                */           
   PURFH012             NUMBER(18,3)               not null,    /* ��������            */
   PURFH013             VARCHAR2(1),			        /* �Ƿ���װƷ          */
   PURFH014             VARCHAR2(1),                            /* �Ƿ�ɷ�            */
   PURFH015             INTEGER,			        /* ����ƷID            */
   PURFH016             INTEGER,			        /* ����                */
   PURFH017             VARCHAR2(30),		                /* ���׼���Ӧ��ϵ�����*/ 
   PURFH018             VARCHAR2(255),                          /* ��ע                */        
   CREATE_USER          VARCHAR2(12),			        /* ������Ա            */
   USER_GROUP           VARCHAR2(12),                           /* ������Ա����        */                               
   CREATE_DATE          DATE,	                                /* ��������            */
   MODIFIER             VARCHAR2(12),			        /* �޸���Ա            */
   MODI_DATE            DATE,				        /* �޸�����            */
   FLAG                 NUMBER,				        /* ����״̬            */
   constraint PK_TB_PURFH primary key (PURFH_ID) 
);
create index AK_TB_PURFH on TB_PURFH (PURFH_ID,PURFH002,PURFH005,FLAG);
create sequence SEQ_TB_PURFH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFH to public;
grant index  on TB_PURFH to public;
grant update on TB_PURFH to public; 
grant delete on TB_PURFH to public;  
grant insert on TB_PURFH to public; 
grant select on SEQ_TB_PURFH to public;   