/*
================================================================================
��ṹ����:TB_SERBK
��ṹ����:�̻����÷����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERBK;
drop index AK_TB_SERBK;
drop table TB_SERBK;
create table TB_SERBK  (                                       
   SERBK_ID             INTEGER                        not null,   /*���÷����ID        */            
   SERBK001             INTEGER                        not null,   /*Ͷ�ߵ�ID            */            
   SERBK002             INTEGER ,                                  /*���÷�����ĿID      */
   SERBK003             VARCHAR2(30) ,                             /*��س������        */ 
   SERBK004             NUMBER(2) ,                                /*�ۼ�����            */                  
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                              
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */
   CREATE_DATE          DATE,                                      /*��������            */                              
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER,                                 /*����״̬            */             

   constraint PK_TB_SERBK primary key (SERBK_ID)                               
); 
create unique index AK_TB_SERMB on TB_SERMB (SERBK001,SERBK002,SERBK003,FLAG);                                                        
create sequence SEQ_TB_SERBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBK to public;                                     
grant index  on TB_SERBK to public;                                     
grant update on TB_SERBK to public;                                      
grant delete on TB_SERBK to public;                                       
grant insert on TB_SERBK to public;                                      
grant select on SEQ_TB_SERBK to public;                                        