/*
================================================================================
��ṹ����:TB_PROBA
��ṹ����:���޵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROBA;
drop index AK_TB_PROBA;
drop table TB_PROBA;
create table TB_PROBA  (                                       
   PROBA_ID             INTEGER                        not null,   /*���޵�ID            */            
   PROBA001             INTEGER                        not null,   /*����                */            
   PROBA002             VARCHAR2(30)                   not null,   /*���޵����          */                    
   PROBA003             DATE                           not null,   /*��������            */ 
   PROBA004             INTEGER                        not null,   /*Ӫ����֯            */
   PROBA005             INTEGER,                                   /*̯λID              */            
   PROBA006             INTEGER                        not null,   /*�̻�ID              */               
   PROBA007             VARCHAR2(1000)                 not null,   /*��������            */  
   PROBA008             VARCHAR2(30),                              /*������              */ 
   PROBA009             VARCHAR2(30),                              /*�̶��绰            */
   PROBA010             VARCHAR2(30),                              /*�ƶ��绰            */
   PROBA011             INTEGER                        not null,   /*������            */   
   PROBA012             INTEGER                        not null,   /*������Ա            */  
   PROBA013             INTEGER,                                   /*¼����ID            */
   PROBA014             DATE,                                      /*¼������            */
   PROBA015             INTEGER,                                   /*�����ID            */
   PROBA016             DATE,                                      /*�������            */
   PROBA017             VARCHAR2(1)                     not null,  /*���״̬            */
   PROBA018             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PROBA019             VARCHAR2(30),                              /*ǩ�˵���            */
   PROBA020             VARCHAR2(1),                               /*ǩ����              */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER(1),                                 /*����״̬            */             
                                           
   constraint PK_TB_PROBA primary key (PROBA_ID)                               
);                                           
create unique index AK_TB_PROBA on TB_PROBA (PROBA001,PROBA002);               
create sequence SEQ_TB_PROBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROBA to public;                                     
grant index  on TB_PROBA to public;                                     
grant update on TB_PROBA to public;                                      
grant delete on TB_PROBA to public;                                       
grant insert on TB_PROBA to public;                                      
grant select on SEQ_TB_PROBA to public;                                        