/*
================================================================================
��ṹ����:TB_SERFC
��ṹ����:���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERFC;
drop index AK_TB_SERFC;
drop table TB_SERFC;
create table TB_SERFC  (
   SERFC_ID             INTEGER                   not null,    /*�����ID            */    
   SERFC001             INTEGER                   not null,    /*�������            */    
   SERFC002             VARCHAR2(30)              not null,    /*�������            */    
   SERFC003             DATE                      not null,    /*�������            */      
   SERFC004             INTEGER                   not null,    /*�Ĵ浥ID            */   
   SERFC005             VARCHAR2(30)              not null,    /*�Ĵ浥��            */       
   SERFC006             INTEGER,                                /*�ͻ����            */   
   SERFC007             VARCHAR2(30),                           /*��Ա��              */   
   SERFC008             VARCHAR2(25),                           /*�������            */    
   SERFC009             VARCHAR2(25),                           /*����                */    
   SERFC010             DATE,                                   /*��������            */    
   SERFC011             VARCHAR2(30),                           /*�˿�����            */    
   SERFC012             VARCHAR2(30),                           /*�˿͵绰            */   
   SERFC013             VARCHAR2(1),                            /*֤������            */   
   SERFC014             VARCHAR2(30),                           /*֤������            */   
   SERFC015             VARCHAR2(255),                          /*��ע                */    
   SERFC016             VARCHAR2(1),                           /*���״̬            */    
   SERFC017             INTEGER,                               /*¼����              */    
   SERFC018             DATE,                                  /*¼��ʱ��            */    
   SERFC019             INTEGER,                               /*�����              */    
   SERFC020             DATE,                                  /*���ʱ��            */     
   CREATE_USER          VARCHAR2(12),                          /*������Ա         */
   USER_GROUP           VARCHAR2(12),                          /*������Ա����     */                               
   CREATE_DATE          DATE,                                  /*��������         */
   MODIFIER             VARCHAR2(12),                          /*�޸���Ա         */
   MODI_DATE            DATE,                                  /*�޸�����         */
   FLAG                 NUMBER(1),                             /*����״̬         */
   constraint PK_TB_SERFC primary key (SERFC_ID)
);
create unique index AK_TB_SERFC on TB_SERFC (SERFC001,SERFC002);
create sequence SEQ_TB_SERFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFC to public;
grant index  on TB_SERFC to public;
grant update on TB_SERFC to public; 
grant delete on TB_SERFC to public;  
grant insert on TB_SERFC to public; 
grant select on SEQ_TB_SERFC to public;   