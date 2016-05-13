/*
================================================================================
��ṹ����:TB_PURFJ
��ṹ����:�������ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PURFJ;
drop index AK_TB_PURFJ;
drop table TB_PURFJ;
create table TB_PURFJ  (
   PURFJ_ID             INTEGER                    not null,    /* ��������ϸID        */        
   PURFJ001             INTEGER                    not null,    /* ������ID            */        
   PURFJ002             INTEGER,		   not null,    /* ��Դ����ϸID        */  
   PURFJ003             VARCHAR2(1),               not null,    /* ��Ʒ��������        */  
   PURFJ004             VARCHAR2(1),               not null,    /* ��������            */          
   PURFJ005             INTEGER                    not null,    /* ��ƷID              */        
   PURFJ006             INTEGER,		                /* ά��1               */     
   PURFJ007             INTEGER,			        /* ά��2               */        
   PURFJ008             INTEGER,			        /* ά��3              */       
   PURFJ009             INTEGER,			        /* ά��4               */       
   PURFJ010             INTEGER,			        /* ά��5               */        
   PURFJ011             INTEGER                                 /* ��λ                */           
   PURFJ012             NUMBER(18,3)               not null,    /* ��������            */
   PURFJ013	        NUMBER(28,3),                           /* ��λ�ɱ�            */
   PURFJ014	        NUMBER(28,2),                           /* �ɱ����            */
   PURFJ015             VARCHAR2(1),			        /* �Ƿ���װƷ          */
   PURFJ016             VARCHAR2(1),                            /* �Ƿ�ɷ�            */
   PURFJ017             INTEGER,			        /* ����ƷID            */
   PURFJ018             INTEGER,			        /* ����                */
   PURFJ019             VARCHAR2(30),		                /* ���׼���Ӧ��ϵ�����*/ 
   PURFJ020             VARCHAR2(255),                          /* ��ע                */    
   PURFJ021             NUMBER(18,3)                       ,    /* �ų�����            */--20130109 add by xiechun  
   PURFJ022             NUMBER(18,3)                       ,    /* ǩ������            */--20130109 add by xiechun    
   CREATE_USER          VARCHAR2(12),			        /* ������Ա            */
   USER_GROUP           VARCHAR2(12),                           /* ������Ա����        */                           
   CREATE_DATE          DATE,	                                /* ��������            */
   MODIFIER             VARCHAR2(12),			        /* �޸���Ա            */
   MODI_DATE            DATE,				        /* �޸�����            */
   FLAG                 NUMBER,				        /* ����״̬            */
   constraint PK_TB_PURFJ primary key (PURFJ_ID) 
);
create index AK_TB_PURFJ on TB_PURFJ (PURFJ_ID,PURFJ002,PURFJ005,FLAG);
create sequence SEQ_TB_PURFJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFJ to public;
grant index  on TB_PURFJ to public;
grant update on TB_PURFJ to public; 
grant delete on TB_PURFJ to public;  
grant insert on TB_PURFJ to public; 
grant select on SEQ_TB_PURFJ to public;   