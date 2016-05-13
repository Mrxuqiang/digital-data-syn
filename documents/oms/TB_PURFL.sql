/*
================================================================================
��ṹ����:TB_PURFL
��ṹ����:������ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PURFL;
drop index AK_TB_PURFL;
drop table TB_PURFL;
create table TB_PURFL  (
   PURFL_ID             INTEGER                    not null,    /* �������ϸID        */        
   PURFL001             INTEGER                    not null,    /* �����ID            */        
   PURFL002             INTEGER,		   not null,    /* ��Դ����ϸID        */  
   PURFL003             VARCHAR2(1),               not null,    /* ��Ʒ��������        */  
   PURFL004             VARCHAR2(1),               not null,    /* ��������            */          
   PURFL005             INTEGER                    not null,    /* ��ƷID              */        
   PURFL006             INTEGER,		                /* ά��1               */     
   PURFL007             INTEGER,			        /* ά��2               */        
   PURFL008             INTEGER,			        /* ά��3              */       
   PURFL009             INTEGER,			        /* ά��4               */       
   PURFL010             INTEGER,			        /* ά��5               */        
   PURFL011             INTEGER                                 /* ��λ                */           
   PURFL012             NUMBER(18,3)               not null,    /* �������            */
   PURFL013             VARCHAR2(1),			        /* �Ƿ���װƷ          */
   PURFL014             VARCHAR2(1),                            /* �Ƿ�ɷ�            */
   PURFL015             INTEGER,			        /* ����ƷID            */
   PURFL016             INTEGER,			        /* ����                */
   PURFL017             VARCHAR2(30),		                /* ���׼���Ӧ��ϵ�����*/ 
   PURFL018             VARCHAR2(255),                          /* ��ע                */    
   PURFL019             NUMBER(18,3)                       ,    /* �ų�����            */--20130107 ADD BY XIECHUN
   PURFL020             NUMBER(18,3)                       ,    /* ȡ������            */--20130122 add by xiechun    
   CREATE_USER          VARCHAR2(12),			        /* ������Ա            */
   USER_GROUP           VARCHAR2(12),                           /* ������Ա����        */                           
   CREATE_DATE          DATE,	                                /* ��������            */
   MODIFIER             VARCHAR2(12),			        /* �޸���Ա            */
   MODI_DATE            DATE,				        /* �޸�����            */
   FLAG                 NUMBER,				        /* ����״̬            */
   constraint PK_TB_PURFL primary key (PURFL_ID) 
);
create index AK_TB_PURFL on TB_PURFL (PURFL_ID,PURFL002,PURFL005,FLAG);
create sequence SEQ_TB_PURFL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFL to public;
grant index  on TB_PURFL to public;
grant update on TB_PURFL to public; 
grant delete on TB_PURFL to public;  
grant insert on TB_PURFL to public; 
grant select on SEQ_TB_PURFL to public;   