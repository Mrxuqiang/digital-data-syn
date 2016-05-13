/*
================================================================================
��ṹ����:TB_SERFA
��ṹ����:�Ĵ浥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERFA;
drop index AK_TB_SERFA;
drop table TB_SERFA;
create table TB_SERFA  (
   SERFA_ID             INTEGER                   not null,    /*�Ĵ浥ID            */    
   SERFA001             INTEGER                   not null,    /*�Ĵ浥��            */    
   SERFA002             VARCHAR2(30)              not null,    /*�Ĵ浥��            */    
   SERFA003             DATE                      not null,    /*�Ĵ�����            */    
   SERFA004             VARCHAR2(1)               not null,    /*������Դ            */    
   SERFA005             INTEGER                   not null,    /*��Դ��ID            */   
   SERFA006             VARCHAR2(30)              not null,    /*��Դ����            */    
   SERFA007             INTEGER                                /*Ӫ����֯            */    
   SERFA008             DATE                                   /*�������            */    
   SERFA009             INTEGER                                /*�ͻ����            */   
   SERFA010             VARCHAR2(30)                           /*��Ա��              */   
   SERFA011             VARCHAR2(25)                           /*�������            */    
   SERFA012             VARCHAR2(25)                           /*����                */    
   SERFA013             DATE                                   /*��������            */    
   SERFA014             VARCHAR2(30)                           /*�˿�����            */    
   SERFA015             VARCHAR2(30)                           /*�˿͵绰            */   
   SERFA016             VARCHAR2(1)                            /*֤������            */   
   SERFA017             VARCHAR2(30)                           /*֤������            */   
   SERFA018             VARCHAR2(255)                          /*��ע                */    
   SERFA019             VARCHAR2(1),                           /*���״̬            */    
   SERFA020             INTEGER,                               /*¼����              */    
   SERFA021             DATE,                                  /*¼��ʱ��            */    
   SERFA022             INTEGER,                               /*�����              */    
   SERFA023             DATE,                                  /*���ʱ��            */  
   SERFA024             VARCHAR2(1)               not null,    /*�Ĵ�״̬            */   
   CREATE_USER          VARCHAR2(12),                          /*������Ա         */
   USER_GROUP           VARCHAR2(12),                          /*������Ա����     */                               
   CREATE_DATE          DATE,                                  /*��������         */
   MODIFIER             VARCHAR2(12),                          /*�޸���Ա         */
   MODI_DATE            DATE,                                  /*�޸�����         */
   FLAG                 NUMBER(1),                             /*����״̬         */
   constraint PK_TB_SERFA primary key (SERFA_ID)
);
create unique index AK_TB_SERFA on TB_SERFA (SERFA001,SERFA002);
create sequence SEQ_TB_SERFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFA to public;
grant index  on TB_SERFA to public;
grant update on TB_SERFA to public; 
grant delete on TB_SERFA to public;  
grant insert on TB_SERFA to public; 
grant select on SEQ_TB_SERFA to public;   