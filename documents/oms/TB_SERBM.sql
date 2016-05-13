/*
================================================================================
��ṹ����:TB_SERBM
��ṹ����:��������Ҫԭ���
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERBM;
drop index AK_TB_SERBM;
drop table TB_SERBM;
create table TB_SERBM  (                                       
   SERBM_ID             INTEGER                        not null,   /*��������Ҫԭ��ID        */            
   SERBM001             INTEGER                        not null,   /*Ͷ�ߵ�ID            */            
   SERBM002             INTEGER ,                                  /*Ͷ��ԭ��ID         */                
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER,                                 /*����״̬            */             
                                           
   constraint PK_TB_SERBM primary key (SERBM_ID)                               
); 
create unique index AK_TB_SERMB on TB_SERMB (SERBM001,SERBM002,FLAG);                                                        
create sequence SEQ_TB_SERBM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBM to public;                                     
grant index  on TB_SERBM to public;                                     
grant update on TB_SERBM to public;                                      
grant delete on TB_SERBM to public;                                       
grant insert on TB_SERBM to public;                                      
grant select on SEQ_TB_SERBM to public;                                        