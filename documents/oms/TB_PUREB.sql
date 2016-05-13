/*
================================================================================
��ṹ����:TB_PUREB
��ṹ����:�������鵥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUREB;
drop index AK_TB_PUREB;
drop table TB_PUREB;
create table TB_PUREB  (
   PUREB_ID             INTEGER                          not null,   /*������ƷID          */    
   PUREB001             INTEGER                          not null,   /*�������鵥ID        */    
   PUREB002             INTEGER                          not null,   /*��Ʒ����            */    
   PUREB003             INTEGER                          not null,   /*Ʒ��                */    
   PUREB004             INTEGER                          not null,   /*Ʒ��                */    
   PUREB005             INTEGER,                                     /*ά��1ID             */    
   PUREB006             INTEGER,                                     /*ά��2ID             */    
   PUREB007             INTEGER,                                     /*ά��3ID             */    
   PUREB008             INTEGER,                                     /*ά��4ID             */    
   PUREB009             INTEGER,                                     /*ά��5ID             */    
   PUREB010             INTEGER,                         not null,   /*��浥λID          */    
   PUREB011             NUMBER(18,3)                     not null,   /*��������            */    
   PUREB012             NUMBER(18,3)                     not null,   /*�������            */    
   PUREB013             NUMBER(18,3)                     not null,   /*���ÿ����          */    
   PUREB014             NUMBER(18,3)                     not null,   /*��;����            */    
   PUREB015             NUMBER(18,3)                     not null,   /*����������          */ 
   PUREB016             NUMBER(18,3)                     not null,   /*Ҫ����              */ 
   PUREB017             VARCHAR2(255)                                /*��ע                */ 
   CREATE_USER          VARCHAR2(12),                                /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                /*������Ա����        */                               
   CREATE_DATE          DATE,                                        /*��������            */
   MODIFIER             VARCHAR2(12),                                /*�޸���Ա            */
   MODI_DATE            DATE,                                        /*�޸�����            */
   FLAG                 NUMBER(1),                                   /*����״̬            */
   constraint PK_TB_PUREB primary key (PUREB_ID)
);
create unique index AK_TB_PUREB on TB_PUREB (PUREB_ID,PUREB001,PUREB004);
create sequence SEQ_TB_PUREB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUREB to public;
grant index  on TB_PUREB to public;
grant update on TB_PUREB to public; 
grant delete on TB_PUREB to public;  
grant insert on TB_PUREB to public; 
grant select on SEQ_TB_PUREB to public;   