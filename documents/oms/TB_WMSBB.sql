/*
================================================================================
��ṹ����:TB_WMSBB
��ṹ����:���֪ͨ���ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_WMSBB;
drop index AK_TB_WMSBB;
drop table TB_WMSBB;
create table TB_WMSBB  (
   WMSBB_ID             INTEGER                    not null,    /* ���֪ͨ����ϸID        */        
   WMSBB001             INTEGER                    not null,    /* ���֪ͨ��ID            */        
   WMSBB002             VARCHAR2(1)                not null,    /* ��Ʒ��������        */  
   WMSBB003             VARCHAR2(1)                not null,    /* ��������            */          
   WMSBB004             INTEGER                    not null,    /* ��ƷID              */        
   WMSBB005             INTEGER,		                /* ά��1               */     
   WMSBB006             INTEGER,			        /* ά��2               */        
   WMSBB007             INTEGER,			        /* ά��3              */       
   WMSBB008             INTEGER,			        /* ά��4               */       
   WMSBB009             INTEGER,			        /* ά��5               */        
   WMSBB010             INTEGER,                                /* ��λ                */           
   WMSBB011             NUMBER(18,3)               not null,    /* Ԥ�������            */
   WMSBB012             NUMBER(18,3)               not null,    /* ʵ�������            */
   WMSBB013             VARCHAR2(1),			        /* �Ƿ���װƷ          */
   WMSBB014             VARCHAR2(1),                            /* �Ƿ�ɷ�            */
   WMSBB015             INTEGER,			        /* ����ƷID            */
   WMSBB016             INTEGER,			        /* ����                */
   WMSBB017             VARCHAR2(30),		                /* ���׼���Ӧ��ϵ�����*/ 
   WMSBB018             VARCHAR2(255),                          /* ����                */   
   WMSBB019             NUMBER(18,3),                           /* ���                */ 
   WMSBB020             VARCHAR2(255),                          /* ��ע                */    
   CREATE_USER          VARCHAR2(12),			        /* ������Ա            */
   USER_GROUP           VARCHAR2(12),                           /* ������Ա����        */                           
   CREATE_DATE          DATE,	                                /* ��������            */
   MODIFIER             VARCHAR2(12),			        /* �޸���Ա            */
   MODI_DATE            DATE,				        /* �޸�����            */
   FLAG                 NUMBER,				        /* ����״̬            */
   constraint PK_TB_WMSBB primary key (WMSBB_ID) 
);
create index AK_TB_WMSBB on TB_WMSBB (WMSBB001,WMSBB002,WMSBB003,WMSBB004,WMSBB005,WMSBB006,WMSBB007,WMSBB008,WMSBB009,FLAG);
create sequence SEQ_TB_WMSBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_WMSBB to public;
grant index  on TB_WMSBB to public;
grant update on TB_WMSBB to public; 
grant delete on TB_WMSBB to public;  
grant insert on TB_WMSBB to public; 
grant select on SEQ_TB_WMSBB to public;   